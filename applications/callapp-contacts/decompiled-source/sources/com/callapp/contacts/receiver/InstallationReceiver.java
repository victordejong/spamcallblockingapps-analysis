package com.callapp.contacts.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.RemoteException;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.activity.contact.list.ContactsListActivity;
import com.callapp.contacts.manager.analytics.AbstractAnalyticsManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/InstallationReceiver.class */
public class InstallationReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static InstallReferrerClient f15630a;

    public static void a(final Context context) {
        if (!Prefs.gx.get().booleanValue()) {
            try {
                InstallReferrerClient build = InstallReferrerClient.newBuilder(context).build();
                f15630a = build;
                build.startConnection(new InstallReferrerStateListener() { // from class: com.callapp.contacts.receiver.InstallationReceiver.1
                    @Override // com.android.installreferrer.api.InstallReferrerStateListener
                    public final void onInstallReferrerServiceDisconnected() {
                    }

                    @Override // com.android.installreferrer.api.InstallReferrerStateListener
                    public final void onInstallReferrerSetupFinished(int i) {
                        if (i == 0) {
                            try {
                                InstallationReceiver.a(context, InstallationReceiver.f15630a.getInstallReferrer().getInstallReferrer());
                            } catch (RemoteException e) {
                                CLog.b(InstallationReceiver.class, e);
                            }
                        }
                        InstallationReceiver.f15630a.endConnection();
                    }
                });
            } catch (Exception e) {
                CLog.a(InstallationReceiver.class, e);
            }
        }
    }

    public static void a(Context context, String str) {
        synchronized (InstallationReceiver.class) {
            try {
                try {
                    if (!Prefs.gx.get().booleanValue()) {
                        Prefs.gx.set(Boolean.TRUE);
                        if (!Activities.isStoreNameGooglePlay() && !Prefs.W.get().booleanValue()) {
                            Prefs.W.set(Boolean.TRUE);
                            context.sendOrderedBroadcast(new Intent().putExtra("android.intent.extra.shortcut.INTENT", new Intent(context, ContactsListActivity.class).setAction("android.intent.action.MAIN").addFlags(268435456).addFlags(67108864)).putExtra("android.intent.extra.shortcut.NAME", Activities.getString(2131886654)).putExtra("duplicate", false).putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(context, 2131689481)).setAction("com.android.launcher.action.INSTALL_SHORTCUT"), null);
                        }
                        b(str);
                        AbstractAnalyticsManager.UTM d2 = AbstractAnalyticsManager.d(str);
                        if (d2 != null && StringUtils.b((CharSequence) d2.f14978d)) {
                            setOneFreeStoreGiftReeferPromotion(d2.f14978d);
                            if (StringUtils.c(d2.f14978d, "appWall")) {
                                Prefs.aY.set(Boolean.TRUE);
                            }
                        }
                    }
                } catch (RuntimeException e) {
                    CLog.d(InstallationReceiver.class, e, "Exception in InstallationReceiver.onReceive()");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String[] a(String str) {
        String str2;
        String[] strArr = new String[20];
        if (StringUtils.b((CharSequence) str)) {
            int min = Math.min(str.length(), 800);
            int i = 0;
            while (i < 10) {
                StringBuilder sb = new StringBuilder("r");
                int i2 = i + 1;
                sb.append(i2);
                String sb2 = sb.toString();
                if (min > 0) {
                    int i3 = i * 80;
                    str2 = StringUtils.a(str, i3, Math.min(min, 80) + i3);
                } else {
                    str2 = "";
                }
                min -= StringUtils.f(str2);
                int i4 = i * 2;
                strArr[i4] = sb2;
                strArr[i4 + 1] = str2;
                i = i2;
            }
        }
        return strArr;
    }

    private static String b(String str) {
        if (StringUtils.b((CharSequence) str)) {
            String str2 = str;
            try {
                String decode = Build.VERSION.SDK_INT > 23 ? URLDecoder.decode(str, StandardCharsets.UTF_8.toString()) : URLDecoder.decode(str);
                Prefs.X.set(decode);
                CLog.a(InstallationReceiver.class, "referrer = %s", decode);
                str2 = decode;
                AnalyticsManager.get().a(Constants.INSTALLATION, Payload.RFR, (String) null, 0.0d, a(decode));
                return decode;
            } catch (UnsupportedEncodingException e) {
                CLog.a(InstallationReceiver.class, e);
                AnalyticsManager.get().a(Constants.INSTALLATION, "failed to parse referrer = %s", str2);
                return null;
            }
        } else {
            CLog.a(InstallationReceiver.class, "referrer = null");
            AnalyticsManager.get().a(Constants.INSTALLATION, "No Referrer");
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d4, code lost:
        if (r3.equals("freegiftcover") == false) goto L_0x0090;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void setOneFreeStoreGiftReeferPromotion(java.lang.String r3) {
        /*
            r0 = r3
            java.lang.String r1 = "freegiftcover"
            boolean r0 = com.callapp.framework.util.StringUtils.g(r0, r1)
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0034
            r0 = r3
            java.lang.String r1 = "freegiftringtones"
            boolean r0 = com.callapp.framework.util.StringUtils.g(r0, r1)
            if (r0 != 0) goto L_0x0034
            r0 = r3
            java.lang.String r1 = "freegiftthemes"
            boolean r0 = com.callapp.framework.util.StringUtils.g(r0, r1)
            if (r0 != 0) goto L_0x0034
            r0 = r3
            java.lang.String r1 = "freegiftkeypad"
            boolean r0 = com.callapp.framework.util.StringUtils.g(r0, r1)
            if (r0 == 0) goto L_0x002f
            goto L_0x0034
        L_0x002f:
            r0 = 0
            r6 = r0
            goto L_0x0036
        L_0x0034:
            r0 = 1
            r6 = r0
        L_0x0036:
            r0 = r3
            java.lang.String r1 = "StoreGift"
            boolean r0 = com.callapp.framework.util.StringUtils.g(r0, r1)
            if (r0 != 0) goto L_0x0044
            r0 = r6
            if (r0 == 0) goto L_0x004e
        L_0x0044:
            com.callapp.contacts.manager.preferences.prefs.IntegerPref r0 = com.callapp.contacts.manager.preferences.Prefs.cO
            r1 = 1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r0.set(r1)
        L_0x004e:
            r0 = r6
            if (r0 == 0) goto L_0x0124
            com.callapp.contacts.manager.preferences.prefs.BooleanPref r0 = com.callapp.contacts.manager.preferences.Prefs.cR
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r0.set(r1)
            r0 = r3
            int r0 = r0.hashCode()
            r0 = r3
            int r0 = r0.hashCode()
            switch(r0) {
                case -1229091941: goto L_0x00cb;
                case 772753008: goto L_0x00b9;
                case 1032587366: goto L_0x00a7;
                case 1556864757: goto L_0x0095;
                default: goto L_0x0090;
            }
        L_0x0090:
            r0 = -1
            r6 = r0
            goto L_0x00da
        L_0x0095:
            r0 = r3
            java.lang.String r1 = "freegiftringtones"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x00a2
            goto L_0x0090
        L_0x00a2:
            r0 = 3
            r6 = r0
            goto L_0x00da
        L_0x00a7:
            r0 = r3
            java.lang.String r1 = "freegiftthemes"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x00b4
            goto L_0x0090
        L_0x00b4:
            r0 = 2
            r6 = r0
            goto L_0x00da
        L_0x00b9:
            r0 = r3
            java.lang.String r1 = "freegiftkeypad"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x00c6
            goto L_0x0090
        L_0x00c6:
            r0 = 1
            r6 = r0
            goto L_0x00da
        L_0x00cb:
            r0 = r5
            r6 = r0
            r0 = r3
            java.lang.String r1 = "freegiftcover"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x00da
            goto L_0x0090
        L_0x00da:
            r0 = r6
            switch(r0) {
                case 0: goto L_0x011b;
                case 1: goto L_0x0111;
                case 2: goto L_0x0107;
                case 3: goto L_0x00fb;
                default: goto L_0x00f8;
            }
        L_0x00f8:
            goto L_0x0124
        L_0x00fb:
            com.callapp.contacts.manager.preferences.prefs.EnumPref<com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$StoreItemType> r0 = com.callapp.contacts.manager.preferences.Prefs.cS
            com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$StoreItemType r1 = com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.StoreItemType.CALL_SCREEN
            r0.set(r1)
            goto L_0x0124
        L_0x0107:
            com.callapp.contacts.manager.preferences.prefs.EnumPref<com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$StoreItemType> r0 = com.callapp.contacts.manager.preferences.Prefs.cS
            com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$StoreItemType r1 = com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.StoreItemType.THEME
            r0.set(r1)
            return
        L_0x0111:
            com.callapp.contacts.manager.preferences.prefs.EnumPref<com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$StoreItemType> r0 = com.callapp.contacts.manager.preferences.Prefs.cS
            com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$StoreItemType r1 = com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.StoreItemType.KEYPAD
            r0.set(r1)
            return
        L_0x011b:
            com.callapp.contacts.manager.preferences.prefs.EnumPref<com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$StoreItemType> r0 = com.callapp.contacts.manager.preferences.Prefs.cS
            com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$StoreItemType r1 = com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.StoreItemType.COVER
            r0.set(r1)
        L_0x0124:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.receiver.InstallationReceiver.setOneFreeStoreGiftReeferPromotion(java.lang.String):void");
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        a(context, intent.getStringExtra(Payload.RFR));
    }
}
