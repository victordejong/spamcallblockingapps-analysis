package p065f.p071b;

import android.telephony.SmsMessage;
/* renamed from: f.b.a */
/* loaded from: classes-dex2jar.jar:f/b/a.class */
public final class C4289a extends SmsMessage {

    /* renamed from: a */
    public final String f10358a;

    /* renamed from: b */
    public final String f10359b;

    /* renamed from: c */
    public final SmsMessage.MessageClass f10360c;

    public C4289a(String str, String str2, SmsMessage.MessageClass messageClass) {
        this.f10358a = str;
        this.f10359b = str2;
        this.f10360c = messageClass;
    }

    @Override // android.telephony.SmsMessage
    public String getDisplayMessageBody() {
        return this.f10359b;
    }

    @Override // android.telephony.SmsMessage
    public String getDisplayOriginatingAddress() {
        return this.f10358a;
    }

    @Override // android.telephony.SmsMessage
    public SmsMessage.MessageClass getMessageClass() {
        SmsMessage.MessageClass messageClass = this.f10360c;
        if (messageClass == null) {
            messageClass = SmsMessage.MessageClass.CLASS_1;
        }
        return messageClass;
    }

    @Override // android.telephony.SmsMessage
    public int getProtocolIdentifier() {
        return 0;
    }

    @Override // android.telephony.SmsMessage
    public String getPseudoSubject() {
        return "";
    }

    @Override // android.telephony.SmsMessage
    public String getServiceCenterAddress() {
        return "0";
    }

    @Override // android.telephony.SmsMessage
    public long getTimestampMillis() {
        return System.currentTimeMillis();
    }

    @Override // android.telephony.SmsMessage
    public boolean isReplyPathPresent() {
        return false;
    }
}
