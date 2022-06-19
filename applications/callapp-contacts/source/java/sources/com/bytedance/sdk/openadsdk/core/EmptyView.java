package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.p151b.AbstractView$OnClickListenerC4497c;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5473o;
import com.bytedance.sdk.openadsdk.utils.HandlerC5446ah;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/EmptyView.class */
public class EmptyView extends View implements HandlerC5446ah.AbstractC5447a {

    /* renamed from: a */
    private boolean f16261a;

    /* renamed from: b */
    private boolean f16262b;

    /* renamed from: c */
    private AbstractC4461a f16263c;

    /* renamed from: d */
    private View f16264d;

    /* renamed from: e */
    private List<View> f16265e;

    /* renamed from: f */
    private List<View> f16266f;

    /* renamed from: g */
    private boolean f16267g;

    /* renamed from: h */
    private int f16268h;

    /* renamed from: i */
    private final Handler f16269i = new HandlerC5446ah(Looper.getMainLooper(), this);

    /* renamed from: j */
    private final AtomicBoolean f16270j = new AtomicBoolean(true);

    /* renamed from: com.bytedance.sdk.openadsdk.core.EmptyView$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/EmptyView$a.class */
    public interface AbstractC4461a {
        /* renamed from: a */
        void mo34692a();

        /* renamed from: a */
        void mo34691a(View view);

        /* renamed from: a */
        void mo34690a(boolean z);

        /* renamed from: b */
        void mo34689b();
    }

    public EmptyView(Context context, View view) {
        super(C4600n.m34815a());
        this.f16264d = view;
        setLayoutParams(new ViewGroup.LayoutParams(0, 0));
    }

    /* renamed from: b */
    private void m35516b() {
        AbstractC4461a abstractC4461a;
        if (!this.f16270j.getAndSet(false) || (abstractC4461a = this.f16263c) == null) {
            return;
        }
        abstractC4461a.mo34692a();
    }

    /* renamed from: c */
    private void m35515c() {
        AbstractC4461a abstractC4461a;
        if (this.f16270j.getAndSet(true) || (abstractC4461a = this.f16263c) == null) {
            return;
        }
        abstractC4461a.mo34689b();
    }

    /* renamed from: d */
    private void m35514d() {
        if (!this.f16262b || this.f16261a) {
            return;
        }
        this.f16261a = true;
        this.f16269i.sendEmptyMessage(1);
    }

    /* renamed from: e */
    private void m35513e() {
        if (!this.f16261a) {
            return;
        }
        this.f16269i.removeCallbacksAndMessages(null);
        this.f16261a = false;
    }

    /* renamed from: a */
    public void m35518a() {
        m35517a(this.f16265e, null);
        m35517a(this.f16266f, null);
    }

    @Override // com.bytedance.sdk.openadsdk.utils.HandlerC5446ah.AbstractC5447a
    /* renamed from: a */
    public void mo32205a(Message message) {
        int i = message.what;
        if (i != 1) {
            if (i != 2) {
                return;
            }
            boolean m32286c = C5438af.m32286c(C4600n.m34815a(), C4600n.m34815a().getPackageName());
            if (C4801x.m33911a(this.f16264d, 20, this.f16268h) || !m32286c) {
                this.f16269i.sendEmptyMessageDelayed(2, 1000L);
            } else if (this.f16267g) {
            } else {
                setNeedCheckingShow(true);
            }
        } else if (!this.f16261a) {
        } else {
            if (!C4801x.m33911a(this.f16264d, 20, this.f16268h)) {
                this.f16269i.sendEmptyMessageDelayed(1, 1000L);
                return;
            }
            m35513e();
            this.f16269i.sendEmptyMessageDelayed(2, 1000L);
            AbstractC4461a abstractC4461a = this.f16263c;
            if (abstractC4461a == null) {
                return;
            }
            abstractC4461a.mo34691a(this.f16264d);
        }
    }

    /* renamed from: a */
    public void m35517a(List<View> list, AbstractView$OnClickListenerC4497c abstractView$OnClickListenerC4497c) {
        if (C5473o.m32124b(list)) {
            for (View view : list) {
                view.setOnClickListener(abstractView$OnClickListenerC4497c);
                view.setOnTouchListener(abstractView$OnClickListenerC4497c);
            }
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        m35514d();
        this.f16267g = false;
        m35516b();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m35513e();
        this.f16267g = true;
        m35515c();
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        m35516b();
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        m35515c();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        AbstractC4461a abstractC4461a = this.f16263c;
        if (abstractC4461a != null) {
            abstractC4461a.mo34690a(z);
        }
    }

    public void setAdType(int i) {
        this.f16268h = i;
    }

    public void setCallback(AbstractC4461a abstractC4461a) {
        this.f16263c = abstractC4461a;
    }

    public void setNeedCheckingShow(boolean z) {
        this.f16262b = z;
        if (!z && this.f16261a) {
            m35513e();
        } else if (!z || this.f16261a) {
        } else {
            m35514d();
        }
    }

    public void setRefClickViews(List<View> list) {
        this.f16265e = list;
    }

    public void setRefCreativeViews(List<View> list) {
        this.f16266f = list;
    }
}
