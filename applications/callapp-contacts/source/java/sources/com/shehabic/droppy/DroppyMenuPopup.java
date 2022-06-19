package com.shehabic.droppy;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.shehabic.droppy.p484a.AbstractC17096a;
import com.shehabic.droppy.views.DroppyMenuContainerView;
import com.shehabic.droppy.views.DroppyMenuPopupView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/DroppyMenuPopup.class */
public final class DroppyMenuPopup {

    /* renamed from: a */
    protected Context f60655a;

    /* renamed from: b */
    protected View f60656b;

    /* renamed from: c */
    protected List<AbstractC17099d> f60657c;

    /* renamed from: d */
    protected View f60658d;

    /* renamed from: e */
    protected DroppyMenuPopupView f60659e;

    /* renamed from: f */
    protected DroppyMenuContainerView f60660f;

    /* renamed from: g */
    protected AbstractC17095a f60661g;

    /* renamed from: h */
    protected int f60662h;

    /* renamed from: i */
    protected FrameLayout f60663i;

    /* renamed from: j */
    protected int f60664j;

    /* renamed from: k */
    protected int f60665k;

    /* renamed from: l */
    protected int f60666l = -1;

    /* renamed from: m */
    protected AbstractC17094b f60667m;

    /* renamed from: n */
    protected int f60668n;

    /* renamed from: o */
    protected int f60669o;

    /* renamed from: p */
    protected AbstractC17096a f60670p;

    /* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/DroppyMenuPopup$PopupViewContainer.class */
    public class PopupViewContainer extends FrameLayout {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PopupViewContainer(Context context) {
            super(context);
            DroppyMenuPopup.this = r4;
        }
    }

    /* renamed from: com.shehabic.droppy.DroppyMenuPopup$a */
    /* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/DroppyMenuPopup$a.class */
    public static final class C17093a {

        /* renamed from: a */
        protected Context f60676a;

        /* renamed from: b */
        protected View f60677b;

        /* renamed from: d */
        protected AbstractC17095a f60679d;

        /* renamed from: f */
        protected AbstractC17094b f60681f;

        /* renamed from: i */
        protected AbstractC17096a f60684i;

        /* renamed from: c */
        protected List<AbstractC17099d> f60678c = new ArrayList();

        /* renamed from: e */
        protected boolean f60680e = true;

        /* renamed from: g */
        protected int f60682g = -20;

        /* renamed from: h */
        protected int f60683h = 25;

        public C17093a(Context context, View view) {
            this.f60676a = context;
            this.f60677b = view;
        }

        /* renamed from: a */
        public final C17093a m5874a() {
            this.f60678c.add(new C17100e());
            return this;
        }

        /* renamed from: a */
        public final C17093a m5873a(AbstractC17099d abstractC17099d) {
            this.f60678c.add(abstractC17099d);
            return this;
        }

        /* renamed from: b */
        public final C17093a m5872b() {
            this.f60680e = false;
            return this;
        }

        /* renamed from: c */
        public final DroppyMenuPopup m5871c() {
            DroppyMenuPopup droppyMenuPopup = new DroppyMenuPopup(this.f60676a, this.f60677b, this.f60678c, this.f60679d, this.f60680e, -1, this.f60681f);
            droppyMenuPopup.m5877b(this.f60682g);
            droppyMenuPopup.m5882a(this.f60683h);
            droppyMenuPopup.m5880a(this.f60684i);
            return droppyMenuPopup;
        }
    }

    /* renamed from: com.shehabic.droppy.DroppyMenuPopup$b */
    /* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/DroppyMenuPopup$b.class */
    public interface AbstractC17094b {
    }

    protected DroppyMenuPopup(Context context, View view, List<AbstractC17099d> list, AbstractC17095a abstractC17095a, boolean z, int i, AbstractC17094b abstractC17094b) {
        this.f60657c = new ArrayList();
        this.f60655a = context;
        this.f60656b = view;
        this.f60657c = list;
        this.f60661g = abstractC17095a;
        this.f60662h = i;
        this.f60667m = abstractC17094b;
        if (z) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.shehabic.droppy.DroppyMenuPopup.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DroppyMenuPopup.this.m5878b();
                }
            });
        }
    }

    /* renamed from: a */
    private static Activity m5881a(Context context) {
        while (!(context instanceof Activity)) {
            if (!(context instanceof ContextWrapper)) {
                return null;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return (Activity) context;
    }

    /* renamed from: d */
    private void m5875d() {
        DroppyMenuPopupView droppyMenuPopupView = this.f60659e;
        if (droppyMenuPopupView == null) {
            if (droppyMenuPopupView != null && droppyMenuPopupView.getChildCount() > 0) {
                this.f60659e.removeAllViews();
            }
            this.f60659e = new DroppyMenuPopupView(this.f60655a);
            DroppyMenuContainerView droppyMenuContainerView = new DroppyMenuContainerView(this.f60655a);
            this.f60660f = droppyMenuContainerView;
            this.f60659e.addView(droppyMenuContainerView);
            this.f60659e.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            this.f60658d = this.f60659e;
            int i = 0;
            for (AbstractC17099d abstractC17099d : this.f60657c) {
                View mo5867a = abstractC17099d.mo5867a(this.f60655a);
                if (abstractC17099d.mo5868b()) {
                    mo5867a.setId(i);
                    if (abstractC17099d.mo5870a() == -1) {
                        abstractC17099d.mo5869a(i);
                    }
                    final int mo5870a = abstractC17099d.mo5870a();
                    mo5867a.setOnClickListener(new View.OnClickListener() { // from class: com.shehabic.droppy.DroppyMenuPopup.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            DroppyMenuPopup.this.m5876c();
                        }
                    });
                }
                this.f60660f.addView(mo5867a);
                if (abstractC17099d.mo5868b()) {
                    i++;
                }
            }
        }
        this.f60659e.measure(-2, -2);
        this.f60664j = this.f60659e.getMeasuredWidth();
        this.f60665k = this.f60659e.getMeasuredHeight();
    }

    /* renamed from: a */
    public final View m5883a() {
        return this.f60659e;
    }

    /* renamed from: a */
    public final void m5882a(int i) {
        this.f60669o = i;
    }

    /* renamed from: a */
    protected final void m5880a(AbstractC17096a abstractC17096a) {
        this.f60670p = abstractC17096a;
    }

    /* renamed from: a */
    public final void m5879a(boolean z) {
        View view;
        if (this.f60670p != null || (view = this.f60658d) == null || this.f60663i == null || view.getParent() == null || this.f60663i.getParent() == null) {
            return;
        }
        ((ViewGroup) this.f60658d.getParent()).removeView(this.f60658d);
        ((ViewGroup) this.f60663i.getParent()).removeView(this.f60663i);
        if (z || this.f60667m == null) {
            return;
        }
        this.f60667m = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0264 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5878b() {
        /*
            Method dump skipped, instructions count: 690
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shehabic.droppy.DroppyMenuPopup.m5878b():void");
    }

    /* renamed from: b */
    public final void m5877b(int i) {
        this.f60668n = i;
    }

    /* renamed from: c */
    protected final void m5876c() {
        if (this.f60661g != null) {
            m5879a(true);
        }
    }
}
