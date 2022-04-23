package androidx.localbroadcastmanager.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/localbroadcastmanager/content/LocalBroadcastManager.class */
public final class LocalBroadcastManager {

    /* renamed from: a */
    private final Context f4174a;

    /* renamed from: b */
    private final HashMap<BroadcastReceiver, ArrayList<ReceiverRecord>> f4175b;

    /* renamed from: c */
    private final ArrayList<BroadcastRecord> f4176c;

    /* renamed from: androidx.localbroadcastmanager.content.LocalBroadcastManager$1 */
    /* loaded from: classes-dex2jar.jar:androidx/localbroadcastmanager/content/LocalBroadcastManager$1.class */
    class HandlerC04041 extends Handler {

        /* renamed from: a */
        final /* synthetic */ LocalBroadcastManager f4177a;

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                this.f4177a.m18056a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord.class */
    public static final class BroadcastRecord {

        /* renamed from: a */
        final Intent f4178a;

        /* renamed from: b */
        final ArrayList<ReceiverRecord> f4179b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord.class */
    public static final class ReceiverRecord {

        /* renamed from: a */
        final IntentFilter f4180a;

        /* renamed from: b */
        final BroadcastReceiver f4181b;

        /* renamed from: c */
        boolean f4182c;

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f4181b);
            sb.append(" filter=");
            sb.append(this.f4180a);
            if (this.f4182c) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    /* renamed from: a */
    void m18056a() {
        int size;
        BroadcastRecord[] broadcastRecordArr;
        while (true) {
            synchronized (this.f4175b) {
                size = this.f4176c.size();
                if (size > 0) {
                    broadcastRecordArr = new BroadcastRecord[size];
                    this.f4176c.toArray(broadcastRecordArr);
                    this.f4176c.clear();
                } else {
                    return;
                }
            }
            for (int i = 0; i < size; i++) {
                BroadcastRecord broadcastRecord = broadcastRecordArr[i];
                int size2 = broadcastRecord.f4179b.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    ReceiverRecord receiverRecord = broadcastRecord.f4179b.get(i2);
                    if (!receiverRecord.f4182c) {
                        receiverRecord.f4181b.onReceive(this.f4174a, broadcastRecord.f4178a);
                    }
                }
            }
        }
    }
}
