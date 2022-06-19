package p193e.p194a.p195a.p269n.p270j;

import com.truecaller.C2752R;
import com.truecaller.messaging.conversation.LinkPreviewType;
import com.truecaller.messaging.data.types.Entity;
import javax.inject.Inject;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.AbstractC18904l;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p195a.p231g.p234l0.C6227c;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.a.n.j.g */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/j/g.class */
public final class C7015g extends AbstractC18894c<AbstractC7035p> implements Object, AbstractC18904l {

    /* renamed from: b */
    public final AbstractC7037r f22659b;

    /* renamed from: c */
    public final AbstractC7034o f22660c;

    /* renamed from: d */
    public final AbstractC19223c0 f22661d;

    @Inject
    public C7015g(AbstractC7037r abstractC7037r, AbstractC7034o abstractC7034o, AbstractC19223c0 abstractC19223c0) {
        l.e(abstractC7037r, "model");
        l.e(abstractC7034o, "actionListener");
        l.e(abstractC19223c0, "resourceProvider");
        this.f22659b = abstractC7037r;
        this.f22660c = abstractC7034o;
        this.f22661d = abstractC19223c0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        boolean z;
        AbstractC7035p abstractC7035p = (AbstractC7035p) obj;
        l.e(abstractC7035p, "itemView");
        C6227c mo30235zc = this.f22659b.mo30235zc(i);
        if (mo30235zc != null) {
            String str = mo30235zc.f20877g;
            l.e(str, "contentType");
            String[] strArr = Entity.f13304g;
            int length = strArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z = false;
                    break;
                } else if (r.n(str, strArr[i2], true)) {
                    z = true;
                    break;
                } else {
                    i2++;
                }
            }
            String str2 = "";
            if (z) {
                String str3 = mo30235zc.f20884n;
                if (str3 == null) {
                    str3 = "";
                }
                abstractC7035p.setTitle(str3);
                String str4 = mo30235zc.f20893w;
                if (str4 != null) {
                    str2 = str4;
                }
                abstractC7035p.mo30281c(str2);
                abstractC7035p.mo30283L3(mo30235zc.f20883m, LinkPreviewType.DEFAULT);
            } else {
                String mo13768b = this.f22661d.mo13768b(C2752R.string.media_manager_web_link, new Object[0]);
                l.d(mo13768b, "resourceProvider.getStri…g.media_manager_web_link)");
                abstractC7035p.setTitle(mo13768b);
                String str5 = mo30235zc.f20888r;
                if (str5 != null) {
                    str2 = str5;
                }
                abstractC7035p.mo30281c(str2);
                abstractC7035p.mo30283L3(null, LinkPreviewType.EMPTY);
            }
            abstractC7035p.mo30282b(this.f22659b.mo30253If().contains(Long.valueOf(mo30235zc.f20876f)));
            abstractC7035p.mo30280g(mo30235zc.f20875e);
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f22659b.mo30240ph();
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        C6227c mo30235zc = this.f22659b.mo30235zc(i);
        return mo30235zc != null ? mo30235zc.f20876f : (char) 65535;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        C6227c mo30235zc = this.f22659b.mo30235zc(c18900h.f53002b);
        boolean z = false;
        if (mo30235zc != null) {
            String str = c18900h.f53001a;
            int hashCode = str.hashCode();
            if (hashCode == -1743572928) {
                z = false;
                if (str.equals("ItemEvent.CLICKED")) {
                    z = this.f22660c.mo30241o8(mo30235zc);
                }
            } else if (hashCode != -1314591573) {
                z = false;
            } else {
                z = false;
                if (str.equals("ItemEvent.LONG_CLICKED")) {
                    z = this.f22660c.mo30247R9(mo30235zc);
                }
            }
        }
        return z;
    }
}
