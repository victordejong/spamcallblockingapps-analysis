package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.flurry.sdk.AbstractC3093fk;
import java.util.List;
@SuppressLint({"ViewConstructor"})
/* renamed from: com.flurry.sdk.fi */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fi.class */
public class C3087fi extends AbstractC3093fk {

    /* renamed from: b */
    public RelativeLayout f4963b;

    /* renamed from: c */
    public AbstractC3093fk.AbstractC3095b f4964c;

    /* renamed from: d */
    public int f4965d = 0;

    /* renamed from: e */
    public int f4966e = 0;

    /* renamed from: f */
    public Context f4967f;

    public C3087fi(Context context, AbstractC3093fk.AbstractC3095b bVar, List<C2921cr> list) {
        super(context);
        this.f4967f = context;
        this.f4964c = bVar;
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: a */
    public final void mo33111a() {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: a */
    public final void mo33110a(float f, float f2) {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: a */
    public final void mo33109a(int i) {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: b */
    public final void mo33108b() {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: c */
    public final void mo33106c() {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: d */
    public final void mo33105d() {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: e */
    public final void mo33104e() {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: f */
    public final void mo33103f() {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: g */
    public final void mo33102g() {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: h */
    public final void mo33101h() {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: i */
    public final void mo33100i() {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: j */
    public final void mo33099j() {
    }

    @Override // com.flurry.sdk.AbstractC3093fk
    /* renamed from: k */
    public final void mo33098k() {
        this.f4965d = 0;
        this.f4966e = 0;
    }

    @Override // android.widget.MediaController, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            show(0);
            return true;
        } else if (action == 1) {
            show(50000);
            return true;
        } else if (action != 3) {
            return true;
        } else {
            hide();
            return true;
        }
    }

    @Override // android.widget.MediaController
    public final void setAnchorView(View view) {
        super.setAnchorView(view);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.f4965d, this.f4966e);
        removeAllViews();
        Context context = this.f4967f;
        AbstractC3093fk.AbstractC3095b bVar = this.f4964c;
        if (context != null) {
            this.f4964c = bVar;
            this.f4963b = new RelativeLayout(context);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(this.f4965d, this.f4966e);
            this.f4963b.setBackgroundColor(0);
            this.f4963b.setLayoutParams(layoutParams2);
        }
        addView(this.f4963b, layoutParams);
    }

    @Override // android.widget.MediaController
    public void show() {
        if (getWindowToken() != null) {
            super.show(0);
        }
    }

    @Override // android.widget.MediaController
    public void show(int i) {
        if (getWindowToken() != null) {
            super.show(i);
        }
    }
}
