package com.linkedin.android.litr;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.linkedin.android.litr.p459a.C16611a;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* renamed from: com.linkedin.android.litr.a */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/a.class */
class C16608a {

    /* renamed from: d */
    private static final String f58448d = "a";

    /* renamed from: a */
    final AbstractC16637e f58449a;

    /* renamed from: b */
    Bundle f58450b = new Bundle();

    /* renamed from: c */
    HandlerC16610a f58451c;

    /* renamed from: e */
    private final Map<String, Future<?>> f58452e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.linkedin.android.litr.a$a */
    /* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/a$a.class */
    public static final class HandlerC16610a extends Handler {

        /* renamed from: a */
        private final AbstractC16637e f58453a;

        private HandlerC16610a(Looper looper, AbstractC16637e abstractC16637e) {
            super(looper);
            this.f58453a = abstractC16637e;
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
                    this.f58453a.mo6844a(string);
                    return;
                } else if (i == 1) {
                    this.f58453a.mo6841b(string);
                    return;
                } else if (i == 2) {
                    this.f58453a.mo6842a(string, (Throwable) data.getSerializable("throwable"));
                    return;
                } else if (i == 3) {
                    this.f58453a.mo6843a(string, data.getFloat(EventConstants.PROGRESS));
                    return;
                } else if (i == 4) {
                    this.f58453a.mo6840c(string);
                    return;
                } else {
                    String str = C16608a.f58448d;
                    Log.e(str, "Unknown event received: " + message.what);
                    return;
                }
            }
            throw new IllegalArgumentException("Handler message doesn't contain an id!");
        }
    }

    public C16608a(Map<String, Future<?>> map, AbstractC16637e abstractC16637e, Looper looper) {
        this.f58452e = map;
        this.f58449a = abstractC16637e;
        if (looper != null) {
            this.f58451c = new HandlerC16610a(looper, abstractC16637e);
        }
    }

    /* renamed from: a */
    public final void m6909a(String str, Throwable th, List<C16611a> list) {
        this.f58452e.remove(str);
        HandlerC16610a handlerC16610a = this.f58451c;
        if (handlerC16610a == null) {
            this.f58449a.mo6842a(str, th);
            return;
        }
        Message obtain = Message.obtain(handlerC16610a, 2);
        obtain.obj = list;
        this.f58450b.putString("jobId", str);
        this.f58450b.putSerializable("throwable", th);
        obtain.setData(this.f58450b);
        obtain.sendToTarget();
    }

    /* renamed from: a */
    public final void m6908a(String str, List<C16611a> list) {
        this.f58452e.remove(str);
        HandlerC16610a handlerC16610a = this.f58451c;
        if (handlerC16610a == null) {
            this.f58449a.mo6841b(str);
            return;
        }
        Message obtain = Message.obtain(handlerC16610a, 1);
        obtain.obj = list;
        this.f58450b.putString("jobId", str);
        obtain.setData(this.f58450b);
        obtain.sendToTarget();
    }

    /* renamed from: b */
    public final void m6907b(String str, List<C16611a> list) {
        this.f58452e.remove(str);
        HandlerC16610a handlerC16610a = this.f58451c;
        if (handlerC16610a == null) {
            this.f58449a.mo6840c(str);
            return;
        }
        Message obtain = Message.obtain(handlerC16610a, 4);
        obtain.obj = list;
        this.f58450b.putString("jobId", str);
        obtain.setData(this.f58450b);
        obtain.sendToTarget();
    }
}
