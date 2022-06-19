package com.callerid.block.sms;
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/SmsReceiveActivity$a.class */
class SmsReceiveActivity$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ SmsReceiveActivity f4863b;

    SmsReceiveActivity$a(SmsReceiveActivity smsReceiveActivity) {
        this.f4863b = smsReceiveActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        SmsReceiveActivity.Q(this.f4863b);
    }
}
