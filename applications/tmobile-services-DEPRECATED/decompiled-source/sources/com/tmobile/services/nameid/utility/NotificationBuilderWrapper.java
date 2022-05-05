package com.tmobile.services.nameid.utility;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.widget.RemoteViews;
import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.tmobile.services.C1517R;
import java.util.Date;
import java.util.List;
import java.util.Random;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/NotificationBuilderWrapper.class */
public class NotificationBuilderWrapper implements NotificationBuilderWrapperInterface {

    /* renamed from: a */
    private int f14413a;
    @Nonnull

    /* renamed from: b */
    private Context f14414b;

    /* renamed from: c */
    private NotificationCompat.Builder f14415c;
    @Nullable

    /* renamed from: d */
    RemoteViews f14416d;

    /* renamed from: e */
    private int f14417e = 0;

    public NotificationBuilderWrapper(int i, @Nonnull Context context) {
        this.f14413a = i;
        this.f14414b = context;
        this.f14415c = new NotificationCompat.Builder(context);
    }

    /* renamed from: b */
    private void m5475b(@DrawableRes int i, @StringRes int i2, String str, String str2) {
        int i3;
        int i4;
        int i5;
        if (this.f14416d != null) {
            int i6 = this.f14417e;
            if (i6 == 0) {
                i5 = C1517R.C1520id.category_notification_action_1_image;
                i4 = C1517R.C1520id.category_notification_action_1_text;
                i3 = C1517R.C1520id.category_notification_action_1_container;
            } else if (i6 == 1) {
                i5 = C1517R.C1520id.category_notification_action_2_image;
                i4 = C1517R.C1520id.category_notification_action_2_text;
                i3 = C1517R.C1520id.category_notification_action_2_container;
            } else if (i6 != 2) {
                LogUtil.m5631p("NotificationUtil#", "Tried to add an action at index " + this.f14417e + " which we don't have a view for.");
                return;
            } else {
                i5 = C1517R.C1520id.category_notification_action_3_image;
                i4 = C1517R.C1520id.category_notification_action_3_text;
                i3 = C1517R.C1520id.category_notification_action_3_container;
            }
            this.f14417e++;
            this.f14416d.setViewVisibility(C1517R.C1520id.category_notification_actions_container, 0);
            this.f14416d.setViewVisibility(C1517R.C1520id.category_notification_divider, 0);
            this.f14416d.setTextViewText(i4, this.f14414b.getString(i2));
            this.f14416d.setImageViewResource(i5, i);
            this.f14416d.setOnClickPendingIntent(i3, m5470g(this.f14414b, str, str2, this.f14413a));
        }
    }

    /* renamed from: f */
    private void m5471f(Bitmap bitmap) {
        RemoteViews remoteViews = this.f14416d;
        if (remoteViews != null) {
            remoteViews.setImageViewBitmap(C1517R.C1520id.category_notification_alternate_image, bitmap);
            this.f14416d.setViewVisibility(C1517R.C1520id.category_notification_alternate_image, 0);
        }
    }

    /* renamed from: g */
    private static PendingIntent m5470g(Context context, String str, String str2, int i) {
        LogUtil.m5643d("NotificationUtil#createActionIntent", "Creating action with key: " + str);
        Intent intent = new Intent(context, NotificationReceiver.class);
        intent.putExtra("NOTIFICATION_INTENT_KEY_EXTRA", str);
        intent.putExtra("E164_NUMBER_KEY", str2);
        intent.setAction(str);
        intent.putExtra("ID_KEY", i);
        return PendingIntent.getBroadcast(context, i + 9021, intent, 268435456);
    }

    /* renamed from: h */
    private RemoteViews m5469h(String str, String str2, int i) {
        RemoteViews remoteViews = new RemoteViews(this.f14414b.getPackageName(), (int) C1517R.layout.category_notification_layout);
        remoteViews.setTextViewText(C1517R.C1520id.category_notification_title, str);
        remoteViews.setTextViewText(C1517R.C1520id.category_notification_subtitle, str2);
        remoteViews.setImageViewResource(C1517R.C1520id.category_notification_main_image, i);
        remoteViews.setImageViewBitmap(C1517R.C1520id.category_notification_background_image, m5468i(this.f14414b, C1517R.C1519drawable.circle, 40));
        remoteViews.setTextViewText(C1517R.C1520id.category_notification_time, DateUtils.m5790e(new Date(), this.f14414b));
        return remoteViews;
    }

