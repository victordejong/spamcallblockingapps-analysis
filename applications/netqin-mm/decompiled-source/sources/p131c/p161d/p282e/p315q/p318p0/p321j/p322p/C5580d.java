package p131c.p161d.p282e.p315q.p318p0.p321j.p322p;

import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.firebase.inappmessaging.display.internal.layout.BaseModalLayout;
import com.google.firebase.inappmessaging.display.internal.layout.FiamCardView;
import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;
import p131c.p161d.p282e.p315q.p318p0.C5539f;
import p131c.p161d.p282e.p315q.p318p0.C5540g;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
import p131c.p161d.p282e.p315q.p333r0.C5842a;
import p131c.p161d.p282e.p315q.p333r0.C5855f;
/* renamed from: c.d.e.q.p0.j.p.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/p/d.class */
public class C5580d extends AbstractC5579c {

    /* renamed from: d */
    public FiamCardView f18588d;

    /* renamed from: e */
    public BaseModalLayout f18589e;

    /* renamed from: f */
    public ScrollView f18590f;

    /* renamed from: g */
    public Button f18591g;

    /* renamed from: h */
    public Button f18592h;

    /* renamed from: i */
    public ImageView f18593i;

    /* renamed from: j */
    public TextView f18594j;

    /* renamed from: k */
    public TextView f18595k;

    /* renamed from: l */
    public C5855f f18596l;

    /* renamed from: m */
    public View.OnClickListener f18597m;

    /* renamed from: n */
    public ViewTreeObserver.OnGlobalLayoutListener f18598n = new ViewTreeObserver$OnGlobalLayoutListenerC5581a();

    /* renamed from: c.d.e.q.p0.j.p.d$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/p/d$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC5581a implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC5581a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            C5580d.this.f18593i.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
    }

    public C5580d(C5560i iVar, LayoutInflater layoutInflater, AbstractC5863i iVar2) {
        super(iVar, layoutInflater, iVar2);
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: a */
    public ViewTreeObserver.OnGlobalLayoutListener mo23461a(Map<C5842a, View.OnClickListener> map, View.OnClickListener onClickListener) {
        View inflate = this.f18587c.inflate(C5540g.card, (ViewGroup) null);
        this.f18590f = (ScrollView) inflate.findViewById(C5539f.body_scroll);
        this.f18591g = (Button) inflate.findViewById(C5539f.primary_button);
        this.f18592h = (Button) inflate.findViewById(C5539f.secondary_button);
        this.f18593i = (ImageView) inflate.findViewById(C5539f.image_view);
        this.f18594j = (TextView) inflate.findViewById(C5539f.message_body);
        this.f18595k = (TextView) inflate.findViewById(C5539f.message_title);
        this.f18588d = (FiamCardView) inflate.findViewById(C5539f.card_root);
        this.f18589e = (BaseModalLayout) inflate.findViewById(C5539f.card_content_root);
        if (this.f18585a.m22862c().equals(MessageType.CARD)) {
            C5855f fVar = (C5855f) this.f18585a;
            this.f18596l = fVar;
            m23472b(fVar);
            m23474a(this.f18596l);
            m23473a(map);
            m23476a(this.f18586b);
            m23477a(onClickListener);
            m23481a(this.f18589e, this.f18596l.m22888d());
        }
        return this.f18598n;
    }

    /* renamed from: a */
    public final void m23477a(View.OnClickListener onClickListener) {
        this.f18597m = onClickListener;
        this.f18588d.setDismissListener(onClickListener);
    }

    /* renamed from: a */
    public final void m23476a(C5560i iVar) {
        this.f18593i.setMaxHeight(iVar.m23544d());
        this.f18593i.setMaxWidth(iVar.m23541e());
    }

    /* renamed from: a */
    public final void m23474a(C5855f fVar) {
        if (fVar.m22885g() == null && fVar.m22886f() == null) {
            this.f18593i.setVisibility(8);
        } else {
            this.f18593i.setVisibility(0);
        }
    }

    /* renamed from: a */
    public final void m23473a(Map<C5842a, View.OnClickListener> map) {
        C5842a h = this.f18596l.m22884h();
        C5842a i = this.f18596l.m22883i();
        AbstractC5579c.m23479a(this.f18591g, h.m22913b());
        m23480a(this.f18591g, map.get(h));
        this.f18591g.setVisibility(0);
        if (i == null || i.m22913b() == null) {
            this.f18592h.setVisibility(8);
            return;
        }
        AbstractC5579c.m23479a(this.f18592h, i.m22913b());
        m23480a(this.f18592h, map.get(i));
        this.f18592h.setVisibility(0);
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: b */
    public C5560i mo23460b() {
        return this.f18586b;
    }

    /* renamed from: b */
    public final void m23472b(C5855f fVar) {
        this.f18595k.setText(fVar.m22882j().m22829b());
        this.f18595k.setTextColor(Color.parseColor(fVar.m22882j().m22830a()));
        if (fVar.m22887e() == null || fVar.m22887e().m22829b() == null) {
            this.f18590f.setVisibility(8);
            this.f18594j.setVisibility(8);
            return;
        }
        this.f18590f.setVisibility(0);
        this.f18594j.setVisibility(0);
        this.f18594j.setText(fVar.m22887e().m22829b());
        this.f18594j.setTextColor(Color.parseColor(fVar.m22887e().m22830a()));
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: c */
    public View mo23459c() {
        return this.f18589e;
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: d */
    public View.OnClickListener mo23471d() {
        return this.f18597m;
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: e */
    public ImageView mo23458e() {
        return this.f18593i;
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: f */
    public ViewGroup mo23457f() {
        return this.f18588d;
    }
}
