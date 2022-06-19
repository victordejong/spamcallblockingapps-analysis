package com.bytedance.sdk.openadsdk.core.widget;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.bytedance.sdk.openadsdk.core.widget.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/d.class */
public class C4778d {

    /* renamed from: a */
    private final AbstractC4780a f17557a;

    /* renamed from: d */
    private float f17560d;

    /* renamed from: e */
    private float f17561e;

    /* renamed from: f */
    private int f17562f;

    /* renamed from: g */
    private int f17563g;

    /* renamed from: k */
    private boolean f17567k;

    /* renamed from: b */
    private boolean f17558b = false;

    /* renamed from: c */
    private boolean f17559c = false;

    /* renamed from: h */
    private boolean f17564h = true;

    /* renamed from: i */
    private boolean f17565i = false;

    /* renamed from: j */
    private final View.OnTouchListener f17566j = new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.d.1
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (C4778d.this.f17557a.mo34009m()) {
                return C4778d.this.f17558b || !C4778d.this.f17559c;
            }
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int action = motionEvent.getAction();
            if (action == 0) {
                C4778d c4778d = C4778d.this;
                c4778d.f17567k = c4778d.m34032a(motionEvent);
                C4778d.this.f17560d = x;
                C4778d.this.f17561e = y;
                C4778d.this.f17562f = (int) x;
                C4778d.this.f17563g = (int) y;
                C4778d.this.f17564h = true;
                if (C4778d.this.f17557a != null && C4778d.this.f17559c && !C4778d.this.f17558b) {
                    C4778d.this.f17557a.mo34011a(view, true);
                }
            } else if (action == 1) {
                if (Math.abs(x - C4778d.this.f17562f) > 20.0f || Math.abs(y - C4778d.this.f17563g) > 20.0f) {
                    C4778d.this.f17564h = false;
                }
                if (!C4778d.this.f17558b) {
                    C4778d.this.f17564h = true;
                }
                C4778d.this.f17565i = false;
                C4778d.this.f17560d = BitmapDescriptorFactory.HUE_RED;
                C4778d.this.f17561e = BitmapDescriptorFactory.HUE_RED;
                C4778d.this.f17562f = 0;
                if (C4778d.this.f17557a != null) {
                    C4778d.this.f17557a.mo34011a(view, C4778d.this.f17564h);
                }
                C4778d.this.f17567k = false;
            } else if (action != 2) {
                if (action == 3) {
                    C4778d.this.f17567k = false;
                }
            } else if (C4778d.this.f17558b && !C4778d.this.f17567k) {
                float f = C4778d.this.f17560d;
                float f2 = C4778d.this.f17561e;
                float abs = Math.abs(x - f);
                float abs2 = Math.abs(y - f2);
                if (!C4778d.this.f17565i) {
                    if (abs <= 20.0f && abs2 <= 20.0f) {
                        return true;
                    }
                    C4778d.this.f17565i = true;
                }
                if (C4778d.this.f17557a != null) {
                    C4778d.this.f17557a.mo34010l();
                }
                C4778d.this.f17560d = x;
                C4778d.this.f17561e = y;
            }
            return C4778d.this.f17558b || !C4778d.this.f17559c;
        }
    };

    /* renamed from: com.bytedance.sdk.openadsdk.core.widget.d$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/d$a.class */
    public interface AbstractC4780a {
        /* renamed from: a */
        void mo34011a(View view, boolean z);

        /* renamed from: l */
        void mo34010l();

        /* renamed from: m */
        boolean mo34009m();
    }

    public C4778d(AbstractC4780a abstractC4780a) {
        this.f17557a = abstractC4780a;
    }

    /* renamed from: a */
    public boolean m34032a(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            int m32218c = C5443ag.m32218c(C4600n.m34815a().getApplicationContext());
            int m32215d = C5443ag.m32215d(C4600n.m34815a().getApplicationContext());
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            float f = m32218c;
            if (rawX <= f * 0.01f || rawX >= f * 0.99f) {
                return true;
            }
            float f2 = m32215d;
            return rawY <= 0.01f * f2 || rawY >= f2 * 0.99f;
        }
        return false;
    }

    /* renamed from: a */
    public void m34031a(View view) {
        if (view != null) {
            view.setOnTouchListener(this.f17566j);
        }
    }

    /* renamed from: a */
    public void m34025a(boolean z) {
        this.f17559c = z;
    }
}
