package com.google.android.exoplayer2.p005ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.C0515C;
import com.google.android.exoplayer2.ControlDispatcher;
import com.google.android.exoplayer2.DefaultControlDispatcher;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.PlaybackPreparer;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Locale;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
/* renamed from: com.google.android.exoplayer2.ui.PlayerControlView */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView.class */
public class PlayerControlView extends FrameLayout {
    public static final int DEFAULT_FAST_FORWARD_MS = 15000;
    public static final int DEFAULT_REPEAT_TOGGLE_MODES = 0;
    public static final int DEFAULT_REWIND_MS = 5000;
    public static final int DEFAULT_SHOW_TIMEOUT_MS = 5000;
    private static final long MAX_POSITION_FOR_SEEK_TO_PREVIOUS = 3000;
    public static final int MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR = 100;
    private long[] adGroupTimesMs;
    private final ComponentListener componentListener;
    private ControlDispatcher controlDispatcher;
    private final TextView durationView;
    private long[] extraAdGroupTimesMs;
    private boolean[] extraPlayedAdGroups;
    private final View fastForwardButton;
    private int fastForwardMs;
    private final StringBuilder formatBuilder;
    private final Formatter formatter;
    private final Runnable hideAction;
    private long hideAtMs;
    private boolean isAttachedToWindow;
    private boolean multiWindowTimeBar;
    private final View nextButton;
    private final View pauseButton;
    private final Timeline.Period period;
    private final View playButton;
    private PlaybackPreparer playbackPreparer;
    private boolean[] playedAdGroups;
    private Player player;
    private final TextView positionView;
    private final View previousButton;
    private final String repeatAllButtonContentDescription;
    private final Drawable repeatAllButtonDrawable;
    private final String repeatOffButtonContentDescription;
    private final Drawable repeatOffButtonDrawable;
    private final String repeatOneButtonContentDescription;
    private final Drawable repeatOneButtonDrawable;
    private final ImageView repeatToggleButton;
    private int repeatToggleModes;
    private final View rewindButton;
    private int rewindMs;
    private boolean scrubbing;
    private boolean showMultiWindowTimeBar;
    private boolean showShuffleButton;
    private int showTimeoutMs;
    private final View shuffleButton;
    private final TimeBar timeBar;
    private final Runnable updateProgressAction;
    private VisibilityListener visibilityListener;
    private final Timeline.Window window;

