package p193e.p194a.p1365y.p1366a.p1369d;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.flashsdk.C3909R;
import e.m.a.j.a.b;
import e.m.a.j.a.c;
import e.m.a.j.a.d;
import e.m.a.j.a.h.j;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1789g0.C26232y;
import p193e.p1451f.p1452a.C22234h;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1365y.p1366a.p1369d.AbstractC21484e;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p437c.p578p.C10480a;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.y.a.d.f */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/d/f.class */
public final class C21486f extends RecyclerView.AbstractC0313c0 implements AbstractC21484e, c.a {

    /* renamed from: a */
    public c f59992a;

    /* renamed from: b */
    public String f59993b;

    /* renamed from: c */
    public final g f59994c = C19286f.m13658u(this, C3909R.C3911id.image);

    /* renamed from: d */
    public final g f59995d = C19286f.m13658u(this, C3909R.C3911id.youtubeContainer);

    /* renamed from: e */
    public final g f59996e = C19286f.m13658u(this, C3909R.C3911id.headerText);

    /* renamed from: f */
    public final Drawable f59997f;

    /* renamed from: g */
    public final C21853e f59998g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21486f(View view, C21853e c21853e) {
        super(view);
        l.e(view, "itemView");
        l.e(c21853e, "glideRequests");
        this.f59998g = c21853e;
        Context context = view.getContext();
        int i = C3909R.C3910drawable.flash_friend_popup;
        int i2 = C3909R.attr.theme_incoming_text;
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        Drawable mutate = C25440a.m3540a(context, i).mutate();
        mutate.setTint(C19291g.m13612L(context, i2));
        mutate.setTintMode(mode);
        this.f59997f = mutate;
        m9676N4().setImageDrawable(mutate);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1369d.AbstractC21484e
    /* renamed from: B1 */
    public void mo9679B1(String str) {
        l.e(str, "text");
        TextView textView = (TextView) this.f59996e.getValue();
        l.d(textView, "headerText");
        textView.setText(str);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1369d.AbstractC21484e
    /* renamed from: E2 */
    public void mo9678E2(AbstractC21484e.AbstractC21485a abstractC21485a) {
        l.e(abstractC21485a, "youtubeInitHelper");
        String str = this.f59993b;
        if (str != null) {
            int i = C3909R.C3911id.youtubeContainer;
            if (!abstractC21485a.mo9680E(i)) {
                str = null;
            }
            if (str == null) {
                return;
            }
            d dVar = new d();
            abstractC21485a.mo9681C(i, dVar);
            C26232y.m2346i("AIzaSyCd6tpLEKJi-5w6SDpTpzj6UTZpS47j7fw", "Developer key cannot be null or empty");
            dVar.d = "AIzaSyCd6tpLEKJi-5w6SDpTpzj6UTZpS47j7fw";
            dVar.e = this;
            dVar.OA();
        }
    }

    /* renamed from: G1 */
    public void m9677G1(c.c cVar, b bVar) {
        l.e(cVar, "provider");
        l.e(bVar, "youTubeInitializationResult");
        View view = this.itemView;
        l.d(view, "itemView");
        Context context = view.getContext();
        Toast.makeText(context, context.getString(C3909R.string.error_youtube_player), 0).show();
    }

    /* renamed from: N4 */
    public final ImageView m9676N4() {
        return (ImageView) this.f59994c.getValue();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1369d.AbstractC21484e
    /* renamed from: c3 */
    public void mo9675c3() {
        try {
            e.m.a.j.a.h.l lVar = this.f59992a;
            if (lVar == null) {
                return;
            }
            try {
                if (!lVar.b.c()) {
                    lVar = null;
                }
                if (lVar == null) {
                    return;
                }
                lVar.a(true);
            } catch (RemoteException e) {
                throw new j(e);
            }
        } catch (IllegalStateException e2) {
            C10480a.m26061I1(e2);
        }
    }

    /* renamed from: k1 */
    public void m9674k1(c.c cVar, c cVar2, boolean z) {
        l.e(cVar, "provider");
        l.e(cVar2, "youTubePlayer");
        this.f59992a = cVar2;
        if (!z) {
            e.m.a.j.a.h.l lVar = (e.m.a.j.a.h.l) cVar2;
            try {
                lVar.b.p1(c.b.b.name());
                String str = this.f59993b;
                if (str == null) {
                    return;
                }
                try {
                    lVar.b.t1(str, 0);
                } catch (RemoteException e) {
                    throw new j(e);
                }
            } catch (RemoteException e2) {
                throw new j(e2);
            }
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1369d.AbstractC21484e
    /* renamed from: m2 */
    public void mo9673m2(String str) {
        l.e(str, "imageUrl");
        ImageView m9676N4 = m9676N4();
        l.d(m9676N4, "image");
        m9676N4.setVisibility(0);
        C22234h mo8414k = this.f59998g.mo8414k();
        mo8414k.mo8420V(str);
        ((C21852d) mo8414k).m8968p0(this.f59997f).m8427O(m9676N4());
    }

    @Override // p193e.p194a.p1365y.p1366a.p1369d.AbstractC21484e
    /* renamed from: r1 */
    public void mo9672r1(String str, AbstractC21484e.AbstractC21485a abstractC21485a) {
        l.e(str, "videoUrl");
        l.e(abstractC21485a, "youtubeInitHelper");
        this.f59993b = str;
        ImageView m9676N4 = m9676N4();
        l.d(m9676N4, "image");
        m9676N4.setVisibility(8);
        View view = (View) this.f59995d.getValue();
        l.d(view, "youtubeContainer");
        view.setVisibility(0);
    }
}