    @Nullable
    /* renamed from: i */
    static Bitmap m5468i(Context context, int i, int i2) {
        Drawable d = AppCompatResources.m22069d(context, i);
        if (d == null) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(ScreenDensityUtils.m5376a(context, i2), ScreenDensityUtils.m5376a(context, i2), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        d.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        d.draw(canvas);
        return createBitmap;
    }

    /* renamed from: a */
    public void m5476a(@DrawableRes int i, @StringRes int i2, String str, String str2) {
        if (Build.VERSION.SDK_INT < 24) {
            m5475b(i, i2, str, str2);
        } else {
            this.f14415c.addAction(1, this.f14414b.getString(i2), m5470g(this.f14414b, str, str2, this.f14413a));
        }
    }

    /* renamed from: c */
    public void m5474c(String str, @Nullable String str2) {
        LogUtil.m5643d("NotificationUtil#addContentIntent", "Adding key to intent: " + str);
        Intent intent = new Intent(this.f14414b, NotificationReceiver.class);
        intent.putExtra("NOTIFICATION_INTENT_KEY_EXTRA", str);
        if (str2 != null) {
            intent.putExtra("E164_NUMBER_KEY", str2);
        }
        NotificationCompat.Builder builder = this.f14415c;
        builder.setContentIntent(PendingIntent.getBroadcast(this.f14414b, this.f14413a + 9021 + new Random(150L).nextInt(), intent, 268435456));
        this.f14415c = builder;
    }

    /* renamed from: d */
    public void m5473d() {
        Intent intent = new Intent(this.f14414b, NotificationReceiver.class);
        intent.putExtra("NOTIFICATION_INTENT_KEY_EXTRA", "DELETED_KEY");
        NotificationCompat.Builder builder = this.f14415c;
        builder.setDeleteIntent(PendingIntent.getBroadcast(this.f14414b, this.f14413a + 9021, intent, 268435456));
        this.f14415c = builder;
    }

    /* renamed from: e */
    public void m5472e(String str) {
        List<String> i = PreferenceUtils.m5388i("PREF_API24_NOTIFICATIONS");
        i.add(str);
        PreferenceUtils.m5382o("PREF_API24_NOTIFICATIONS", i);
    }

    /* renamed from: j */
    public void m5467j(String str, String str2, boolean z) {
        NotificationCompat.Builder smallIcon = this.f14415c.setSmallIcon(C1517R.C1519drawable.status_bar_icon);
        smallIcon.setAutoCancel(true);
        NotificationCompat.Builder contentText = smallIcon.setContentTitle(str).setContentText(str2);
        contentText.setPriority(2);
        contentText.setGroup("com.services.tmobile.nameid.notification");
        contentText.setColor(this.f14414b.getResources().getColor(2131034197));
        this.f14415c = contentText;
        if (Build.VERSION.SDK_INT >= 26) {
            contentText.setChannelId("nameid");
        }
        if (Build.VERSION.SDK_INT < 24) {
            RemoteViews h = m5469h(str, str2, C1517R.C1519drawable.status_bar_icon);
            this.f14416d = h;
            this.f14415c.setCustomBigContentView(h);
        }
        if (z) {
            NotificationCompat.Builder builder = this.f14415c;
            NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle();
            bigTextStyle.m19787q(str2);
            builder.setStyle(bigTextStyle);
            this.f14415c = builder;
        }
    }

    /* renamed from: k */
    public void m5466k(@DrawableRes int i) {
        Bitmap decodeResource = BitmapFactory.decodeResource(this.f14414b.getResources(), i);
        if (Build.VERSION.SDK_INT < 24) {
            m5471f(decodeResource);
        } else {
            this.f14415c.setLargeIcon(decodeResource);
        }
    }

    /* renamed from: l */
    public void m5465l(Uri uri) {
        try {
            Bitmap d = ContactUtils.m5813d(MediaStore.Images.Media.getBitmap(this.f14414b.getContentResolver(), uri));
            if (Build.VERSION.SDK_INT >= 24) {
                this.f14415c.setLargeIcon(d);
            } else if (d != null) {
                m5471f(d);
            }
        } catch (Exception e) {
            LogUtil.m5641f("NotificationUtil#showCategoryNotification", "error getting contact picture", e);
        }
    }

    /* renamed from: m */
    public void m5464m() {
        int c = PreferenceUtils.m5394c("PREF_NUMBER_NOTIFICATIONS", 0) + 1;
        NotificationManagerCompat d = NotificationManagerCompat.m19729d(this.f14414b);
        if (Build.VERSION.SDK_INT < 21) {
            int c2 = PreferenceUtils.m5394c("PREF_INITIAL_NOTIFICATION_ID", -1);
            if (c == 1) {
                this.f14415c.setGroupSummary(true);
                PreferenceUtils.m5385l("PREF_INITIAL_NOTIFICATION_ID", this.f14413a);
            } else if (c == 2 && c2 != -1) {
                d.m19731b(c2);
                PreferenceUtils.m5385l("PREF_INITIAL_NOTIFICATION_ID", -1);
            }
        }
        PreferenceUtils.m5385l("PREF_NUMBER_NOTIFICATIONS", c);
        NotificationUtil.m5437t(this.f14414b, this.f14413a);
        d.m19727f(this.f14413a, this.f14415c.build());
    }
}
