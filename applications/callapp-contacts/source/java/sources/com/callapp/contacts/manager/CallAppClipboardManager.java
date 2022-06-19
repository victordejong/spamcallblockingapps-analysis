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

    /* renamed from: a */
    private boolean f25608a;

    /* renamed from: a */
    public static Phone m28710a(String str) {
        if (StringUtils.m26045b((CharSequence) str)) {
            Phone m28239a = PhoneManager.get().m28239a(m28708b(str));
            if (!m28239a.isValidForSearch()) {
                return null;
            }
            return m28239a;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00eb, code lost:
        if ((r0 - (r11 ? 1 : 0)) > 2000) goto L44;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x010a  */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m28714a() {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.CallAppClipboardManager.m28714a():java.lang.String");
    }

    /* renamed from: a */
    private void m28713a(long j, String str) {
        synchronized (this) {
            Prefs.f26665v.set(new Pair(Long.valueOf(j), str));
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m28712a(ClipboardManager.OnPrimaryClipChangedListener onPrimaryClipChangedListener) {
        ((ClipboardManager) Singletons.m28493a("clipboard")).addPrimaryClipChangedListener(onPrimaryClipChangedListener);
    }

    /* renamed from: a */
    public static /* synthetic */ void m28711a(Intent intent) {
        OverlayManager.get().m28527a();
        ClipboardAutoSearchOverlayView clipboardAutoSearchOverlayView = new ClipboardAutoSearchOverlayView(CallAppApplication.get());
        clipboardAutoSearchOverlayView.onCreate();
        clipboardAutoSearchOverlayView.onNewIntent(intent);
    }

    /* renamed from: b */
    private static String m28708b(String str) {
        if (StringUtils.m26059a((CharSequence) str)) {
            CLog.m27611a(CallAppClipboardManager.class, "CallApp Clipboard failed: text is empty");
            return null;
        } else if (str.length() > 80) {
            CLog.m27611a(CallAppClipboardManager.class, "CallApp Clipboard failed: text is too long: " + str.length());
            return null;
        } else {
            String[] split = RegexUtils.m31900e(str.replaceAll("\\s+", ""), org.apache.commons.lang3.StringUtils.SPACE).split("\\s+");
            int length = split.length;
            int i = 0;
            String str2 = null;
            while (true) {
                String str3 = str2;
                if (i >= length) {
                    if (str3 != null && PhoneManager.get().m28239a(str3).isValidForSearch()) {
                        return RegexUtils.m31898f(str3, "");
                    }
                    if (str3 == null) {
                        CLog.m27611a(CallAppClipboardManager.class, "Callapp Clipboard failed: text doesn't contain valid phone token");
                        return null;
                    }
                    CLog.m27611a(CallAppClipboardManager.class, "Callapp Clipboard failed: text doesn't contain valid phone for search");
                    return null;
                }
                String str4 = split[i];
                String str5 = str3;
                if (RegexUtils.m31901e(str4) >= 6) {
                    if (str3 != null) {
                        CLog.m27611a(CallAppClipboardManager.class, "CallApp Clipboard failed: text must not contain more than 1 number");
                        return null;
                    }
                    str5 = str4;
                }
                i++;
                str2 = str5;
            }
        }
    }

    public static CallAppClipboardManager get() {
        return Singletons.get().getCallAppClipboardManager();
    }

    private Pair<Long, String> getLastClipData() {
        Pair<Long, String> pair;
        synchronized (this) {
            pair = (Pair) Prefs.f26665v.get();
        }
        return pair;
    }

    /* renamed from: a */
    public final void m28709a(String str, String str2) {
        setPrimaryClip$387437e0(ClipData.newPlainText(str, str2));
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        ((ClipboardManager) Singletons.m28493a("clipboard")).removePrimaryClipChangedListener(this);
    }

    public String getLatestNumberFromClipboard() {
        Pair<Long, String> lastClipData = getLastClipData();
        Pair<Long, String> pair = lastClipData;
        if (lastClipData == null) {
            m28714a();
            Pair<Long, String> lastClipData2 = getLastClipData();
            pair = lastClipData2;
            if (lastClipData2 == null) {
                CLog.m27606a("CallAppClipboardManager");
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
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.manager.CallAppClipboardManager.1
            @Override // java.lang.Runnable
            public void run() {
                CallAppClipboardManager.m28712a(CallAppClipboardManager.this);
            }
        });
    }

    @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
    public void onPrimaryClipChanged() {
        if (this.f25608a) {
            this.f25608a = false;
        } else if (BaseActivity.isCallAppVisible || !Prefs.f26655l.get().booleanValue()) {
        } else {
            String m28714a = m28714a();
            if (!StringUtils.m26045b((CharSequence) m28714a)) {
                return;
            }
            final Intent intent = new Intent();
            intent.putExtra(Constants.EXTRA_PHONE_NUMBER, PhoneManager.get().m28239a(m28714a).m26101a());
            if (!Prefs.f26246aW.get().booleanValue() || !Activities.m27641e()) {
                return;
            }
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.manager._$$Lambda$CallAppClipboardManager$RE9fCGcpt5r0U_ySexY9UQ6NHIw
                @Override // java.lang.Runnable
                public final void run() {
                    CallAppClipboardManager.m28711a(intent);
                }
            });
        }
    }

    public final void setPrimaryClip$387437e0(ClipData clipData) {
        this.f25608a = true;
        try {
            ((ClipboardManager) Singletons.m28493a("clipboard")).setPrimaryClip(clipData);
        } catch (IllegalStateException e) {
            CLog.m27611a(CallAppClipboardManager.class, "Copy to clipboard failed");
        }
    }
}
