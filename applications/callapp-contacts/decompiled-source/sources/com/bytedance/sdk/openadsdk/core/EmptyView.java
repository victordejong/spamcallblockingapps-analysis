package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.b.c;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ah;
import com.bytedance.sdk.openadsdk.utils.o;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/EmptyView.class */
public class EmptyView extends View implements ah.a {

    /* renamed from: a  reason: collision with root package name */
    private boolean f8736a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f8737b;

    /* renamed from: c  reason: collision with root package name */
    private a f8738c;

    /* renamed from: d  reason: collision with root package name */
    private View f8739d;
    private List<View> e;
    private List<View> f;
    private boolean g;
    private int h;
    private final Handler i = new ah(Looper.getMainLooper(), this);
    private final AtomicBoolean j = new AtomicBoolean(true);

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/EmptyView$a.class */
    public interface a {
        void a();

        void a(View view);

        void a(boolean z);

        void b();
    }

    public EmptyView(Context context, View view) {
        super(n.a());
        this.f8739d = view;
        setLayoutParams(new ViewGroup.LayoutParams(0, 0));
    }

    private void b() {
        a aVar;
        if (this.j.getAndSet(false) && (aVar = this.f8738c) != null) {
            aVar.a();
        }
    }

    private void c() {
        a aVar;
        if (!this.j.getAndSet(true) && (aVar = this.f8738c) != null) {
            aVar.b();
        }
    }

    private void d() {
        if (this.f8737b && !this.f8736a) {
            this.f8736a = true;
            this.i.sendEmptyMessage(1);
        }
    }

    private void e() {
        if (this.f8736a) {
            this.i.removeCallbacksAndMessages(null);
            this.f8736a = false;
        }
    }

    public void a() {
        a(this.e, null);
        a(this.f, null);
    }

    @Override // com.bytedance.sdk.openadsdk.utils.ah.a
    public void a(Message message) {
        int i = message.what;
        if (i != 1) {
            if (i == 2) {
                boolean c2 = af.c(n.a(), n.a().getPackageName());
                if (x.a(this.f8739d, 20, this.h) || !c2) {
                    this.i.sendEmptyMessageDelayed(2, 1000L);
                } else if (!this.g) {
                    setNeedCheckingShow(true);
                }
            }
        } else if (!this.f8736a) {
        } else {
            if (x.a(this.f8739d, 20, this.h)) {
                e();
                this.i.sendEmptyMessageDelayed(2, 1000L);
                a aVar = this.f8738c;
                if (aVar != null) {
                    aVar.a(this.f8739d);
                    return;
                }
                return;
            }
            this.i.sendEmptyMessageDelayed(1, 1000L);
        }
    }

    public void a(List<View> list, c cVar) {
        if (o.b(list)) {
            for (View view : list) {
                view.setOnClickListener(cVar);
                view.setOnTouchListener(cVar);
            }
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        d();
        this.g = false;
        b();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e();
        this.g = true;
        c();
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        b();
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        c();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        a aVar = this.f8738c;
        if (aVar != null) {
            aVar.a(z);
        }
    }

    public void setAdType(int i) {
        this.h = i;
    }

    public void setCallback(a aVar) {
        this.f8738c = aVar;
    }

    public void setNeedCheckingShow(boolean z) {
        this.f8737b = z;
        if (!z && this.f8736a) {
            e();
        } else if (z && !this.f8736a) {
            d();
        }
    }

    public void setRefClickViews(List<View> list) {
        this.e = list;
    }

    public void setRefCreativeViews(List<View> list) {
        this.f = list;
    }
}
