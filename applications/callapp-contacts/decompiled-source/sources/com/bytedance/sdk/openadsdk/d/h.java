package com.bytedance.sdk.openadsdk.d;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.d.j;
import com.bytedance.sdk.openadsdk.utils.q;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationDetails;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/h.class */
public class h<T extends j> extends HandlerThread implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    public static String f9405a = "AdEventThread";

    /* renamed from: b  reason: collision with root package name */
    public static String f9406b = "ttad_bk";

    /* renamed from: c  reason: collision with root package name */
    public final f<T> f9407c;

    /* renamed from: d  reason: collision with root package name */
    public o<T> f9408d;
    public final List<T> e;
    public long f;
    public boolean g;
    public int h;
    public Handler i;
    public final a j;
    public final b k;
    private final h<T>.c l;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/h$a.class */
    public interface a {
        boolean a();
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/h$b.class */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        final int f9409a;

        /* renamed from: b  reason: collision with root package name */
        final long f9410b;

        /* renamed from: c  reason: collision with root package name */
        final long f9411c;

        /* renamed from: d  reason: collision with root package name */
        final int f9412d;
        final long e;
        final long f;

        b(int i, long j, long j2, int i2, long j3, long j4) {
            this.f9409a = i;
            this.f9410b = j;
            this.f9411c = j2;
            this.f9412d = i2;
            this.e = j3;
            this.f = j4;
        }

        public static b a() {
            return new b(1, 120000L, FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT, 5, 172800000L, 300000L);
        }

        public static b b() {
            return new b(3, 120000L, FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT, 5, 172800000L, 300000L);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/h$c.class */
    class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            q.c(h.f9405a, "onReceive: timer event");
            if (h.this.i != null) {
                h.this.i.removeMessages(6);
                Message obtainMessage = h.this.i.obtainMessage();
                obtainMessage.what = 6;
                h.this.i.sendMessage(obtainMessage);
            }
        }
    }

    public h(f<T> fVar, o<T> oVar, b bVar, a aVar) {
        this(f9406b, f9405a, fVar, oVar, bVar, aVar);
    }

    public h(String str, String str2, f<T> fVar, o<T> oVar, b bVar, a aVar) {
        super(str);
        h<T>.c cVar = new c();
        this.l = cVar;
        f9405a = str2;
        this.k = bVar;
        this.j = aVar;
        this.f9407c = fVar;
        this.f9408d = oVar;
        this.e = Collections.synchronizedList(new LinkedList());
        if (n.a() != null) {
            n.a().registerReceiver(cVar, new IntentFilter(com.bytedance.sdk.openadsdk.utils.b.f10286a));
        }
    }

    private void a() {
        this.f9407c.a(this.k.f9412d, this.k.e);
        this.g = this.f9407c.a();
        this.h = this.f9407c.b();
        if (this.g) {
            a("onHandleInitEvent serverBusy, retryCount = " + this.h);
            i();
            return;
        }
        b(this.f9407c.a(50, "_id"));
        a("onHandleInitEvent cacheData count = " + this.e.size());
        f();
    }

    private void a(int i, long j) {
        Message obtainMessage = this.i.obtainMessage();
        obtainMessage.what = i;
        this.i.sendMessageDelayed(obtainMessage, j);
    }

    private void a(T t) {
        q.b("ReportEvent", "execute onHandleReceivedAdEvent()  start...");
        this.f9407c.a((f<T>) t);
        if (!this.g) {
            a("onHandleReceivedAdEvent");
            this.e.add(t);
            c(this.e);
            q.b("ReportEvent", "execute onHandleReceivedAdEvent() ... mIsServerBusy =" + this.g);
            if (n()) {
                q.b("ReportEvent", "execute onHandleReceivedAdEvent()  needUploadRoutine ... upload ");
                f();
            }
        }
    }

    private void a(String str) {
        q.c(f9405a, str);
    }

    private static boolean a(i iVar) {
        return iVar.f9415b == 509;
    }

    private void b() {
        this.f9407c.a(this.k.f9412d, this.k.e);
        this.g = this.f9407c.a();
        this.h = this.f9407c.b();
        if (this.g) {
            a("onHandleInitEvent serverBusy, retryCount = " + this.h);
            i();
            return;
        }
        b(this.f9407c.a(50, "_id"));
        c(this.e);
        a("onHandleInitEvent cacheData count = " + this.e.size());
        f();
    }

    private void b(List<T> list) {
        if (list != null) {
            try {
                if (list.size() != 0) {
                    HashSet hashSet = new HashSet();
                    for (T t : this.e) {
                        hashSet.add(t.b());
                    }
                    for (T t2 : list) {
                        if (!hashSet.contains(t2.b())) {
                            this.e.add(t2);
                        }
                    }
                    return;
                }
            } catch (Exception e) {
                return;
            }
        }
        a("reloadCacheList adEventList is empty======");
    }

    private static boolean b(i iVar) {
        return iVar.f9417d;
    }

    private void c() {
        if (!this.j.a()) {
            a(4, this.k.f9411c);
            a("onHandleServerBusyRetryEvent, no net");
            return;
        }
        List<T> a2 = this.f9407c.a(50, "_id");
        if (com.bytedance.sdk.openadsdk.utils.o.a(a2)) {
            a("onHandleServerBusyRetryEvent, empty list start routine");
            o();
            k();
            return;
        }
        i a3 = a(a2);
        if (a3 == null) {
            return;
        }
        if (a3.f9414a) {
            a("onHandleServerBusyRetryEvent, success");
            h();
            g();
        } else if (a(a3)) {
            int i = this.h + 1;
            this.h = i;
            this.f9407c.a(i);
            this.f9407c.a(a2, this.k.f9412d, this.k.e);
            i();
            a("onHandleServerBusyRetryEvent, serverbusy, count = " + this.h);
        } else if (b(a3)) {
            h();
            g();
        } else {
            j();
        }
    }

    private void c(List<T> list) {
        if (list != null) {
            if (list.size() <= 75) {
                a("start and return, checkAndDeleteEvent local size:" + list.size() + "小于:75");
                return;
            }
            int size = list.size() - 50;
            a("start checkAndDeleteEvent local size,deleteCnt:" + list.size() + "," + size);
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < size; i++) {
                arrayList.add(list.get(i));
            }
            list.removeAll(arrayList);
            a("end checkAndDeleteEvent local size:" + list.size());
        }
    }

    private void d() {
        if (!this.g) {
            a("onHandleRoutineRetryEvent");
            f();
        }
    }

    private void e() {
        if (!this.g) {
            a("onHandleRoutineUploadEvent");
            f();
        }
    }

    private void f() {
        q.c("ReportEvent", "execute doRoutineUpload ... start ");
        this.i.removeMessages(3);
        this.i.removeMessages(2);
        this.i.removeMessages(6);
        q.c("ReportEvent", "execute doRoutineUpload ... ListUtils.isEmpty(mCacheList) :" + com.bytedance.sdk.openadsdk.utils.o.a(this.e));
        if (com.bytedance.sdk.openadsdk.utils.o.a(this.e)) {
            this.f = System.currentTimeMillis();
            k();
        } else if (!this.j.a()) {
            q.c("ReportEvent", "execute doRoutineUpload ...no network, wait retry ");
            j();
        } else {
            i a2 = a(this.e);
            if (a2 == null) {
                return;
            }
            if (a2.f9414a) {
                q.c("ReportEvent", "doRoutineUpload success");
                h();
                g();
            } else if (a(a2)) {
                l();
            } else if (b(a2)) {
                h();
                g();
            } else if (!this.g) {
                j();
            }
        }
    }

    private void g() {
        this.f = System.currentTimeMillis();
        o();
        k();
    }

    private void h() {
        this.f9407c.a(this.e);
        this.e.clear();
    }

    private void i() {
        a(4, m());
    }

    private void j() {
        a(3, this.k.f9411c);
    }

    private void k() {
        a(2, this.k.f9410b);
    }

    private void l() {
        this.g = true;
        this.f9407c.a(true);
        this.e.clear();
        this.i.removeMessages(3);
        this.i.removeMessages(2);
        i();
    }

    private long m() {
        return ((this.h % 3) + 1) * this.k.f;
    }

    private boolean n() {
        if (!this.g) {
            return this.e.size() >= this.k.f9409a || System.currentTimeMillis() - this.f >= this.k.f9410b;
        }
        return false;
    }

    private void o() {
        this.g = false;
        this.f9407c.a(false);
        this.h = 0;
        this.f9407c.a(0);
        this.i.removeMessages(4);
    }

    public i a(List<T> list) {
        if (this.f9408d == null) {
            n.f();
        }
        o<T> oVar = this.f9408d;
        if (oVar == null) {
            return null;
        }
        return oVar.a(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 1:
                a((h<T>) ((j) message.obj));
                return true;
            case 2:
                e();
                return true;
            case 3:
                d();
                return true;
            case 4:
                c();
                return true;
            case 5:
                a();
                return true;
            case 6:
                b();
                return true;
            default:
                return true;
        }
    }

    @Override // android.os.HandlerThread
    protected void onLooperPrepared() {
        this.f = System.currentTimeMillis();
        this.i = new Handler(getLooper(), this);
    }
}
