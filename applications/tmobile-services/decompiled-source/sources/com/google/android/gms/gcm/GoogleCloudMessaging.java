package com.google.android.gms.gcm;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import androidx.collection.ArrayMap;
import com.google.firebase.messaging.Constants;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/GoogleCloudMessaging.class */
public class GoogleCloudMessaging {

    /* renamed from: a */
    private Context f7732a;

    /* renamed from: b */
    private final Map<String, Handler> f7733b = Collections.synchronizedMap(new ArrayMap());

    /* renamed from: c */
    private final BlockingQueue<Intent> f7734c = new LinkedBlockingQueue();

    static {
        new AtomicInteger(1);
    }

    public GoogleCloudMessaging() {
        new Messenger(new zzf(this, Looper.getMainLooper()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public final boolean m14177b(Intent intent) {
        Handler remove;
        String stringExtra = intent.getStringExtra("In-Reply-To");
        String str = stringExtra;
        if (stringExtra == null) {
            str = stringExtra;
            if (intent.hasExtra(Constants.IPC_BUNDLE_KEY_SEND_ERROR)) {
                str = intent.getStringExtra(Constants.MessagePayloadKeys.MSGID);
            }
        }
        if (str == null || (remove = this.f7733b.remove(str)) == null) {
            return false;
        }
        Message obtain = Message.obtain();
        obtain.obj = intent;
        return remove.sendMessage(obtain);
    }
}
