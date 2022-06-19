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

    /* renamed from: a */
    private static InstallReferrerClient f27371a;

    /* renamed from: a */
    public static void m27894a(final Context context) {
        if (!Prefs.f26591gx.get().booleanValue()) {
            try {
                InstallReferrerClient build = InstallReferrerClient.newBuilder(context).build();
                f27371a = build;
                build.startConnection(new InstallReferrerStateListener() { // from class: com.callapp.contacts.receiver.InstallationReceiver.1
                    @Override // com.android.installreferrer.api.InstallReferrerStateListener
                    public final void onInstallReferrerServiceDisconnected() {
                    }

                    @Override // com.android.installreferrer.api.InstallReferrerStateListener
                    public final void onInstallReferrerSetupFinished(int i) {
                        if (i == 0) {
                            try {
                                InstallationReceiver.m27893a(context, InstallationReceiver.f27371a.getInstallReferrer().getInstallReferrer());
                            } catch (RemoteException e) {
                                CLog.m27596b(InstallationReceiver.class, e);
                            }
                        }
                        InstallationReceiver.f27371a.endConnection();
                    }
                });
            } catch (Exception e) {
                CLog.m27609a(InstallationReceiver.class, e);
            }
        }
    }

    /* renamed from: a */
    public static void m27893a(Context context, String str) {
        synchronized (InstallationReceiver.class) {
            try {
                try {
                    if (!Prefs.f26591gx.get().booleanValue()) {
                        Prefs.f26591gx.set(Boolean.TRUE);
                        if (!Activities.isStoreNameGooglePlay() && !Prefs.f26219W.get().booleanValue()) {
                            Prefs.f26219W.set(Boolean.TRUE);
                            context.sendOrderedBroadcast(new Intent().putExtra("android.intent.extra.shortcut.INTENT", new Intent(context, ContactsListActivity.class).setAction("android.intent.action.MAIN").addFlags(268435456).addFlags(67108864)).putExtra("android.intent.extra.shortcut.NAME", Activities.getString(2131886654)).putExtra("duplicate", false).putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(context, 2131689481)).setAction("com.android.launcher.action.INSTALL_SHORTCUT"), null);
                        }
                        m27891b(str);
                        AbstractAnalyticsManager.UTM m28448d = AbstractAnalyticsManager.m28448d(str);
                        if (m28448d != null && StringUtils.m26045b((CharSequence) m28448d.f25899d)) {
                            setOneFreeStoreGiftReeferPromotion(m28448d.f25899d);
                            if (StringUtils.m26035c(m28448d.f25899d, "appWall")) {
                                Prefs.f26248aY.set(Boolean.TRUE);
                            }
                        }
                    }
                } catch (RuntimeException e) {
                    CLog.m27584d(InstallationReceiver.class, e, "Exception in InstallationReceiver.onReceive()");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static String[] m27892a(String str) {
        String str2;
        String[] strArr = new String[20];
        if (StringUtils.m26045b((CharSequence) str)) {
            int min = Math.min(str.length(), 800);
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= 10) {
                    break;
                }
                StringBuilder sb = new StringBuilder("r");
                int i3 = i2 + 1;
                sb.append(i3);
                String sb2 = sb.toString();
                if (min > 0) {
                    int i4 = i2 * 80;
                    str2 = StringUtils.m26054a(str, i4, Math.min(min, 80) + i4);
                } else {
                    str2 = "";
                }
                String str3 = str2;
                min -= StringUtils.m26028f(str3);
                int i5 = i2 * 2;
                strArr[i5] = sb2;
                strArr[i5 + 1] = str3;
                i = i3;
            }
        }
        return strArr;
    }

    /* renamed from: b */
    private static String m27891b(String str) {
        if (!StringUtils.m26045b((CharSequence) str)) {
            CLog.m27611a(InstallationReceiver.class, "referrer = null");
            AnalyticsManager.get().m28450a(Constants.INSTALLATION, "No Referrer");
            return null;
        }
        String str2 = str;
        try {
            String decode = Build.VERSION.SDK_INT > 23 ? URLDecoder.decode(str, StandardCharsets.UTF_8.toString()) : URLDecoder.decode(str);
            String str3 = decode;
            Prefs.f26220X.set(decode);
            String str4 = decode;
            CLog.m27610a(InstallationReceiver.class, "referrer = %s", decode);
            str2 = decode;
            AnalyticsManager.get().mo28444a(Constants.INSTALLATION, Payload.RFR, (String) null, 0.0d, m27892a(decode));
            return decode;
        } catch (UnsupportedEncodingException e) {
            CLog.m27609a(InstallationReceiver.class, e);
            AnalyticsManager.get().m28449a(Constants.INSTALLATION, "failed to parse referrer = %s", str2);
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d4, code lost:
        if (r3.equals("freegiftcover") == false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void setOneFreeStoreGiftReeferPromotion(java.lang.String r3) {
        /*
            r0 = r3
            java.lang.String r1 = "freegiftcover"
            boolean r0 = com.callapp.framework.util.StringUtils.m26025g(r0, r1)
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L34
            r0 = r3
            java.lang.String r1 = "freegiftringtones"
            boolean r0 = com.callapp.framework.util.StringUtils.m26025g(r0, r1)
            if (r0 != 0) goto L34
            r0 = r3
            java.lang.String r1 = "freegiftthemes"
            boolean r0 = com.callapp.framework.util.StringUtils.m26025g(r0, r1)
            if (r0 != 0) goto L34
            r0 = r3
            java.lang.String r1 = "freegiftkeypad"
            boolean r0 = com.callapp.framework.util.StringUtils.m26025g(r0, r1)
            if (r0 == 0) goto L2f
            goto L34
        L2f:
            r0 = 0
            r6 = r0
            goto L36
        L34:
            r0 = 1
            r6 = r0
        L36:
            r0 = r3
            java.lang.String r1 = "StoreGift"
            boolean r0 = com.callapp.framework.util.StringUtils.m26025g(r0, r1)
            if (r0 != 0) goto L44
            r0 = r6
            if (r0 == 0) goto L4e
        L44:
            com.callapp.contacts.manager.preferences.prefs.IntegerPref r0 = com.callapp.contacts.manager.preferences.Prefs.f26344cO
            r1 = 1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r0.set(r1)
        L4e:
            r0 = r6
            if (r0 == 0) goto L124
            com.callapp.contacts.manager.preferences.prefs.BooleanPref r0 = com.callapp.contacts.manager.preferences.Prefs.f26347cR
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r0.set(r1)
            r0 = r3
            int r0 = r0.hashCode()
            r0 = r3
            int r0 = r0.hashCode()
            switch(r0) {
                case -1229091941: goto Lcb;
                case 772753008: goto Lb9;
                case 1032587366: goto La7;
                case 1556864757: goto L95;
                default: goto L90;
            }
        L90:
            r0 = -1
            r6 = r0
            goto Lda
        L95:
            r0 = r3
            java.lang.String r1 = "freegiftringtones"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto La2
            goto L90
        La2:
            r0 = 3
            r6 = r0
            goto Lda
        La7:
            r0 = r3
            java.lang.String r1 = "freegiftthemes"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto Lb4
            goto L90
        Lb4:
            r0 = 2
            r6 = r0
            goto Lda
        Lb9:
            r0 = r3
            java.lang.String r1 = "freegiftkeypad"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto Lc6
            goto L90
        Lc6:
            r0 = 1
            r6 = r0
            goto Lda
        Lcb:
            r0 = r5
            r6 = r0
            r0 = r3
            java.lang.String r1 = "freegiftcover"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto Lda
            goto L90
        Lda:
            r0 = r6
            switch(r0) {
                case 0: goto L11b;
                case 1: goto L111;
                case 2: goto L107;
                case 3: goto Lfb;
                default: goto Lf8;
            }
        Lf8:
            goto L124
        Lfb:
            com.callapp.contacts.manager.preferences.prefs.EnumPref<com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$StoreItemType> r0 = com.callapp.contacts.manager.preferences.Prefs.f26348cS
            com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$StoreItemType r1 = com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.StoreItemType.CALL_SCREEN
            r0.set(r1)
            goto L124
        L107:
            com.callapp.contacts.manager.preferences.prefs.EnumPref<com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$StoreItemType> r0 = com.callapp.contacts.manager.preferences.Prefs.f26348cS
            com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$StoreItemType r1 = com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.StoreItemType.THEME
            r0.set(r1)
            return
        L111:
            com.callapp.contacts.manager.preferences.prefs.EnumPref<com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$StoreItemType> r0 = com.callapp.contacts.manager.preferences.Prefs.f26348cS
            com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$StoreItemType r1 = com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.StoreItemType.KEYPAD
            r0.set(r1)
            return
        L11b:
            com.callapp.contacts.manager.preferences.prefs.EnumPref<com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$StoreItemType> r0 = com.callapp.contacts.manager.preferences.Prefs.f26348cS
            com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$StoreItemType r1 = com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.StoreItemType.COVER
            r0.set(r1)
        L124:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.receiver.InstallationReceiver.setOneFreeStoreGiftReeferPromotion(java.lang.String):void");
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        m27893a(context, intent.getStringExtra(Payload.RFR));
    }
}
