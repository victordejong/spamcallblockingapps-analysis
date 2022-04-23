package com.shehabic.droppy;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.shehabic.droppy.views.DroppyMenuContainerView;
import com.shehabic.droppy.views.DroppyMenuPopupView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/DroppyMenuPopup.class */
public final class DroppyMenuPopup {

    /* renamed from: a  reason: collision with root package name */
    protected Context f34981a;

    /* renamed from: b  reason: collision with root package name */
    protected View f34982b;

    /* renamed from: c  reason: collision with root package name */
    protected List<d> f34983c;

    /* renamed from: d  reason: collision with root package name */
    protected View f34984d;
    protected DroppyMenuPopupView e;
    protected DroppyMenuContainerView f;
    protected com.shehabic.droppy.a g;
    protected int h;
    protected FrameLayout i;
    protected int j;
    protected int k;
    protected int l = -1;
    protected b m;
    protected int n;
    protected int o;
    protected com.shehabic.droppy.a.a p;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/DroppyMenuPopup$PopupViewContainer.class */
    public class PopupViewContainer extends FrameLayout {
        public PopupViewContainer(Context context) {
            super(context);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/DroppyMenuPopup$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        protected Context f34990a;

        /* renamed from: b  reason: collision with root package name */
        protected View f34991b;

        /* renamed from: d  reason: collision with root package name */
        protected com.shehabic.droppy.a f34993d;
        protected b f;
        protected com.shehabic.droppy.a.a i;

        /* renamed from: c  reason: collision with root package name */
        protected List<d> f34992c = new ArrayList();
        protected boolean e = true;
        protected int g = -20;
        protected int h = 25;

        public a(Context context, View view) {
            this.f34990a = context;
            this.f34991b = view;
        }

        public final a a() {
            this.f34992c.add(new e());
            return this;
        }

        public final a a(d dVar) {
            this.f34992c.add(dVar);
            return this;
        }

        public final a b() {
            this.e = false;
            return this;
        }

        public final DroppyMenuPopup c() {
            DroppyMenuPopup droppyMenuPopup = new DroppyMenuPopup(this.f34990a, this.f34991b, this.f34992c, this.f34993d, this.e, -1, this.f);
            droppyMenuPopup.b(this.g);
            droppyMenuPopup.a(this.h);
            droppyMenuPopup.a(this.i);
            return droppyMenuPopup;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/shehabic/droppy/DroppyMenuPopup$b.class */
    public interface b {
    }

    protected DroppyMenuPopup(Context context, View view, List<d> list, com.shehabic.droppy.a aVar, boolean z, int i, b bVar) {
        this.f34983c = new ArrayList();
        this.f34981a = context;
        this.f34982b = view;
        this.f34983c = list;
        this.g = aVar;
        this.h = i;
        this.m = bVar;
        if (z) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.shehabic.droppy.DroppyMenuPopup.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DroppyMenuPopup.this.b();
                }
            });
        }
    }

    private static Activity a(Context context) {
        while (!(context instanceof Activity)) {
            if (!(context instanceof ContextWrapper)) {
                return null;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return (Activity) context;
    }

    private void d() {
        DroppyMenuPopupView droppyMenuPopupView = this.e;
        if (droppyMenuPopupView == null) {
            if (droppyMenuPopupView != null && droppyMenuPopupView.getChildCount() > 0) {
                this.e.removeAllViews();
            }
            this.e = new DroppyMenuPopupView(this.f34981a);
            DroppyMenuContainerView droppyMenuContainerView = new DroppyMenuContainerView(this.f34981a);
            this.f = droppyMenuContainerView;
            this.e.addView(droppyMenuContainerView);
            this.e.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            this.f34984d = this.e;
            int i = 0;
            for (d dVar : this.f34983c) {
                View a2 = dVar.a(this.f34981a);
                if (dVar.b()) {
                    a2.setId(i);
                    if (dVar.a() == -1) {
                        dVar.a(i);
                    }
                    final int a3 = dVar.a();
                    a2.setOnClickListener(new View.OnClickListener() { // from class: com.shehabic.droppy.DroppyMenuPopup.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            DroppyMenuPopup.this.c();
                        }
                    });
                }
                this.f.addView(a2);
                if (dVar.b()) {
                    i++;
                }
            }
        }
        this.e.measure(-2, -2);
        this.j = this.e.getMeasuredWidth();
        this.k = this.e.getMeasuredHeight();
    }

    public final View a() {
        return this.e;
    }

    public final void a(int i) {
        this.o = i;
    }

    protected final void a(com.shehabic.droppy.a.a aVar) {
        this.p = aVar;
    }

    public final void a(boolean z) {
        View view;
        if (this.p == null && (view = this.f34984d) != null && this.i != null && view.getParent() != null && this.i.getParent() != null) {
            ((ViewGroup) this.f34984d.getParent()).removeView(this.f34984d);
            ((ViewGroup) this.i.getParent()).removeView(this.i);
            if (!z && this.m != null) {
                this.m = null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0264 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b() {
        /*
            Method dump skipped, instructions count: 690
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shehabic.droppy.DroppyMenuPopup.b():void");
    }

    public final void b(int i) {
        this.n = i;
    }

    protected final void c() {
        if (this.g != null) {
            a(true);
        }
    }
}
