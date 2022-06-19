package com.callapp.contacts.popup.contact.callrecorder;

import android.app.Activity;
import android.content.Intent;
import android.view.Window;
import androidx.core.content.C0790b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImage;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/callrecorder/CallRecordingUpdateDialog.class */
public class CallRecordingUpdateDialog extends DialogMessageWithTopImage {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CallRecordingUpdateDialog() {
        /*
            r11 = this;
            r0 = 2131886431(0x7f12015f, float:1.940744E38)
            java.lang.String r0 = com.callapp.contacts.util.Activities.getString(r0)
            r12 = r0
            android.text.SpannableStringBuilder r0 = new android.text.SpannableStringBuilder
            r1 = r0
            r1.<init>()
            r13 = r0
            r0 = r13
            r1 = 2131886428(0x7f12015c, float:1.9407435E38)
            java.lang.String r1 = com.callapp.contacts.util.Activities.getString(r1)
            android.text.SpannableStringBuilder r0 = r0.append(r1)
            java.lang.String r1 = " "
            android.text.SpannableStringBuilder r0 = r0.append(r1)
            r0 = r13
            android.text.style.StyleSpan r1 = new android.text.style.StyleSpan
            r2 = r1
            r3 = 1
            r2.<init>(r3)
            r2 = 0
            r3 = r13
            int r3 = r3.length()
            r4 = 33
            r0.setSpan(r1, r2, r3, r4)
            r0 = 2131886429(0x7f12015d, float:1.9407437E38)
            java.lang.String r0 = com.callapp.contacts.util.Activities.getString(r0)
            r14 = r0
            r0 = r13
            int r0 = r0.length()
            r15 = r0
            r0 = r13
            r1 = r14
            android.text.SpannableStringBuilder r0 = r0.append(r1)
            java.lang.String r1 = " "
            android.text.SpannableStringBuilder r0 = r0.append(r1)
            r0 = r13
            android.text.style.StyleSpan r1 = new android.text.style.StyleSpan
            r2 = r1
            r3 = 1
            r2.<init>(r3)
            r2 = r15
            r3 = r14
            int r3 = r3.length()
            r4 = r15
            int r3 = r3 + r4
            r4 = 33
            r0.setSpan(r1, r2, r3, r4)
            r0 = r13
            r1 = 2131886430(0x7f12015e, float:1.9407439E38)
            java.lang.String r1 = com.callapp.contacts.util.Activities.getString(r1)
            android.text.SpannableStringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = 2131230882(0x7f0800a2, float:1.807783E38)
            r2 = r12
            r3 = r13
            r4 = 2131888248(0x7f120878, float:1.9411126E38)
            java.lang.String r4 = com.callapp.contacts.util.Activities.getString(r4)
            r5 = 0
            com.callapp.contacts.popup.contact.callrecorder.-$$Lambda$CallRecordingUpdateDialog$chRZLIqoi-Nkd1tCusz9XOg3Y84 r6 = com.callapp.contacts.popup.contact.callrecorder._$$Lambda$CallRecordingUpdateDialog$chRZLIqoi_Nkd1tCusz9XOg3Y84.INSTANCE
            r7 = 2131887301(0x7f1204c5, float:1.9409205E38)
            java.lang.String r7 = com.callapp.contacts.util.Activities.getString(r7)
            r8 = 2131100108(0x7f0601cc, float:1.7812588E38)
            int r8 = com.callapp.contacts.util.ThemeUtils.getColor(r8)
            com.callapp.contacts.popup.contact.callrecorder.-$$Lambda$CallRecordingUpdateDialog$deeFiNdYuq6WYakAt4JiS_vSGGo r9 = com.callapp.contacts.popup.contact.callrecorder._$$Lambda$CallRecordingUpdateDialog$deeFiNdYuq6WYakAt4JiS_vSGGo.INSTANCE
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.popup.contact.callrecorder.CallRecordingUpdateDialog.<init>():void");
    }

    /* renamed from: a */
    public static /* synthetic */ void m27930a(Activity activity) {
    }

    /* renamed from: a */
    public static /* synthetic */ void m27929a(Activity activity, int i, int i2, Intent intent) {
        PhoneManager.get().m28226e();
        AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "recording needs to set as Default Dialer popup shown", String.valueOf(PhoneManager.get().isDefaultPhoneApp()));
    }

    /* renamed from: b */
    public static /* synthetic */ void m27928b(Activity activity) {
        Activities.m27687a(activity, true, (ActivityResult) _$$Lambda$CallRecordingUpdateDialog$JfEARXFIq7hUfSrszd_Q456q_4w.INSTANCE);
    }

    @Override // com.callapp.contacts.popup.contact.DialogMessageWithTopImage
    public int getLayoutResource() {
        return 2131558616;
    }

    @Override // com.callapp.contacts.popup.contact.DialogMessageWithTopImage, com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.legacyDialogs;
    }

    @Override // com.callapp.contacts.popup.contact.DialogMessageWithTopImage, com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        super.setDialogWindowSize(window);
        window.setBackgroundDrawable(C0790b.m44502a(CallAppApplication.get(), 2131230999));
    }
}
