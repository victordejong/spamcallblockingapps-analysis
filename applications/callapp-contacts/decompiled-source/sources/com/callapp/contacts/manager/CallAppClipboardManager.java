package com.callapp.contacts.manager;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.util.Pair;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.activity.contact.details.overlay.ClipboardAutoSearchOverlayView;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/CallAppClipboardManager.class */
public class CallAppClipboardManager implements ClipboardManager.OnPrimaryClipChangedListener, ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    private boolean f14809a;

    public static Phone a(String str) {
        if (!StringUtils.b((CharSequence) str)) {
            return null;
        }
        Phone a2 = PhoneManager.get().a(b(str));
        if (a2.isValidForSearch()) {
            return a2;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00eb, code lost:
        if ((r0 - r11) > 2000) goto L_0x0102;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x010a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String a() {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.CallAppClipboardManager.a():java.lang.String");
    }

    private void a(long j, String str) {
        synchronized (this) {
            Prefs.v.set(new Pair(Long.valueOf(j), str));
        }
    }

    static /* synthetic */ void a(ClipboardManager.OnPrimaryClipChangedListener onPrimaryClipChangedListener) {
        ((ClipboardManager) Singletons.a("clipboard")).addPrimaryClipChangedListener(onPrimaryClipChangedListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Intent intent) {
        OverlayManager.get().a();
        ClipboardAutoSearchOverlayView clipboardAutoSearchOverlayView = new ClipboardAutoSearchOverlayView(CallAppApplication.get());
        clipboardAutoSearchOverlayView.onCreate();
        clipboardAutoSearchOverlayView.onNewIntent(intent);
    }

    private static String b(String str) {
        String[] split;
        if (StringUtils.a((CharSequence) str)) {
            CLog.a(CallAppClipboardManager.class, "CallApp Clipboard failed: text is empty");
            return null;
        } else if (str.length() > 80) {
            CLog.a(CallAppClipboardManager.class, "CallApp Clipboard failed: text is too long: " + str.length());
            return null;
        } else {
            String str2 = null;
            for (String str3 : RegexUtils.e(str.replaceAll("\\s+", ""), org.apache.commons.lang3.StringUtils.SPACE).split("\\s+")) {
                str2 = str2;
                if (RegexUtils.e(str3) >= 6) {
                    if (str2 == null) {
                        str2 = str3;
                    } else {
                        CLog.a(CallAppClipboardManager.class, "CallApp Clipboard failed: text must not contain more than 1 number");
                        return null;
                    }
                }
            }
            if (str2 != null && PhoneManager.get().a(str2).isValidForSearch()) {
                return RegexUtils.f(str2, "");
            }
            if (str2 == null) {
                CLog.a(CallAppClipboardManager.class, "Callapp Clipboard failed: text doesn't contain valid phone token");
                return null;
            }
            CLog.a(CallAppClipboardManager.class, "Callapp Clipboard failed: text doesn't contain valid phone for search");
            return null;
        }
    }

    public static CallAppClipboardManager get() {
        return Singletons.get().getCallAppClipboardManager();
    }

    private Pair<Long, String> getLastClipData() {
        Pair<Long, String> pair;
        synchronized (this) {
            pair = (Pair) Prefs.v.get();
        }
        return pair;
    }

    public final void a(String str, String str2) {
        setPrimaryClip$387437e0(ClipData.newPlainText(str, str2));
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        ((ClipboardManager) Singletons.a("clipboard")).removePrimaryClipChangedListener(this);
    }

    public String getLatestNumberFromClipboard() {
        Pair<Long, String> lastClipData = getLastClipData();
        Pair<Long, String> pair = lastClipData;
        if (lastClipData == null) {
            a();
            Pair<Long, String> lastClipData2 = getLastClipData();
            pair = lastClipData2;
            if (lastClipData2 == null) {
                CLog.a("CallAppClipboardManager");
                return null;
            }
        }
        if (System.currentTimeMillis() - ((Long) pair.first).longValue() < 30000) {
            return (String) pair.second;
        }
        return null;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.manager.CallAppClipboardManager.1
            @Override // java.lang.Runnable
            public void run() {
                CallAppClipboardManager.a(CallAppClipboardManager.this);
            }
        });
    }

    @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
    public void onPrimaryClipChanged() {
        if (this.f14809a) {
            this.f14809a = false;
        } else if (!BaseActivity.isCallAppVisible && Prefs.l.get().booleanValue()) {
            String a2 = a();
            if (StringUtils.b((CharSequence) a2)) {
                final Intent intent = new Intent();
                intent.putExtra(Constants.EXTRA_PHONE_NUMBER, PhoneManager.get().a(a2).a());
                if (Prefs.aW.get().booleanValue() && Activities.e()) {
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.manager._$$Lambda$CallAppClipboardManager$RE9fCGcpt5r0U_ySexY9UQ6NHIw
                        @Override // java.lang.Runnable
                        public final void run() {
                            CallAppClipboardManager.a(intent);
                        }
                    });
                }
            }
        }
    }

    public final void setPrimaryClip$387437e0(ClipData clipData) {
        this.f14809a = true;
        try {
            ((ClipboardManager) Singletons.a("clipboard")).setPrimaryClip(clipData);
        } catch (IllegalStateException e) {
            CLog.a(CallAppClipboardManager.class, "Copy to clipboard failed");
        }
    }
}
