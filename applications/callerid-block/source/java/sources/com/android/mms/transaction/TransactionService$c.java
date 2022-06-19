package com.android.mms.transaction;

import android.content.ContentValues;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import e.d.a.a.a;
import java.io.IOException;
import java.util.Iterator;
import p011c.p012a.p013a.C0614a;
/* loaded from: classes-dex2jar.jar:com/android/mms/transaction/TransactionService$c.class */
public final class TransactionService$c extends Handler {

    /* renamed from: a */
    final /* synthetic */ TransactionService f3341a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransactionService$c(TransactionService transactionService, Looper looper) {
        super(looper);
        this.f3341a = transactionService;
    }

    /* renamed from: a */
    private String m11406a(Message message) {
        int i = message.what;
        return i == 100 ? "EVENT_QUIT" : i == 3 ? "EVENT_CONTINUE_MMS_CONNECTIVITY" : i == 1 ? "EVENT_TRANSACTION_REQUEST" : i == 4 ? "EVENT_HANDLE_NEXT_PENDING_TRANSACTION" : i == 5 ? "EVENT_NEW_INTENT" : "unknown message.what";
    }

    /* renamed from: b */
    private String m11405b(int i) {
        return i == 0 ? "NOTIFICATION_TRANSACTION" : i == 1 ? "RETRIEVE_TRANSACTION" : i == 2 ? "SEND_TRANSACTION" : i == 3 ? "READREC_TRANSACTION" : "invalid transaction type";
    }

    /* renamed from: e */
    private boolean m11402e(n nVar) {
        synchronized (TransactionService.b(this.f3341a)) {
            try {
                Iterator it = TransactionService.d(this.f3341a).iterator();
                do {
                    if (!it.hasNext()) {
                        Iterator it2 = TransactionService.b(this.f3341a).iterator();
                        do {
                            if (!it2.hasNext()) {
                                if (a.f("Mms", 2)) {
                                    a.k("Mms", "processTransaction: call beginMmsConnectivity...");
                                }
                                if (this.f3341a.h() == 1) {
                                    TransactionService.d(this.f3341a).add(nVar);
                                    if (a.f("Mms", 2)) {
                                        a.k("Mms", "processTransaction: connResult=APN_REQUEST_STARTED, defer transaction pending MMS connectivity");
                                    }
                                    return true;
                                } else if (TransactionService.b(this.f3341a).size() > 0) {
                                    if (a.f("Mms", 2)) {
                                        a.k("Mms", "Adding transaction to 'mPending' list: " + nVar);
                                    }
                                    TransactionService.d(this.f3341a).add(nVar);
                                    return true;
                                } else {
                                    if (a.f("Mms", 2)) {
                                        a.k("Mms", "Adding transaction to 'mProcessing' list: " + nVar);
                                    }
                                    TransactionService.b(this.f3341a).add(nVar);
                                    sendMessageDelayed(obtainMessage(3), 30000L);
                                    if (a.f("Mms", 2)) {
                                        a.k("Mms", "processTransaction: starting transaction " + nVar);
                                    }
                                    nVar.m11387a(this.f3341a);
                                    nVar.j();
                                    return true;
                                }
                            }
                        } while (!((n) it2.next()).i(nVar));
                        if (a.f("Mms", 2)) {
                            a.k("Mms", "Duplicated transaction: " + nVar.f());
                        }
                        return true;
                    }
                } while (!((n) it.next()).i(nVar));
                if (a.f("Mms", 2)) {
                    a.k("Mms", "Transaction already pending: " + nVar.f());
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public void m11404c() {
        synchronized (TransactionService.b(this.f3341a)) {
            while (TransactionService.d(this.f3341a).size() != 0) {
                try {
                    m mVar = (n) TransactionService.d(this.f3341a).remove(0);
                    ((n) mVar).g.m11369d(2);
                    if (mVar instanceof m) {
                        Uri uri = mVar.j;
                        ((n) mVar).g.m11370c(uri);
                        ContentValues contentValues = new ContentValues(1);
                        contentValues.put("resp_st", (Integer) 134);
                        TransactionService transactionService = this.f3341a;
                        C0614a.m11569f(transactionService, transactionService.getContentResolver(), uri, contentValues, null, null);
                    }
                    mVar.m11385c();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: d */
    public void m11403d(n nVar, C0698p c0698p) {
        int size;
        if (a.f("Mms", 2)) {
            a.k("Mms", "processPendingTxn: transaction=" + nVar);
        }
        synchronized (TransactionService.b(this.f3341a)) {
            if (TransactionService.d(this.f3341a).size() != 0) {
                nVar = (n) TransactionService.d(this.f3341a).remove(0);
            }
            size = TransactionService.b(this.f3341a).size();
        }
        if (nVar == null) {
            if (size != 0) {
                return;
            }
            if (a.f("Mms", 2)) {
                a.k("Mms", "processPendingTxn: no more transaction, endMmsConnectivity");
            }
            this.f3341a.j();
            return;
        }
        if (c0698p != null) {
            nVar.o(c0698p);
        }
        try {
            int f = nVar.f();
            if (a.f("Mms", 2)) {
                a.k("Mms", "processPendingTxn: process " + f);
            }
            if (!m11402e(nVar)) {
                this.f3341a.stopSelf(f);
            } else if (!a.f("Mms", 2)) {
            } else {
                a.k("Mms", "Started deferred processing of transaction  " + nVar);
            }
        } catch (IOException e) {
            a.m("Mms", e.getMessage(), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:168:0x0507  */
    @Override // android.os.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handleMessage(android.os.Message r8) {
        /*
            Method dump skipped, instructions count: 1352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.mms.transaction.TransactionService$c.handleMessage(android.os.Message):void");
    }
}
