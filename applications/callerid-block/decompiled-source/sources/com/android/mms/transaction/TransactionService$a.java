package com.android.mms.transaction;

import android.os.Handler;
/* loaded from: classes-dex2jar.jar:com/android/mms/transaction/TransactionService$a.class */
class TransactionService$a extends Handler {

    /* renamed from: a */
    final /* synthetic */ TransactionService f3339a;

    TransactionService$a(TransactionService transactionService) {
        this.f3339a = transactionService;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    @Override // android.os.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handleMessage(android.os.Message r5) {
        /*
            r4 = this;
            r0 = r5
            int r0 = r0.what
            r6 = r0
            r0 = r6
            r1 = 1
            if (r0 != r1) goto L_0x001c
            r0 = r4
            com.android.mms.transaction.TransactionService r0 = r0.f3339a
            r5 = r0
            int r0 = com.klinker.android.send_message.C2707d.message_queued
            r6 = r0
        L_0x0013:
            r0 = r5
            r1 = r6
            java.lang.String r0 = r0.getString(r1)
            r5 = r0
            goto L_0x0040
        L_0x001c:
            r0 = r6
            r1 = 2
            if (r0 != r1) goto L_0x002d
            r0 = r4
            com.android.mms.transaction.TransactionService r0 = r0.f3339a
            r5 = r0
            int r0 = com.klinker.android.send_message.C2707d.download_later
            r6 = r0
            goto L_0x0013
        L_0x002d:
            r0 = r6
            r1 = 3
            if (r0 != r1) goto L_0x003e
            r0 = r4
            com.android.mms.transaction.TransactionService r0 = r0.f3339a
            r5 = r0
            int r0 = com.klinker.android.send_message.C2707d.no_apn
            r6 = r0
            goto L_0x0013
        L_0x003e:
            r0 = 0
            r5 = r0
        L_0x0040:
            r0 = r5
            if (r0 == 0) goto L_0x0050
            r0 = r4
            com.android.mms.transaction.TransactionService r0 = r0.f3339a
            r1 = r5
            r2 = 1
            android.widget.Toast r0 = android.widget.Toast.makeText(r0, r1, r2)
            r0.show()
        L_0x0050:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.mms.transaction.TransactionService$a.handleMessage(android.os.Message):void");
    }
}
