package com.bytedance.sdk.openadsdk.p164d;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.bytedance.sdk.openadsdk.core.AbstractC4635o;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.p164d.AbstractC4821j;
import com.bytedance.sdk.openadsdk.utils.C5449b;
import com.bytedance.sdk.openadsdk.utils.C5473o;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationDetails;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.d.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/h.class */
public class HandlerThreadC4815h<T extends AbstractC4821j> extends HandlerThread implements Handler.Callback {

    /* renamed from: a */
    public static String f17668a = "AdEventThread";

    /* renamed from: b */
    public static String f17669b = "ttad_bk";

    /* renamed from: c */
    public final AbstractC4813f<T> f17670c;

    /* renamed from: d */
    public AbstractC4635o<T> f17671d;

    /* renamed from: e */
    public final List<T> f17672e;

    /* renamed from: f */
    public long f17673f;

    /* renamed from: g */
    public boolean f17674g;

    /* renamed from: h */
    public int f17675h;

    /* renamed from: i */
    public Handler f17676i;

    /* renamed from: j */
    public final AbstractC4817a f17677j;

    /* renamed from: k */
    public final C4818b f17678k;

    /* renamed from: l */
    private final HandlerThreadC4815h<T>.C4819c f17679l;

    /* renamed from: com.bytedance.sdk.openadsdk.d.h$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/h$a.class */
    public interface AbstractC4817a {
        /* renamed from: a */
        boolean mo33060a();
    }

    /* renamed from: com.bytedance.sdk.openadsdk.d.h$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/h$b.class */
    public static class C4818b {

        /* renamed from: a */
        final int f17680a;

        /* renamed from: b */
        final long f17681b;

        /* renamed from: c */
        final long f17682c;

        /* renamed from: d */
        final int f17683d;

        /* renamed from: e */
        final long f17684e;

        /* renamed from: f */
        final long f17685f;

        C4818b(int i, long j, long j2, int i2, long j3, long j4) {
            this.f17680a = i;
            this.f17681b = j;
            this.f17682c = j2;
            this.f17683d = i2;
            this.f17684e = j3;
            this.f17685f = j4;
        }

        /* renamed from: a */
        public static C4818b m33828a() {
            return new C4818b(1, 120000L, FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT, 5, 172800000L, 300000L);
        }

