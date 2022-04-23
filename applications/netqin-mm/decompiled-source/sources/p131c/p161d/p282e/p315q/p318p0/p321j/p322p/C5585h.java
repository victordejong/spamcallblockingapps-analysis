package p131c.p161d.p282e.p315q.p318p0.p321j.p322p;

import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.firebase.inappmessaging.display.internal.layout.FiamRelativeLayout;
import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;
import p131c.p161d.p282e.p315q.p318p0.C5539f;
import p131c.p161d.p282e.p315q.p318p0.C5540g;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
import p131c.p161d.p282e.p315q.p333r0.C5842a;
import p131c.p161d.p282e.p315q.p333r0.C5864j;
/* renamed from: c.d.e.q.p0.j.p.h */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/p/h.class */
public class C5585h extends AbstractC5579c {

    /* renamed from: d */
    public FiamRelativeLayout f18610d;

    /* renamed from: e */
    public ViewGroup f18611e;

    /* renamed from: f */
    public ScrollView f18612f;

    /* renamed from: g */
    public Button f18613g;

    /* renamed from: h */
    public View f18614h;

    /* renamed from: i */
    public ImageView f18615i;

    /* renamed from: j */
    public TextView f18616j;

    /* renamed from: k */
    public TextView f18617k;

    /* renamed from: l */
    public C5864j f18618l;

    /* renamed from: m */
    public ViewTreeObserver.OnGlobalLayoutListener f18619m = new ViewTreeObserver$OnGlobalLayoutListenerC5586a();

    /* renamed from: c.d.e.q.p0.j.p.h$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/p/h$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC5586a implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC5586a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            C5585h.this.f18615i.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
    }

    public C5585h(C5560i iVar, LayoutInflater layoutInflater, AbstractC5863i iVar2) {
        super(iVar, layoutInflater, iVar2);
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: a */
    public ViewTreeObserver.OnGlobalLayoutListener mo23461a(Map<C5842a, View.OnClickListener> map, View.OnClickListener onClickListener) {
        View inflate = this.f18587c.inflate(C5540g.modal, (ViewGroup) null);
        this.f18612f = (ScrollView) inflate.findViewById(C5539f.body_scroll);
        this.f18613g = (Button) inflate.findViewById(C5539f.button);
        this.f18614h = inflate.findViewById(C5539f.collapse_button);
        this.f18615i = (ImageView) inflate.findViewById(C5539f.image_view);
        this.f18616j = (TextView) inflate.findViewById(C5539f.message_body);
        this.f18617k = (TextView) inflate.findViewById(C5539f.message_title);
        this.f18610d = (FiamRelativeLayout) inflate.findViewById(C5539f.modal_root);
        this.f18611e = (ViewGroup) inflate.findViewById(C5539f.modal_content_root);
        if (this.f18585a.m22862c().equals(MessageType.MODAL)) {
            C5864j jVar = (C5864j) this.f18585a;
            this.f18618l = jVar;
            m23463a(jVar);
            m23462a(map);
            m23465a(this.f18586b);
            m23466a(onClickListener);
            m23481a(this.f18611e, this.f18618l.m22859e());
        }
        return this.f18619m;
    }

    /* renamed from: a */
    public final void m23466a(View.OnClickListener onClickListener) {
        this.f18614h.setOnClickListener(onClickListener);
        this.f18610d.setDismissListener(onClickListener);
    }

    /* renamed from: a */
    public final void m23465a(C5560i iVar) {
        this.f18615i.setMaxHeight(iVar.m23544d());
        this.f18615i.setMaxWidth(iVar.m23541e());
    }

    /* renamed from: a */
    public final void m23463a(C5864j jVar) {
        if (jVar.mo22861b() == null || TextUtils.isEmpty(jVar.mo22861b().m22872a())) {
            this.f18615i.setVisibility(8);
        } else {
            this.f18615i.setVisibility(0);
        }
        if (jVar.m22857g() != null) {
            if (!TextUtils.isEmpty(jVar.m22857g().m22829b())) {
                this.f18617k.setVisibility(0);
                this.f18617k.setText(jVar.m22857g().m22829b());
            } else {
                this.f18617k.setVisibility(8);
            }
            if (!TextUtils.isEmpty(jVar.m22857g().m22830a())) {
                this.f18617k.setTextColor(Color.parseColor(jVar.m22857g().m22830a()));
            }
        }
        if (jVar.m22858f() == null || TextUtils.isEmpty(jVar.m22858f().m22829b())) {
            this.f18612f.setVisibility(8);
            this.f18616j.setVisibility(8);
            return;
        }
        this.f18612f.setVisibility(0);
        this.f18616j.setVisibility(0);
        this.f18616j.setTextColor(Color.parseColor(jVar.m22858f().m22830a()));
        this.f18616j.setText(jVar.m22858f().m22829b());
    }

    /* renamed from: a */
    public final void m23462a(Map<C5842a, View.OnClickListener> map) {
        C5842a d = this.f18618l.m22860d();
        if (d == null || d.m22913b() == null || TextUtils.isEmpty(d.m22913b().m22896b().m22829b())) {
            this.f18613g.setVisibility(8);
            return;
        }
        AbstractC5579c.m23479a(this.f18613g, d.m22913b());
        m23480a(this.f18613g, map.get(this.f18618l.m22860d()));
        this.f18613g.setVisibility(0);
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: b */
    public C5560i mo23460b() {
        return this.f18586b;
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: c */
    public View mo23459c() {
        return this.f18611e;
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: e */
    public ImageView mo23458e() {
        return this.f18615i;
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: f */
    public ViewGroup mo23457f() {
        return this.f18610d;
    }
}
