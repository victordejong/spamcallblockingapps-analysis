package com.bytedance.sdk.openadsdk.core.widget;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final a f9333a;

    /* renamed from: d  reason: collision with root package name */
    private float f9336d;
    private float e;
    private int f;
    private int g;
    private boolean k;

    /* renamed from: b  reason: collision with root package name */
    private boolean f9334b = false;

    /* renamed from: c  reason: collision with root package name */
    private boolean f9335c = false;
    private boolean h = true;
    private boolean i = false;
    private final View.OnTouchListener j = new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.d.1
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (d.this.f9333a.m()) {
                return d.this.f9334b || !d.this.f9335c;
            }
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int action = motionEvent.getAction();
            if (action == 0) {
                d dVar = d.this;
                dVar.k = dVar.a(motionEvent);
                d.this.f9336d = x;
                d.this.e = y;
                d.this.f = (int) x;
                d.this.g = (int) y;
                d.this.h = true;
                if (d.this.f9333a != null && d.this.f9335c && !d.this.f9334b) {
                    d.this.f9333a.a(view, true);
                }
            } else if (action == 1) {
                if (Math.abs(x - d.this.f) > 20.0f || Math.abs(y - d.this.g) > 20.0f) {
                    d.this.h = false;
                }
                if (!d.this.f9334b) {
                    d.this.h = true;
                }
                d.this.i = false;
                d.this.f9336d = BitmapDescriptorFactory.HUE_RED;
                d.this.e = BitmapDescriptorFactory.HUE_RED;
                d.this.f = 0;
                if (d.this.f9333a != null) {
                    d.this.f9333a.a(view, d.this.h);
                }
                d.this.k = false;
            } else if (action != 2) {
                if (action == 3) {
                    d.this.k = false;
                }
            } else if (d.this.f9334b && !d.this.k) {
                float f = d.this.f9336d;
                float f2 = d.this.e;
                float abs = Math.abs(x - f);
                float abs2 = Math.abs(y - f2);
                if (!d.this.i) {
                    if (abs <= 20.0f && abs2 <= 20.0f) {
                        return true;
                    }
                    d.this.i = true;
                }
                if (d.this.f9333a != null) {
                    d.this.f9333a.l();
                }
                d.this.f9336d = x;
                d.this.e = y;
            }
            return d.this.f9334b || !d.this.f9335c;
        }
    };

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/d$a.class */
    public interface a {
        void a(View view, boolean z);

        void l();

        boolean m();
    }

    public d(a aVar) {
        this.f9333a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 0) {
            return false;
        }
        int c2 = ag.c(n.a().getApplicationContext());
        int d2 = ag.d(n.a().getApplicationContext());
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        float f = c2;
        if (rawX <= f * 0.01f || rawX >= f * 0.99f) {
            return true;
        }
        float f2 = d2;
        return rawY <= 0.01f * f2 || rawY >= f2 * 0.99f;
    }

    public void a(View view) {
        if (view != null) {
            view.setOnTouchListener(this.j);
        }
    }

    public void a(boolean z) {
        this.f9335c = z;
    }
}
