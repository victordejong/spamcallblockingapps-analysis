package com.linkedin.android.litr;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/a.class */
class a {

    /* renamed from: d  reason: collision with root package name */
    private static final String f33652d = "a";

    /* renamed from: a  reason: collision with root package name */
    final e f33653a;

    /* renamed from: b  reason: collision with root package name */
    Bundle f33654b = new Bundle();

    /* renamed from: c  reason: collision with root package name */
    HandlerC0543a f33655c;
    private final Map<String, Future<?>> e;

    /* renamed from: com.linkedin.android.litr.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/a$a.class */
    static final class HandlerC0543a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final e f33660a;

        private HandlerC0543a(Looper looper, e eVar) {
            super(looper);
            this.f33660a = eVar;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.obj != null) {
                Object obj = message.obj;
            }
            Bundle data = message.getData();
            String string = data.getString("jobId");
            if (string != null) {
                int i = message.what;
                if (i == 0) {
                    this.f33660a.a(string);
                } else if (i == 1) {
                    this.f33660a.b(string);
                } else if (i == 2) {
                    this.f33660a.a(string, (Throwable) data.getSerializable("throwable"));
                } else if (i == 3) {
                    this.f33660a.a(string, data.getFloat(EventConstants.PROGRESS));
                } else if (i != 4) {
                    String str = a.f33652d;
                    Log.e(str, "Unknown event received: " + message.what);
                } else {
                    this.f33660a.c(string);
                }
            } else {
                throw new IllegalArgumentException("Handler message doesn't contain an id!");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Map<String, Future<?>> map, e eVar, Looper looper) {
        this.e = map;
        this.f33653a = eVar;
        if (looper != null) {
            this.f33655c = new HandlerC0543a(looper, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, Throwable th, List<com.linkedin.android.litr.a.a> list) {
        this.e.remove(str);
        HandlerC0543a aVar = this.f33655c;
        if (aVar == null) {
            this.f33653a.a(str, th);
            return;
        }
        Message obtain = Message.obtain(aVar, 2);
        obtain.obj = list;
        this.f33654b.putString("jobId", str);
        this.f33654b.putSerializable("throwable", th);
        obtain.setData(this.f33654b);
        obtain.sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, List<com.linkedin.android.litr.a.a> list) {
        this.e.remove(str);
        HandlerC0543a aVar = this.f33655c;
        if (aVar == null) {
            this.f33653a.b(str);
            return;
        }
        Message obtain = Message.obtain(aVar, 1);
        obtain.obj = list;
        this.f33654b.putString("jobId", str);
        obtain.setData(this.f33654b);
        obtain.sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str, List<com.linkedin.android.litr.a.a> list) {
        this.e.remove(str);
        HandlerC0543a aVar = this.f33655c;
        if (aVar == null) {
            this.f33653a.c(str);
            return;
        }
        Message obtain = Message.obtain(aVar, 4);
        obtain.obj = list;
        this.f33654b.putString("jobId", str);
        obtain.setData(this.f33654b);
        obtain.sendToTarget();
    }
}