        /* renamed from: b */
        public static C4818b m33827b() {
            return new C4818b(3, 120000L, FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT, 5, 172800000L, 300000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.d.h$c */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/h$c.class */
    public class C4819c extends BroadcastReceiver {
        private C4819c() {
            HandlerThreadC4815h.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            C5478q.m32109c(HandlerThreadC4815h.f17668a, "onReceive: timer event");
            if (HandlerThreadC4815h.this.f17676i == null) {
                return;
            }
            HandlerThreadC4815h.this.f17676i.removeMessages(6);
            Message obtainMessage = HandlerThreadC4815h.this.f17676i.obtainMessage();
            obtainMessage.what = 6;
            HandlerThreadC4815h.this.f17676i.sendMessage(obtainMessage);
        }
    }

    public HandlerThreadC4815h(AbstractC4813f<T> abstractC4813f, AbstractC4635o<T> abstractC4635o, C4818b c4818b, AbstractC4817a abstractC4817a) {
        this(f17669b, f17668a, abstractC4813f, abstractC4635o, c4818b, abstractC4817a);
    }

    public HandlerThreadC4815h(String str, String str2, AbstractC4813f<T> abstractC4813f, AbstractC4635o<T> abstractC4635o, C4818b c4818b, AbstractC4817a abstractC4817a) {
        super(str);
        HandlerThreadC4815h<T>.C4819c c4819c = new C4819c();
        this.f17679l = c4819c;
        f17668a = str2;
        this.f17678k = c4818b;
        this.f17677j = abstractC4817a;
        this.f17670c = abstractC4813f;
        this.f17671d = abstractC4635o;
        this.f17672e = Collections.synchronizedList(new LinkedList());
        if (C4600n.m34815a() != null) {
            C4600n.m34815a().registerReceiver(c4819c, new IntentFilter(C5449b.f18992a));
        }
    }

    /* renamed from: a */
    private void m33850a() {
        this.f17670c.mo33792a(this.f17678k.f17683d, this.f17678k.f17684e);
        this.f17674g = this.f17670c.mo33794a();
        this.f17675h = this.f17670c.mo33783b();
        if (this.f17674g) {
            m33846a("onHandleInitEvent serverBusy, retryCount = " + this.f17675h);
            m33835i();
            return;
        }
        m33843b(this.f17670c.mo33791a(50, "_id"));
        m33846a("onHandleInitEvent cacheData count = " + this.f17672e.size());
        m33838f();
    }

    /* renamed from: a */
    private void m33849a(int i, long j) {
        Message obtainMessage = this.f17676i.obtainMessage();
        obtainMessage.what = i;
        this.f17676i.sendMessageDelayed(obtainMessage, j);
    }

    /* renamed from: a */
    private void m33847a(T t) {
        C5478q.m32112b("ReportEvent", "execute onHandleReceivedAdEvent()  start...");
        this.f17670c.mo33789a((AbstractC4813f<T>) t);
        if (this.f17674g) {
            return;
        }
        m33846a("onHandleReceivedAdEvent");
        this.f17672e.add(t);
        m33841c(this.f17672e);
        C5478q.m32112b("ReportEvent", "execute onHandleReceivedAdEvent() ... mIsServerBusy =" + this.f17674g);
        if (!m33830n()) {
            return;
        }
        C5478q.m32112b("ReportEvent", "execute onHandleReceivedAdEvent()  needUploadRoutine ... upload ");
        m33838f();
    }

    /* renamed from: a */
    private void m33846a(String str) {
        C5478q.m32109c(f17668a, str);
    }

    /* renamed from: a */
    private static boolean m33848a(C4820i c4820i) {
        return c4820i.f17688b == 509;
    }

    /* renamed from: b */
    private void m33845b() {
        this.f17670c.mo33792a(this.f17678k.f17683d, this.f17678k.f17684e);
        this.f17674g = this.f17670c.mo33794a();
        this.f17675h = this.f17670c.mo33783b();
        if (this.f17674g) {
            m33846a("onHandleInitEvent serverBusy, retryCount = " + this.f17675h);
            m33835i();
            return;
        }
        m33843b(this.f17670c.mo33791a(50, "_id"));
        m33841c(this.f17672e);
        m33846a("onHandleInitEvent cacheData count = " + this.f17672e.size());
        m33838f();
    }

    /* renamed from: b */
    private void m33843b(List<T> list) {
        if (list != null) {
            try {
                if (list.size() != 0) {
                    HashSet hashSet = new HashSet();
                    for (T t : this.f17672e) {
                        hashSet.add(t.mo33496b());
                    }
                    for (T t2 : list) {
                        if (!hashSet.contains(t2.mo33496b())) {
                            this.f17672e.add(t2);
                        }
                    }
                    return;
                }
            } catch (Exception e) {
                return;
            }
        }
        m33846a("reloadCacheList adEventList is empty======");
    }

    /* renamed from: b */
    private static boolean m33844b(C4820i c4820i) {
        return c4820i.f17690d;
    }

    /* renamed from: c */
    private void m33842c() {
        if (!this.f17677j.mo33060a()) {
            m33849a(4, this.f17678k.f17682c);
            m33846a("onHandleServerBusyRetryEvent, no net");
            return;
        }
        List<T> mo33791a = this.f17670c.mo33791a(50, "_id");
        if (C5473o.m32125a(mo33791a)) {
            m33846a("onHandleServerBusyRetryEvent, empty list start routine");
            m33829o();
            m33833k();
            return;
        }
        C4820i mo33777a = mo33777a(mo33791a);
        if (mo33777a == null) {
            return;
        }
        if (mo33777a.f17687a) {
            m33846a("onHandleServerBusyRetryEvent, success");
            m33836h();
            m33837g();
        } else if (!m33848a(mo33777a)) {
            if (!m33844b(mo33777a)) {
                m33834j();
                return;
            }
            m33836h();
            m33837g();
        } else {
            int i = this.f17675h + 1;
            this.f17675h = i;
            this.f17670c.mo33793a(i);
            this.f17670c.mo33785a(mo33791a, this.f17678k.f17683d, this.f17678k.f17684e);
            m33835i();
            m33846a("onHandleServerBusyRetryEvent, serverbusy, count = " + this.f17675h);
        }
    }

    /* renamed from: c */
    private void m33841c(List<T> list) {
        if (list == null) {
            return;
        }
        if (list.size() <= 75) {
            m33846a("start and return, checkAndDeleteEvent local size:" + list.size() + "小于:75");
            return;
        }
        int size = list.size() - 50;
        m33846a("start checkAndDeleteEvent local size,deleteCnt:" + list.size() + "," + size);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            arrayList.add(list.get(i));
        }
        list.removeAll(arrayList);
        m33846a("end checkAndDeleteEvent local size:" + list.size());
    }

    /* renamed from: d */
    private void m33840d() {
        if (this.f17674g) {
            return;
        }
        m33846a("onHandleRoutineRetryEvent");
        m33838f();
    }

    /* renamed from: e */
    private void m33839e() {
        if (this.f17674g) {
            return;
        }
        m33846a("onHandleRoutineUploadEvent");
        m33838f();
    }

    /* renamed from: f */
    private void m33838f() {
        C5478q.m32109c("ReportEvent", "execute doRoutineUpload ... start ");
        this.f17676i.removeMessages(3);
        this.f17676i.removeMessages(2);
        this.f17676i.removeMessages(6);
        C5478q.m32109c("ReportEvent", "execute doRoutineUpload ... ListUtils.isEmpty(mCacheList) :" + C5473o.m32125a(this.f17672e));
        if (C5473o.m32125a(this.f17672e)) {
            this.f17673f = System.currentTimeMillis();
            m33833k();
        } else if (!this.f17677j.mo33060a()) {
            C5478q.m32109c("ReportEvent", "execute doRoutineUpload ...no network, wait retry ");
            m33834j();
        } else {
            C4820i mo33777a = mo33777a(this.f17672e);
            if (mo33777a == null) {
                return;
            }
            if (mo33777a.f17687a) {
                C5478q.m32109c("ReportEvent", "doRoutineUpload success");
                m33836h();
                m33837g();
            } else if (m33848a(mo33777a)) {
                m33832l();
            } else if (m33844b(mo33777a)) {
                m33836h();
                m33837g();
            } else if (this.f17674g) {
            } else {
                m33834j();
            }
        }
    }

    /* renamed from: g */
    private void m33837g() {
        this.f17673f = System.currentTimeMillis();
        m33829o();
        m33833k();
    }

    /* renamed from: h */
    private void m33836h() {
        this.f17670c.mo33786a(this.f17672e);
        this.f17672e.clear();
    }

    /* renamed from: i */
    private void m33835i() {
        m33849a(4, m33831m());
    }

    /* renamed from: j */
    private void m33834j() {
        m33849a(3, this.f17678k.f17682c);
    }

    /* renamed from: k */
    private void m33833k() {
        m33849a(2, this.f17678k.f17681b);
    }

    /* renamed from: l */
    private void m33832l() {
        this.f17674g = true;
        this.f17670c.mo33784a(true);
        this.f17672e.clear();
        this.f17676i.removeMessages(3);
        this.f17676i.removeMessages(2);
        m33835i();
    }

    /* renamed from: m */
    private long m33831m() {
        return ((this.f17675h % 3) + 1) * this.f17678k.f17685f;
    }

    /* renamed from: n */
    private boolean m33830n() {
        if (!this.f17674g) {
            return this.f17672e.size() >= this.f17678k.f17680a || System.currentTimeMillis() - this.f17673f >= this.f17678k.f17681b;
        }
        return false;
    }

    /* renamed from: o */
    private void m33829o() {
        this.f17674g = false;
        this.f17670c.mo33784a(false);
        this.f17675h = 0;
        this.f17670c.mo33793a(0);
        this.f17676i.removeMessages(4);
    }

    /* renamed from: a */
    public C4820i mo33777a(List<T> list) {
        if (this.f17671d == null) {
            C4600n.m34807f();
        }
        AbstractC4635o<T> abstractC4635o = this.f17671d;
        if (abstractC4635o == null) {
            return null;
        }
        return abstractC4635o.mo34668a(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 1:
                m33847a((HandlerThreadC4815h<T>) ((AbstractC4821j) message.obj));
                return true;
            case 2:
                m33839e();
                return true;
            case 3:
                m33840d();
                return true;
            case 4:
                m33842c();
                return true;
            case 5:
                m33850a();
                return true;
            case 6:
                m33845b();
                return true;
            default:
                return true;
        }
    }

    @Override // android.os.HandlerThread
    protected void onLooperPrepared() {
        this.f17673f = System.currentTimeMillis();
        this.f17676i = new Handler(getLooper(), this);
    }
}
