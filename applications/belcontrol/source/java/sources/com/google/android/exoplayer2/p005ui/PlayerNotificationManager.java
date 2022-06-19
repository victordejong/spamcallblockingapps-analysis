package com.google.android.exoplayer2.p005ui;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.google.android.exoplayer2.C0515C;
import com.google.android.exoplayer2.ControlDispatcher;
import com.google.android.exoplayer2.DefaultControlDispatcher;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.NotificationUtil;
import com.google.android.exoplayer2.util.Util;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import z7;
/* renamed from: com.google.android.exoplayer2.ui.PlayerNotificationManager */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerNotificationManager.class */
public class PlayerNotificationManager {
    public static final String ACTION_FAST_FORWARD = "com.google.android.exoplayer.ffwd";
    public static final String ACTION_NEXT = "com.google.android.exoplayer.next";
    public static final String ACTION_PAUSE = "com.google.android.exoplayer.pause";
    public static final String ACTION_PLAY = "com.google.android.exoplayer.play";
    public static final String ACTION_PREVIOUS = "com.google.android.exoplayer.prev";
    public static final String ACTION_REWIND = "com.google.android.exoplayer.rewind";
    public static final String ACTION_STOP = "com.google.android.exoplayer.stop";
    public static final int DEFAULT_FAST_FORWARD_MS = 15000;
    public static final int DEFAULT_REWIND_MS = 5000;
    private static final long MAX_POSITION_FOR_SEEK_TO_PREVIOUS = 3000;
    private int badgeIconType;
    private final String channelId;
    private int color;
    private boolean colorized;
    private final Context context;
    private ControlDispatcher controlDispatcher;
    private int currentNotificationTag;
    private final CustomActionReceiver customActionReceiver;
    private final Map<String, z7.a> customActions;
    private int defaults;
    private long fastForwardMs;
    private final IntentFilter intentFilter;
    private boolean isNotificationStarted;
    private int lastPlaybackState;
    private final Handler mainHandler;
    private final MediaDescriptionAdapter mediaDescriptionAdapter;
    private MediaSessionCompat.Token mediaSessionToken;
    private final NotificationBroadcastReceiver notificationBroadcastReceiver;
    private final int notificationId;
    private NotificationListener notificationListener;
    private final C0290c8 notificationManager;
    private boolean ongoing;
    private final Map<String, z7.a> playbackActions;
    private Player player;
    private final Player.EventListener playerListener;
    private int priority;
    private long rewindMs;
    private int smallIconResourceId;
    private String stopAction;
    private PendingIntent stopPendingIntent;
    private boolean useChronometer;
    private boolean useNavigationActions;
    private boolean usePlayPauseActions;
    private int visibility;
    private boolean wasPlayWhenReady;

    /* renamed from: com.google.android.exoplayer2.ui.PlayerNotificationManager$BitmapCallback */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerNotificationManager$BitmapCallback.class */
    public final class BitmapCallback {
        private final int notificationTag;

        private BitmapCallback(int i) {
            PlayerNotificationManager.this = r4;
            this.notificationTag = i;
        }

        public void onBitmap(final Bitmap bitmap) {
            if (bitmap != null) {
                PlayerNotificationManager.this.mainHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.PlayerNotificationManager.BitmapCallback.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (PlayerNotificationManager.this.player == null || BitmapCallback.this.notificationTag != PlayerNotificationManager.this.currentNotificationTag || !PlayerNotificationManager.this.isNotificationStarted) {
                            return;
                        }
                        PlayerNotificationManager.this.updateNotification(bitmap);
                    }
                });
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.PlayerNotificationManager$CustomActionReceiver */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerNotificationManager$CustomActionReceiver.class */
    public interface CustomActionReceiver {
        Map<String, z7.a> createCustomActions(Context context);

        List<String> getCustomActions(Player player);

        void onCustomAction(Player player, String str, Intent intent);
    }

    /* renamed from: com.google.android.exoplayer2.ui.PlayerNotificationManager$MediaDescriptionAdapter */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerNotificationManager$MediaDescriptionAdapter.class */
    public interface MediaDescriptionAdapter {
        PendingIntent createCurrentContentIntent(Player player);

        String getCurrentContentText(Player player);

        String getCurrentContentTitle(Player player);

        Bitmap getCurrentLargeIcon(Player player, BitmapCallback bitmapCallback);
    }