    /* renamed from: com.google.android.exoplayer2.ui.PlayerControlView$VisibilityListener */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener.class */
    public interface VisibilityListener {
        void onVisibilityChange(int i);
    }

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.ui");
    }

    public PlayerControlView(Context context) {
        this(context, null);
    }

    public PlayerControlView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerControlView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, attributeSet);
    }

    public PlayerControlView(Context context, AttributeSet attributeSet, int i, AttributeSet attributeSet2) {
        super(context, attributeSet, i);
        this.updateProgressAction = new Runnable() { // from class: com.google.android.exoplayer2.ui.PlayerControlView.1
            @Override // java.lang.Runnable
            public void run() {
                PlayerControlView.this.updateProgress();
            }
        };
        this.hideAction = new Runnable() { // from class: com.google.android.exoplayer2.ui.PlayerControlView.2
            @Override // java.lang.Runnable
            public void run() {
                PlayerControlView.this.hide();
            }
        };
        int i2 = C0577R.C0580layout.exo_player_control_view;
        this.rewindMs = 5000;
        this.fastForwardMs = 15000;
        this.showTimeoutMs = 5000;
        this.repeatToggleModes = 0;
        this.hideAtMs = C0515C.TIME_UNSET;
        this.showShuffleButton = false;
        int i3 = i2;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, C0577R.styleable.PlayerControlView, 0, 0);
            try {
                this.rewindMs = obtainStyledAttributes.getInt(C0577R.styleable.PlayerControlView_rewind_increment, this.rewindMs);
                this.fastForwardMs = obtainStyledAttributes.getInt(C0577R.styleable.PlayerControlView_fastforward_increment, this.fastForwardMs);
                this.showTimeoutMs = obtainStyledAttributes.getInt(C0577R.styleable.PlayerControlView_show_timeout, this.showTimeoutMs);
                i3 = obtainStyledAttributes.getResourceId(C0577R.styleable.PlayerControlView_controller_layout_id, i2);
                this.repeatToggleModes = getRepeatToggleModes(obtainStyledAttributes, this.repeatToggleModes);
                this.showShuffleButton = obtainStyledAttributes.getBoolean(C0577R.styleable.PlayerControlView_show_shuffle_button, this.showShuffleButton);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.period = new Timeline.Period();
        this.window = new Timeline.Window();
        StringBuilder sb = new StringBuilder();
        this.formatBuilder = sb;
        this.formatter = new Formatter(sb, Locale.getDefault());
        this.adGroupTimesMs = new long[0];
        this.playedAdGroups = new boolean[0];
        this.extraAdGroupTimesMs = new long[0];
        this.extraPlayedAdGroups = new boolean[0];
        ComponentListener componentListener = new ComponentListener(this, (RunnableC05721) null);
        this.componentListener = componentListener;
        this.controlDispatcher = new DefaultControlDispatcher();
        LayoutInflater.from(context).inflate(i3, this);
        setDescendantFocusability(PKIFailureInfo.transactionIdInUse);
        this.durationView = (TextView) findViewById(C0577R.C0579id.exo_duration);
        this.positionView = (TextView) findViewById(C0577R.C0579id.exo_position);
        TimeBar timeBar = (TimeBar) findViewById(C0577R.C0579id.exo_progress);
        this.timeBar = timeBar;
        if (timeBar != null) {
            timeBar.addListener(componentListener);
        }
        View findViewById = findViewById(C0577R.C0579id.exo_play);
        this.playButton = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(componentListener);
        }
        View findViewById2 = findViewById(C0577R.C0579id.exo_pause);
        this.pauseButton = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(componentListener);
        }
        View findViewById3 = findViewById(C0577R.C0579id.exo_prev);
        this.previousButton = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(componentListener);
        }
        View findViewById4 = findViewById(C0577R.C0579id.exo_next);
        this.nextButton = findViewById4;
        if (findViewById4 != null) {
            findViewById4.setOnClickListener(componentListener);
        }
        View findViewById5 = findViewById(C0577R.C0579id.exo_rew);
        this.rewindButton = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(componentListener);
        }
        View findViewById6 = findViewById(C0577R.C0579id.exo_ffwd);
        this.fastForwardButton = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(componentListener);
        }
        ImageView imageView = (ImageView) findViewById(C0577R.C0579id.exo_repeat_toggle);
        this.repeatToggleButton = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(componentListener);
        }
        View findViewById7 = findViewById(C0577R.C0579id.exo_shuffle);
        this.shuffleButton = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(componentListener);
        }
        Resources resources = context.getResources();
        this.repeatOffButtonDrawable = resources.getDrawable(C0577R.C0578drawable.exo_controls_repeat_off);
        this.repeatOneButtonDrawable = resources.getDrawable(C0577R.C0578drawable.exo_controls_repeat_one);
        this.repeatAllButtonDrawable = resources.getDrawable(C0577R.C0578drawable.exo_controls_repeat_all);
        this.repeatOffButtonContentDescription = resources.getString(C0577R.string.exo_controls_repeat_off_description);
        this.repeatOneButtonContentDescription = resources.getString(C0577R.string.exo_controls_repeat_one_description);
        this.repeatAllButtonContentDescription = resources.getString(C0577R.string.exo_controls_repeat_all_description);
    }

    private static boolean canShowMultiWindowTimeBar(Timeline timeline, Timeline.Window window) {
        if (timeline.getWindowCount() > 100) {
            return false;
        }
        int windowCount = timeline.getWindowCount();
        for (int i = 0; i < windowCount; i++) {
            if (timeline.getWindow(i, window).durationUs == C0515C.TIME_UNSET) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    public void fastForward() {
        if (this.fastForwardMs <= 0) {
            return;
        }
        long duration = this.player.getDuration();
        ?? currentPosition = this.player.getCurrentPosition() + this.fastForwardMs;
        char c = currentPosition;
        if (duration != C0515C.TIME_UNSET) {
            c = Math.min((long) currentPosition, duration);
        }
        seekTo(c);
    }

    private static int getRepeatToggleModes(TypedArray typedArray, int i) {
        return typedArray.getInt(C0577R.styleable.PlayerControlView_repeat_toggle_modes, i);
    }

    public void hideAfterTimeout() {
        removeCallbacks(this.hideAction);
        if (this.showTimeoutMs <= 0) {
            this.hideAtMs = C0515C.TIME_UNSET;
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        int i = this.showTimeoutMs;
        this.hideAtMs = uptimeMillis + i;
        if (!this.isAttachedToWindow) {
            return;
        }
        postDelayed(this.hideAction, i);
    }

    @SuppressLint({"InlinedApi"})
    private static boolean isHandledMediaKey(int i) {
        return i == 90 || i == 89 || i == 85 || i == 126 || i == 127 || i == 87 || i == 88;
    }

    private boolean isPlaying() {
        Player player = this.player;
        boolean z = true;
        if (player == null || player.getPlaybackState() == 4 || this.player.getPlaybackState() == 1 || !this.player.getPlayWhenReady()) {
            z = false;
        }
        return z;
    }

    public void next() {
        Timeline currentTimeline = this.player.getCurrentTimeline();
        if (currentTimeline.isEmpty()) {
            return;
        }
        int currentWindowIndex = this.player.getCurrentWindowIndex();
        int nextWindowIndex = this.player.getNextWindowIndex();
        if (nextWindowIndex != -1) {
            seekTo(nextWindowIndex, C0515C.TIME_UNSET);
        } else if (!currentTimeline.getWindow(currentWindowIndex, this.window, false).isDynamic) {
        } else {
            seekTo(currentWindowIndex, C0515C.TIME_UNSET);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0053, code lost:
        if (r0.isSeekable == false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void previous() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.exoplayer2.Player r0 = r0.player
            com.google.android.exoplayer2.Timeline r0 = r0.getCurrentTimeline()
            r6 = r0
            r0 = r6
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L12
            return
        L12:
            r0 = r6
            r1 = r5
            com.google.android.exoplayer2.Player r1 = r1.player
            int r1 = r1.getCurrentWindowIndex()
            r2 = r5
            com.google.android.exoplayer2.Timeline$Window r2 = r2.window
            com.google.android.exoplayer2.Timeline$Window r0 = r0.getWindow(r1, r2)
            r0 = r5
            com.google.android.exoplayer2.Player r0 = r0.player
            int r0 = r0.getPreviousWindowIndex()
            r7 = r0
            r0 = r7
            r1 = -1
            if (r0 == r1) goto L61
            r0 = r5
            com.google.android.exoplayer2.Player r0 = r0.player
            long r0 = r0.getCurrentPosition()
            r1 = 3000(0xbb8, double:1.482E-320)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L56
            r0 = r5
            com.google.android.exoplayer2.Timeline$Window r0 = r0.window
            r6 = r0
            r0 = r6
            boolean r0 = r0.isDynamic
            if (r0 == 0) goto L61
            r0 = r6
            boolean r0 = r0.isSeekable
            if (r0 != 0) goto L61
        L56:
            r0 = r5
            r1 = r7
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.seekTo(r1, r2)
            goto L66
        L61:
            r0 = r5
            r1 = 0
            r0.seekTo(r1)
        L66:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p005ui.PlayerControlView.previous():void");
    }

    private void requestPlayPauseFocus() {
        View view;
        View view2;
        boolean isPlaying = isPlaying();
        if (!isPlaying && (view2 = this.playButton) != null) {
            view2.requestFocus();
        } else if (!isPlaying || (view = this.pauseButton) == null) {
        } else {
            view.requestFocus();
        }
    }

    public void rewind() {
        if (this.rewindMs <= 0) {
            return;
        }
        seekTo(Math.max(this.player.getCurrentPosition() - this.rewindMs, 0L));
    }

    private void seekTo(int i, long j) {
        if (!this.controlDispatcher.dispatchSeekTo(this.player, i, j)) {
            updateProgress();
        }
    }

    private void seekTo(long j) {
        seekTo(this.player.getCurrentWindowIndex(), j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.exoplayer2.ui.PlayerControlView] */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    public void seekToTimeBarPosition(long j) {
        int i;
        Timeline currentTimeline = this.player.getCurrentTimeline();
        if (this.multiWindowTimeBar && !currentTimeline.isEmpty()) {
            int windowCount = currentTimeline.getWindowCount();
            i = 0;
            j = j;
            while (true) {
                ?? durationMs = currentTimeline.getWindow(i, this.window).getDurationMs();
                if (j < durationMs) {
                    break;
                } else if (i == windowCount - 1) {
                    j = durationMs;
                    break;
                } else {
                    j -= durationMs;
                    i++;
                }
            }
        } else {
            i = this.player.getCurrentWindowIndex();
        }
        seekTo(i, j);
    }

    private void setButtonEnabled(boolean z, View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z);
        view.setAlpha(z ? 1.0f : 0.3f);
        view.setVisibility(0);
    }

    private void updateAll() {
        updatePlayPauseButton();
        updateNavigation();
        updateRepeatModeButton();
        updateShuffleButton();
        updateProgress();
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a8, code lost:
        if (r4.player.getNextWindowIndex() != (-1)) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateNavigation() {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p005ui.PlayerControlView.updateNavigation():void");
    }

    public void updatePlayPauseButton() {
        boolean z;
        if (!isVisible() || !this.isAttachedToWindow) {
            return;
        }
        boolean isPlaying = isPlaying();
        View view = this.playButton;
        if (view != null) {
            boolean z2 = (isPlaying && view.isFocused()) | false;
            this.playButton.setVisibility(isPlaying ? 8 : 0);
            z = z2;
        } else {
            z = false;
        }
        View view2 = this.pauseButton;
        boolean z3 = z;
        if (view2 != null) {
            z3 = z | (!isPlaying && view2.isFocused());
            this.pauseButton.setVisibility(!isPlaying ? 8 : 0);
        }
        if (!z3) {
            return;
        }
        requestPlayPauseFocus();
    }

    /* JADX WARN: Type inference failed for: r0v117, types: [long] */
    /* JADX WARN: Type inference failed for: r0v119, types: [long] */
    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* JADX WARN: Type inference failed for: r0v158, types: [long] */
    /* JADX WARN: Type inference failed for: r0v170, types: [long] */
    /* JADX WARN: Type inference failed for: r0v201, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    public void updateProgress() {
        boolean z;
        char c;
        boolean z2;
        boolean z3;
        int i;
        boolean z4;
        boolean z5;
        Timeline.Window window;
        int i2;
        if (!isVisible() || !this.isAttachedToWindow) {
            return;
        }
        Player player = this.player;
        boolean z6 = false;
        if (player != null) {
            Timeline currentTimeline = player.getCurrentTimeline();
            if (!currentTimeline.isEmpty()) {
                int currentWindowIndex = this.player.getCurrentWindowIndex();
                boolean z7 = this.multiWindowTimeBar;
                int i3 = z7 ? 0 : currentWindowIndex;
                int windowCount = z7 ? currentTimeline.getWindowCount() - 1 : currentWindowIndex;
                z6 = false;
                boolean z8 = false;
                int i4 = 0;
                while (true) {
                    i = i4;
                    z3 = z8;
                    if (i3 > windowCount) {
                        break;
                    }
                    z3 = z8;
                    if (i3 == currentWindowIndex) {
                        z3 = z6;
                    }
                    currentTimeline.getWindow(i3, this.window);
                    Timeline.Window window2 = this.window;
                    if (window2.durationUs == C0515C.TIME_UNSET) {
                        Assertions.checkState(!this.multiWindowTimeBar);
                        break;
                    }
                    int i5 = i;
                    int i6 = window2.firstPeriodIndex;
                    while (true) {
                        window = this.window;
                        if (i6 <= window.lastPeriodIndex) {
                            currentTimeline.getPeriod(i6, this.period);
                            int adGroupCount = this.period.getAdGroupCount();
                            int i7 = 0;
                            while (i7 < adGroupCount) {
                                char adGroupTimeUs = this.period.getAdGroupTimeUs(i7);
                                int i8 = (adGroupTimeUs > Long.MIN_VALUE ? 1 : (adGroupTimeUs == Long.MIN_VALUE ? 0 : -1));
                                char c2 = adGroupTimeUs;
                                if (i8 == 0) {
                                    char c3 = this.period.durationUs;
                                    int i9 = (c3 > C0515C.TIME_UNSET ? 1 : (c3 == C0515C.TIME_UNSET ? 0 : -1));
                                    c2 = c3;
                                    if (i9 == 0) {
                                        i2 = i5;
                                        i7++;
                                        i5 = i2;
                                    }
                                }
                                long positionInWindowUs = c2 + this.period.getPositionInWindowUs();
                                i2 = i5;
                                if (positionInWindowUs >= 0) {
                                    i2 = i5;
                                    if (positionInWindowUs <= this.window.durationUs) {
                                        long[] jArr = this.adGroupTimesMs;
                                        if (i5 == jArr.length) {
                                            int length = jArr.length == 0 ? 1 : jArr.length * 2;
                                            this.adGroupTimesMs = Arrays.copyOf(jArr, length);
                                            this.playedAdGroups = Arrays.copyOf(this.playedAdGroups, length);
                                        }
                                        this.adGroupTimesMs[i5] = C0515C.usToMs((z6 ? 1L : 0L) + positionInWindowUs);
                                        this.playedAdGroups[i5] = this.period.hasPlayedAdGroup(i7);
                                        i2 = i5 + 1;
                                    }
                                }
                                i7++;
                                i5 = i2;
                            }
                            i6++;
                        }
                    }
                    z6 = (z6 ? 1L : 0L) + window.durationUs;
                    i3++;
                    z8 = z3;
                    i4 = i5;
                }
            } else {
                z3 = false;
                i = 0;
            }
            ?? usToMs = C0515C.usToMs(z6 ? 1L : 0L);
            long usToMs2 = C0515C.usToMs(z3 ? 1L : 0L);
            if (this.player.isPlayingAd()) {
                boolean contentPosition = usToMs2 + this.player.getContentPosition();
                z4 = contentPosition;
                z5 = contentPosition;
            } else {
                z5 = this.player.getCurrentPosition() + usToMs2;
                z4 = usToMs2 + this.player.getBufferedPosition();
            }
            c = usToMs;
            z2 = z5;
            z = z4;
            if (this.timeBar != null) {
                int length2 = this.extraAdGroupTimesMs.length;
                int i10 = i + length2;
                long[] jArr2 = this.adGroupTimesMs;
                if (i10 > jArr2.length) {
                    this.adGroupTimesMs = Arrays.copyOf(jArr2, i10);
                    this.playedAdGroups = Arrays.copyOf(this.playedAdGroups, i10);
                }
                System.arraycopy(this.extraAdGroupTimesMs, 0, this.adGroupTimesMs, i, length2);
                System.arraycopy(this.extraPlayedAdGroups, 0, this.playedAdGroups, i, length2);
                this.timeBar.setAdGroupTimesMs(this.adGroupTimesMs, this.playedAdGroups, i10);
                c = usToMs;
                z2 = z5;
                z = z4;
            }
        } else {
            z2 = false;
            z = false;
            c = 0;
        }
        TextView textView = this.durationView;
        if (textView != null) {
            textView.setText(Util.getStringForTime(this.formatBuilder, this.formatter, c));
        }
        TextView textView2 = this.positionView;
        if (textView2 != null && !this.scrubbing) {
            textView2.setText(Util.getStringForTime(this.formatBuilder, this.formatter, z2 ? 1L : 0L));
        }
        TimeBar timeBar = this.timeBar;
        if (timeBar != null) {
            timeBar.setPosition(z2 ? 1L : 0L);
            this.timeBar.setBufferedPosition(z ? 1L : 0L);
            this.timeBar.setDuration(c);
        }
        removeCallbacks(this.updateProgressAction);
        Player player2 = this.player;
        int playbackState = player2 == null ? 1 : player2.getPlaybackState();
        if (playbackState == 1 || playbackState == 4) {
            return;
        }
        boolean z9 = true;
        if (this.player.getPlayWhenReady()) {
            z9 = true;
            if (playbackState == 3) {
                float f = this.player.getPlaybackParameters().speed;
                if (f <= 0.1f) {
                    z9 = true;
                } else if (f <= 5.0f) {
                    long max = 1000 / Math.max(1, Math.round(1.0f / f));
                    ?? r0 = max - ((z2 ? 1L : 0L) % max);
                    boolean z10 = r0;
                    if (r0 < max / 5) {
                        z10 = r0 + max;
                    }
                    z9 = z10;
                    if (f != 1.0f) {
                        z9 = (z10 ? 1.0f : 0.0f) / f;
                    }
                } else {
                    z9 = true;
                }
            }
        }
        postDelayed(this.updateProgressAction, z9 ? 1L : 0L);
    }

    public void updateRepeatModeButton() {
        ImageView imageView;
        String str;
        ImageView imageView2;
        if (!isVisible() || !this.isAttachedToWindow || (imageView = this.repeatToggleButton) == null) {
            return;
        }
        if (this.repeatToggleModes == 0) {
            imageView.setVisibility(8);
        } else if (this.player == null) {
            setButtonEnabled(false, imageView);
        } else {
            setButtonEnabled(true, imageView);
            int repeatMode = this.player.getRepeatMode();
            if (repeatMode == 0) {
                this.repeatToggleButton.setImageDrawable(this.repeatOffButtonDrawable);
                imageView2 = this.repeatToggleButton;
                str = this.repeatOffButtonContentDescription;
            } else if (repeatMode != 1) {
                if (repeatMode == 2) {
                    this.repeatToggleButton.setImageDrawable(this.repeatAllButtonDrawable);
                    imageView2 = this.repeatToggleButton;
                    str = this.repeatAllButtonContentDescription;
                }
                this.repeatToggleButton.setVisibility(0);
            } else {
                this.repeatToggleButton.setImageDrawable(this.repeatOneButtonDrawable);
                imageView2 = this.repeatToggleButton;
                str = this.repeatOneButtonContentDescription;
            }
            imageView2.setContentDescription(str);
            this.repeatToggleButton.setVisibility(0);
        }
    }

    public void updateShuffleButton() {
        View view;
        if (!isVisible() || !this.isAttachedToWindow || (view = this.shuffleButton) == null) {
            return;
        }
        if (!this.showShuffleButton) {
            view.setVisibility(8);
            return;
        }
        Player player = this.player;
        if (player == null) {
            setButtonEnabled(false, view);
            return;
        }
        view.setAlpha(player.getShuffleModeEnabled() ? 1.0f : 0.3f);
        this.shuffleButton.setEnabled(true);
        this.shuffleButton.setVisibility(0);
    }

    public void updateTimeBarMode() {
        Player player = this.player;
        if (player == null) {
            return;
        }
        this.multiWindowTimeBar = this.showMultiWindowTimeBar && canShowMultiWindowTimeBar(player.getCurrentTimeline(), this.window);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (this.player == null || !isHandledMediaKey(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() != 0) {
            return true;
        }
        if (keyCode == 90) {
            fastForward();
            return true;
        } else if (keyCode == 89) {
            rewind();
            return true;
        } else if (keyEvent.getRepeatCount() != 0) {
            return true;
        } else {
            if (keyCode == 85) {
                ControlDispatcher controlDispatcher = this.controlDispatcher;
                Player player = this.player;
                controlDispatcher.dispatchSetPlayWhenReady(player, !player.getPlayWhenReady());
                return true;
            } else if (keyCode == 87) {
                next();
                return true;
            } else if (keyCode == 88) {
                previous();
                return true;
            } else if (keyCode == 126) {
                this.controlDispatcher.dispatchSetPlayWhenReady(this.player, true);
                return true;
            } else if (keyCode != 127) {
                return true;
            } else {
                this.controlDispatcher.dispatchSetPlayWhenReady(this.player, false);
                return true;
            }
        }
    }

    public Player getPlayer() {
        return this.player;
    }

    public int getRepeatToggleModes() {
        return this.repeatToggleModes;
    }

    public boolean getShowShuffleButton() {
        return this.showShuffleButton;
    }

    public int getShowTimeoutMs() {
        return this.showTimeoutMs;
    }

    public void hide() {
        if (isVisible()) {
            setVisibility(8);
            VisibilityListener visibilityListener = this.visibilityListener;
            if (visibilityListener != null) {
                visibilityListener.onVisibilityChange(getVisibility());
            }
            removeCallbacks(this.updateProgressAction);
            removeCallbacks(this.hideAction);
            this.hideAtMs = C0515C.TIME_UNSET;
        }
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.isAttachedToWindow = true;
        long j = this.hideAtMs;
        if (j != C0515C.TIME_UNSET) {
            long uptimeMillis = j - SystemClock.uptimeMillis();
            if (uptimeMillis <= 0) {
                hide();
            } else {
                postDelayed(this.hideAction, uptimeMillis);
            }
        } else if (isVisible()) {
            hideAfterTimeout();
        }
        updateAll();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.isAttachedToWindow = false;
        removeCallbacks(this.updateProgressAction);
        removeCallbacks(this.hideAction);
    }

    public void setControlDispatcher(ControlDispatcher controlDispatcher) {
        ControlDispatcher controlDispatcher2 = controlDispatcher;
        if (controlDispatcher == null) {
            controlDispatcher2 = new DefaultControlDispatcher();
        }
        this.controlDispatcher = controlDispatcher2;
    }

    public void setExtraAdGroupMarkers(long[] jArr, boolean[] zArr) {
        boolean z = false;
        if (jArr == null) {
            this.extraAdGroupTimesMs = new long[0];
            this.extraPlayedAdGroups = new boolean[0];
        } else {
            if (jArr.length == zArr.length) {
                z = true;
            }
            Assertions.checkArgument(z);
            this.extraAdGroupTimesMs = jArr;
            this.extraPlayedAdGroups = zArr;
        }
        updateProgress();
    }

    public void setFastForwardIncrementMs(int i) {
        this.fastForwardMs = i;
        updateNavigation();
    }

    public void setPlaybackPreparer(PlaybackPreparer playbackPreparer) {
        this.playbackPreparer = playbackPreparer;
    }

    public void setPlayer(Player player) {
        Player player2 = this.player;
        if (player2 == player) {
            return;
        }
        if (player2 != null) {
            player2.removeListener(this.componentListener);
        }
        this.player = player;
        if (player != null) {
            player.addListener(this.componentListener);
        }
        updateAll();
    }

    public void setRepeatToggleModes(int i) {
        ControlDispatcher controlDispatcher;
        Player player;
        int i2;
        this.repeatToggleModes = i;
        Player player2 = this.player;
        if (player2 != null) {
            int repeatMode = player2.getRepeatMode();
            if (i == 0 && repeatMode != 0) {
                controlDispatcher = this.controlDispatcher;
                player = this.player;
                i2 = 0;
            } else if (i == 1 && repeatMode == 2) {
                this.controlDispatcher.dispatchSetRepeatMode(this.player, 1);
                return;
            } else if (i != 2 || repeatMode != 1) {
                return;
            } else {
                controlDispatcher = this.controlDispatcher;
                player = this.player;
                i2 = 2;
            }
            controlDispatcher.dispatchSetRepeatMode(player, i2);
        }
    }

    public void setRewindIncrementMs(int i) {
        this.rewindMs = i;
        updateNavigation();
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        this.showMultiWindowTimeBar = z;
        updateTimeBarMode();
    }

    public void setShowShuffleButton(boolean z) {
        this.showShuffleButton = z;
        updateShuffleButton();
    }

    public void setShowTimeoutMs(int i) {
        this.showTimeoutMs = i;
        if (isVisible()) {
            hideAfterTimeout();
        }
    }

    public void setVisibilityListener(VisibilityListener visibilityListener) {
        this.visibilityListener = visibilityListener;
    }

    public void show() {
        if (!isVisible()) {
            setVisibility(0);
            VisibilityListener visibilityListener = this.visibilityListener;
            if (visibilityListener != null) {
                visibilityListener.onVisibilityChange(getVisibility());
            }
            updateAll();
            requestPlayPauseFocus();
        }
        hideAfterTimeout();
    }
}