    /* renamed from: com.google.android.exoplayer2.ui.PlayerNotificationManager$NotificationBroadcastReceiver */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationBroadcastReceiver.class */
    public class NotificationBroadcastReceiver extends BroadcastReceiver {
        private final Timeline.Window window = new Timeline.Window();

        public NotificationBroadcastReceiver() {
            PlayerNotificationManager.this = r5;
        }

        /* JADX WARN: Type inference failed for: r0v28, types: [long] */
        /* JADX WARN: Type inference failed for: r0v31, types: [long] */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int i;
            Player player = PlayerNotificationManager.this.player;
            if (player == null || !PlayerNotificationManager.this.isNotificationStarted) {
                return;
            }
            String action = intent.getAction();
            if (PlayerNotificationManager.ACTION_PLAY.equals(action) || PlayerNotificationManager.ACTION_PAUSE.equals(action)) {
                PlayerNotificationManager.this.controlDispatcher.dispatchSetPlayWhenReady(player, PlayerNotificationManager.ACTION_PLAY.equals(action));
            } else if (PlayerNotificationManager.ACTION_FAST_FORWARD.equals(action) || PlayerNotificationManager.ACTION_REWIND.equals(action)) {
                PlayerNotificationManager.this.controlDispatcher.dispatchSeekTo(player, player.getCurrentWindowIndex(), player.getCurrentPosition() + (PlayerNotificationManager.ACTION_FAST_FORWARD.equals(action) ? PlayerNotificationManager.this.fastForwardMs : -PlayerNotificationManager.this.rewindMs));
            } else {
                if (!PlayerNotificationManager.ACTION_NEXT.equals(action)) {
                    if (!PlayerNotificationManager.ACTION_PREVIOUS.equals(action)) {
                        if (PlayerNotificationManager.ACTION_STOP.equals(action)) {
                            PlayerNotificationManager.this.controlDispatcher.dispatchStop(player, true);
                            PlayerNotificationManager.this.stopNotification();
                            return;
                        } else if (PlayerNotificationManager.this.customActionReceiver == null || !PlayerNotificationManager.this.customActions.containsKey(action)) {
                            return;
                        } else {
                            PlayerNotificationManager.this.customActionReceiver.onCustomAction(player, action, intent);
                            return;
                        }
                    }
                    player.getCurrentTimeline().getWindow(player.getCurrentWindowIndex(), this.window);
                    int previousWindowIndex = player.getPreviousWindowIndex();
                    if (previousWindowIndex != -1) {
                        i = previousWindowIndex;
                        if (player.getCurrentPosition() > PlayerNotificationManager.MAX_POSITION_FOR_SEEK_TO_PREVIOUS) {
                            Timeline.Window window = this.window;
                            if (window.isDynamic && !window.isSeekable) {
                                i = previousWindowIndex;
                            }
                        }
                    }
                    PlayerNotificationManager.this.controlDispatcher.dispatchSeekTo(player, player.getCurrentWindowIndex(), C0515C.TIME_UNSET);
                    return;
                }
                i = player.getNextWindowIndex();
                if (i == -1) {
                    return;
                }
                PlayerNotificationManager.this.controlDispatcher.dispatchSeekTo(player, i, C0515C.TIME_UNSET);
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.PlayerNotificationManager$NotificationListener */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerNotificationManager$NotificationListener.class */
    public interface NotificationListener {
        void onNotificationCancelled(int i);

        void onNotificationStarted(int i, Notification notification);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.exoplayer2.ui.PlayerNotificationManager$Priority */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerNotificationManager$Priority.class */
    public @interface Priority {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.exoplayer2.ui.PlayerNotificationManager$Visibility */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerNotificationManager$Visibility.class */
    public @interface Visibility {
    }

    public PlayerNotificationManager(Context context, String str, int i, MediaDescriptionAdapter mediaDescriptionAdapter) {
        this(context, str, i, mediaDescriptionAdapter, null);
    }

    public PlayerNotificationManager(Context context, String str, int i, MediaDescriptionAdapter mediaDescriptionAdapter, CustomActionReceiver customActionReceiver) {
        this.context = context.getApplicationContext();
        this.channelId = str;
        this.notificationId = i;
        this.mediaDescriptionAdapter = mediaDescriptionAdapter;
        this.customActionReceiver = customActionReceiver;
        this.controlDispatcher = new DefaultControlDispatcher();
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.notificationManager = C0290c8.m5434d(context);
        this.playerListener = new PlayerListener(this, (C05741) null);
        this.notificationBroadcastReceiver = new NotificationBroadcastReceiver();
        this.intentFilter = new IntentFilter();
        this.useNavigationActions = true;
        this.usePlayPauseActions = true;
        this.ongoing = true;
        this.colorized = true;
        this.useChronometer = true;
        this.color = 0;
        this.smallIconResourceId = C0577R.C0578drawable.exo_notification_small_icon;
        this.defaults = 0;
        this.priority = -1;
        this.fastForwardMs = 15000L;
        this.rewindMs = 5000L;
        this.stopAction = ACTION_STOP;
        this.badgeIconType = 1;
        this.visibility = 1;
        Map<String, z7.a> createPlaybackActions = createPlaybackActions(context);
        this.playbackActions = createPlaybackActions;
        for (String str2 : createPlaybackActions.keySet()) {
            this.intentFilter.addAction(str2);
        }
        Map<String, z7.a> createCustomActions = customActionReceiver != null ? customActionReceiver.createCustomActions(context) : Collections.emptyMap();
        this.customActions = createCustomActions;
        for (String str3 : createCustomActions.keySet()) {
            this.intentFilter.addAction(str3);
        }
        this.stopPendingIntent = ((z7.a) Assertions.checkNotNull(this.playbackActions.get(ACTION_STOP))).k;
    }

    private static Map<String, z7.a> createPlaybackActions(Context context) {
        HashMap hashMap = new HashMap();
        hashMap.put(ACTION_PLAY, new z7.a(C0577R.C0578drawable.exo_notification_play, context.getString(C0577R.string.exo_controls_play_description), PendingIntent.getBroadcast(context, 0, new Intent(ACTION_PLAY).setPackage(context.getPackageName()), 268435456)));
        hashMap.put(ACTION_PAUSE, new z7.a(C0577R.C0578drawable.exo_notification_pause, context.getString(C0577R.string.exo_controls_pause_description), PendingIntent.getBroadcast(context, 0, new Intent(ACTION_PAUSE).setPackage(context.getPackageName()), 268435456)));
        hashMap.put(ACTION_STOP, new z7.a(C0577R.C0578drawable.exo_notification_stop, context.getString(C0577R.string.exo_controls_stop_description), PendingIntent.getBroadcast(context, 0, new Intent(ACTION_STOP).setPackage(context.getPackageName()), 268435456)));
        hashMap.put(ACTION_REWIND, new z7.a(C0577R.C0578drawable.exo_notification_rewind, context.getString(C0577R.string.exo_controls_rewind_description), PendingIntent.getBroadcast(context, 0, new Intent(ACTION_REWIND).setPackage(context.getPackageName()), 268435456)));
        hashMap.put(ACTION_FAST_FORWARD, new z7.a(C0577R.C0578drawable.exo_notification_fastforward, context.getString(C0577R.string.exo_controls_fastforward_description), PendingIntent.getBroadcast(context, 0, new Intent(ACTION_FAST_FORWARD).setPackage(context.getPackageName()), 268435456)));
        hashMap.put(ACTION_PREVIOUS, new z7.a(C0577R.C0578drawable.exo_notification_previous, context.getString(C0577R.string.exo_controls_previous_description), PendingIntent.getBroadcast(context, 0, new Intent(ACTION_PREVIOUS).setPackage(context.getPackageName()), 268435456)));
        hashMap.put(ACTION_NEXT, new z7.a(C0577R.C0578drawable.exo_notification_next, context.getString(C0577R.string.exo_controls_next_description), PendingIntent.getBroadcast(context, 0, new Intent(ACTION_NEXT).setPackage(context.getPackageName()), 268435456)));
        return hashMap;
    }

    public static PlayerNotificationManager createWithNotificationChannel(Context context, String str, int i, int i2, MediaDescriptionAdapter mediaDescriptionAdapter) {
        NotificationUtil.createNotificationChannel(context, str, i, 2);
        return new PlayerNotificationManager(context, str, i2, mediaDescriptionAdapter);
    }

    private void maybeUpdateNotification() {
        if (!this.isNotificationStarted || this.player == null) {
            return;
        }
        updateNotification(null);
    }

    public void startOrUpdateNotification() {
        if (this.player != null) {
            Notification updateNotification = updateNotification(null);
            if (this.isNotificationStarted) {
                return;
            }
            this.isNotificationStarted = true;
            this.context.registerReceiver(this.notificationBroadcastReceiver, this.intentFilter);
            NotificationListener notificationListener = this.notificationListener;
            if (notificationListener == null) {
                return;
            }
            notificationListener.onNotificationStarted(this.notificationId, updateNotification);
        }
    }

    public void stopNotification() {
        if (this.isNotificationStarted) {
            this.notificationManager.m5436b(this.notificationId);
            this.isNotificationStarted = false;
            this.context.unregisterReceiver(this.notificationBroadcastReceiver);
            NotificationListener notificationListener = this.notificationListener;
            if (notificationListener == null) {
                return;
            }
            notificationListener.onNotificationCancelled(this.notificationId);
        }
    }

    @RequiresNonNull({"player"})
    public Notification updateNotification(Bitmap bitmap) {
        Notification createNotification = createNotification(this.player, bitmap);
        this.notificationManager.m5432f(this.notificationId, createNotification);
        return createNotification;
    }

    public Notification createNotification(Player player, Bitmap bitmap) {
        PendingIntent pendingIntent;
        boolean isPlayingAd = player.isPlayingAd();
        z7.e eVar = new z7.e(this.context, this.channelId);
        List<String> actions = getActions(player);
        for (int i = 0; i < actions.size(); i++) {
            String str = actions.get(i);
            z7.a aVar = (this.playbackActions.containsKey(str) ? this.playbackActions : this.customActions).get(str);
            if (aVar != null) {
                eVar.b(aVar);
            }
        }
        xf xfVar = new xf();
        eVar.H(xfVar);
        MediaSessionCompat.Token token = this.mediaSessionToken;
        if (token != null) {
            xfVar.s(token);
        }
        xfVar.t(getActionIndicesForCompactView(player));
        boolean z = this.stopAction != null && !isPlayingAd;
        xfVar.u(z);
        if (z && (pendingIntent = this.stopPendingIntent) != null) {
            eVar.t(pendingIntent);
            xfVar.r(this.stopPendingIntent);
        }
        eVar.k(this.badgeIconType);
        eVar.A(this.ongoing);
        eVar.n(this.color);
        eVar.o(this.colorized);
        eVar.F(this.smallIconResourceId);
        eVar.L(this.visibility);
        eVar.C(this.priority);
        eVar.s(this.defaults);
        if (!this.useChronometer || player.isCurrentWindowDynamic() || !player.getPlayWhenReady() || player.getPlaybackState() != 3) {
            eVar.E(false);
            eVar.J(false);
        } else {
            eVar.M(System.currentTimeMillis() - player.getContentPosition());
            eVar.E(true);
            eVar.J(true);
        }
        eVar.r(this.mediaDescriptionAdapter.getCurrentContentTitle(player));
        eVar.q(this.mediaDescriptionAdapter.getCurrentContentText(player));
        Bitmap bitmap2 = bitmap;
        if (bitmap == null) {
            MediaDescriptionAdapter mediaDescriptionAdapter = this.mediaDescriptionAdapter;
            int i2 = this.currentNotificationTag + 1;
            this.currentNotificationTag = i2;
            bitmap2 = mediaDescriptionAdapter.getCurrentLargeIcon(player, new BitmapCallback(i2));
        }
        if (bitmap2 != null) {
            eVar.w(bitmap2);
        }
        PendingIntent createCurrentContentIntent = this.mediaDescriptionAdapter.createCurrentContentIntent(player);
        if (createCurrentContentIntent != null) {
            eVar.p(createCurrentContentIntent);
        }
        return eVar.c();
    }

    public int[] getActionIndicesForCompactView(Player player) {
        if (!this.usePlayPauseActions) {
            return new int[0];
        }
        return new int[]{(this.useNavigationActions ? 1 : 0) + (this.fastForwardMs > 0 ? 1 : 0)};
    }

    public List<String> getActions(Player player) {
        ArrayList arrayList = new ArrayList();
        if (!player.isPlayingAd()) {
            if (this.useNavigationActions) {
                arrayList.add(ACTION_PREVIOUS);
            }
            if (this.rewindMs > 0) {
                arrayList.add(ACTION_REWIND);
            }
            if (this.usePlayPauseActions) {
                arrayList.add(player.getPlayWhenReady() ? ACTION_PAUSE : ACTION_PLAY);
            }
            if (this.fastForwardMs > 0) {
                arrayList.add(ACTION_FAST_FORWARD);
            }
            if (this.useNavigationActions && player.getNextWindowIndex() != -1) {
                arrayList.add(ACTION_NEXT);
            }
            CustomActionReceiver customActionReceiver = this.customActionReceiver;
            if (customActionReceiver != null) {
                arrayList.addAll(customActionReceiver.getCustomActions(player));
            }
            if (ACTION_STOP.equals(this.stopAction)) {
                arrayList.add(this.stopAction);
            }
        }
        return arrayList;
    }

    public final void setBadgeIconType(int i) {
        if (this.badgeIconType == i) {
            return;
        }
        if (i != 0 && i != 1 && i != 2) {
            throw new IllegalArgumentException();
        }
        this.badgeIconType = i;
        maybeUpdateNotification();
    }

    public final void setColor(int i) {
        if (this.color != i) {
            this.color = i;
            maybeUpdateNotification();
        }
    }

    public final void setColorized(boolean z) {
        if (this.colorized != z) {
            this.colorized = z;
            maybeUpdateNotification();
        }
    }

    public final void setControlDispatcher(ControlDispatcher controlDispatcher) {
        if (controlDispatcher == null) {
            controlDispatcher = new DefaultControlDispatcher();
        }
        this.controlDispatcher = controlDispatcher;
    }

    public final void setDefaults(int i) {
        if (this.defaults != i) {
            this.defaults = i;
            maybeUpdateNotification();
        }
    }

    public final void setFastForwardIncrementMs(long j) {
        if (this.fastForwardMs == j) {
            return;
        }
        this.fastForwardMs = j;
        maybeUpdateNotification();
    }

    public final void setMediaSessionToken(MediaSessionCompat.Token token) {
        if (!Util.areEqual(this.mediaSessionToken, token)) {
            this.mediaSessionToken = token;
            maybeUpdateNotification();
        }
    }

    public final void setNotificationListener(NotificationListener notificationListener) {
        this.notificationListener = notificationListener;
    }

    public final void setOngoing(boolean z) {
        if (this.ongoing != z) {
            this.ongoing = z;
            maybeUpdateNotification();
        }
    }

    public final void setPlayer(Player player) {
        Player player2 = this.player;
        if (player2 == player) {
            return;
        }
        if (player2 != null) {
            player2.removeListener(this.playerListener);
            if (player == null) {
                stopNotification();
            }
        }
        this.player = player;
        if (player == null) {
            return;
        }
        this.wasPlayWhenReady = player.getPlayWhenReady();
        this.lastPlaybackState = player.getPlaybackState();
        player.addListener(this.playerListener);
        if (this.lastPlaybackState == 1) {
            return;
        }
        startOrUpdateNotification();
    }

    public final void setPriority(int i) {
        if (this.priority == i) {
            return;
        }
        if (i != -2 && i != -1 && i != 0 && i != 1 && i != 2) {
            throw new IllegalArgumentException();
        }
        this.priority = i;
        maybeUpdateNotification();
    }

    public final void setRewindIncrementMs(long j) {
        if (this.rewindMs == j) {
            return;
        }
        this.rewindMs = j;
        maybeUpdateNotification();
    }

    public final void setSmallIcon(int i) {
        if (this.smallIconResourceId != i) {
            this.smallIconResourceId = i;
            maybeUpdateNotification();
        }
    }

    public final void setStopAction(String str) {
        PendingIntent pendingIntent;
        z7.a aVar;
        if (Util.areEqual(str, this.stopAction)) {
            return;
        }
        this.stopAction = str;
        if (ACTION_STOP.equals(str)) {
            aVar = this.playbackActions.get(ACTION_STOP);
        } else if (str == null) {
            pendingIntent = null;
            this.stopPendingIntent = pendingIntent;
            maybeUpdateNotification();
        } else {
            aVar = this.customActions.get(str);
        }
        pendingIntent = ((z7.a) Assertions.checkNotNull(aVar)).k;
        this.stopPendingIntent = pendingIntent;
        maybeUpdateNotification();
    }

    public final void setUseChronometer(boolean z) {
        if (this.useChronometer != z) {
            this.useChronometer = z;
            maybeUpdateNotification();
        }
    }

    public final void setUseNavigationActions(boolean z) {
        if (this.useNavigationActions != z) {
            this.useNavigationActions = z;
            maybeUpdateNotification();
        }
    }

    public final void setUsePlayPauseActions(boolean z) {
        if (this.usePlayPauseActions != z) {
            this.usePlayPauseActions = z;
            maybeUpdateNotification();
        }
    }

    public final void setVisibility(int i) {
        if (this.visibility == i) {
            return;
        }
        if (i != -1 && i != 0 && i != 1) {
            throw new IllegalStateException();
        }
        this.visibility = i;
        maybeUpdateNotification();
    }
}
