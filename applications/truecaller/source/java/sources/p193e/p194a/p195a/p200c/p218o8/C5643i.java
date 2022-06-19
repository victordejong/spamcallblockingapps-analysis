package p193e.p194a.p195a.p200c.p218o8;

import android.text.Editable;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.messaging.conversation.mention.MentionSpan;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.Mention;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p195a.p200c.p218o8.AbstractC5639g;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6487o;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p997k3.p1000l.p1001k.C16503a;
import q3.a.j0;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.f0.v;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.c.o8.i */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/o8/i.class */
public final class C5643i extends AbstractC20574a<AbstractC5644j> implements AbstractC5639g {

    /* renamed from: d */
    public p1 f18959d;

    /* renamed from: e */
    public AbstractC6487o f18960e;

    /* renamed from: f */
    public final List<Mention> f18961f = new ArrayList();

    /* renamed from: g */
    public int f18962g;

    /* renamed from: h */
    public String f18963h;

    /* renamed from: i */
    public int f18964i;

    /* renamed from: j */
    public final f f18965j;

    /* renamed from: k */
    public final AbstractC19870l f18966k;

    /* renamed from: l */
    public final AbstractC19854f<AbstractC6485m> f18967l;

    /* renamed from: m */
    public final a<AbstractC5639g.AbstractC5640a> f18968m;

    /* renamed from: n */
    public final AbstractC6489q f18969n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5643i(@Named("UI") f fVar, AbstractC19870l abstractC19870l, AbstractC19854f<AbstractC6485m> abstractC19854f, a<AbstractC5639g.AbstractC5640a> aVar, AbstractC6489q abstractC6489q) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC19870l, "actorsThreads");
        l.e(abstractC19854f, "imGroupManager");
        l.e(aVar, "dataSource");
        l.e(abstractC6489q, "imGroupUtil");
        this.f18965j = fVar;
        this.f18966k = abstractC19870l;
        this.f18967l = abstractC19854f;
        this.f18968m = aVar;
        this.f18969n = abstractC6489q;
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5639g
    /* renamed from: E6 */
    public void mo32832E6() {
        AbstractC5644j abstractC5644j = (AbstractC5644j) this.f57683a;
        if (abstractC5644j != null) {
            abstractC5644j.mo32441lx(false);
        }
        p1 p1Var = this.f18959d;
        if (p1Var != null) {
            d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        this.f18961f.clear();
        this.f18962g = 0;
        this.f18963h = null;
        this.f18964i = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004f A[EDGE_INSN: B:17:0x004f->B:14:0x004f ?: BREAK  , SYNTHETIC] */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.truecaller.messaging.data.types.Mention m32831Ij(int r4) {
        /*
            r3 = this;
            r0 = r3
            java.util.List<com.truecaller.messaging.data.types.Mention> r0 = r0.f18961f
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        La:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L4d
            r0 = r5
            java.lang.Object r0 = r0.next()
            r6 = r0
            r0 = r6
            com.truecaller.messaging.data.types.Mention r0 = (com.truecaller.messaging.data.types.Mention) r0
            r7 = r0
            r0 = r7
            int r0 = r0.getOffset()
            r1 = r4
            if (r0 > r1) goto L42
            r0 = r7
            int r0 = r0.getOffset()
            r8 = r0
            r0 = r7
            int r0 = r0.getLength()
            r1 = r8
            int r0 = r0 + r1
            r1 = r4
            if (r0 <= r1) goto L42
            r0 = 1
            r8 = r0
            goto L45
        L42:
            r0 = 0
            r8 = r0
        L45:
            r0 = r8
            if (r0 == 0) goto La
            goto L4f
        L4d:
            r0 = 0
            r6 = r0
        L4f:
            r0 = r6
            com.truecaller.messaging.data.types.Mention r0 = (com.truecaller.messaging.data.types.Mention) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p218o8.C5643i.m32831Ij(int):com.truecaller.messaging.data.types.Mention");
    }

    /* renamed from: Jj */
    public final boolean m32830Jj() {
        ImGroupInfo mo32836h = ((AbstractC5639g.AbstractC5640a) this.f18968m.get()).mo32836h();
        return (mo32836h != null ? mo32836h.f13319a : null) != null;
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5639g
    /* renamed from: Ti */
    public Mention[] mo32829Ti() {
        Mention[] mentionArr;
        if (mo32823gj()) {
            Object[] array = this.f18961f.toArray(new Mention[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            mentionArr = (Mention[]) array;
        } else {
            mentionArr = new Mention[0];
        }
        return mentionArr;
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5639g
    /* renamed from: V1 */
    public void mo32828V1(Editable editable) {
        MentionSpan[] mentionSpanArr;
        AbstractC5644j abstractC5644j;
        l.e(editable, "editable");
        if (!m32830Jj()) {
            return;
        }
        for (MentionSpan mentionSpan : (MentionSpan[]) editable.getSpans(0, editable.length(), MentionSpan.class)) {
            int spanStart = editable.getSpanStart(mentionSpan);
            if (editable.getSpanEnd(mentionSpan) - spanStart != mentionSpan.f13099b - mentionSpan.f13098a) {
                editable.removeSpan(mentionSpan);
                Mention m32831Ij = m32831Ij(spanStart + 1);
                if (m32831Ij != null && (abstractC5644j = (AbstractC5644j) this.f57683a) != null) {
                    abstractC5644j.mo32540Hx(m32831Ij.getOffset() - 1, m32831Ij.getLength() + m32831Ij.getOffset());
                }
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5639g
    /* renamed from: W5 */
    public void mo32827W5(int i, int i2) {
        if (mo32823gj()) {
            ArrayList<Mention> arrayList = new ArrayList();
            for (Mention mention : this.f18961f) {
                int offset = mention.getOffset();
                if (i <= offset && i2 >= offset) {
                    arrayList.add(mention);
                }
            }
            for (Mention mention2 : arrayList) {
                this.f18961f.remove(mention2);
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5639g
    /* renamed from: W7 */
    public void mo32826W7(String str, int i, boolean z) {
        String str2;
        String str3;
        Mention m32831Ij;
        l.e(str, "text");
        if (!m32830Jj() || !z) {
            return;
        }
        p1 p1Var = this.f18959d;
        boolean z2 = true;
        if (p1Var != null) {
            d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        boolean z3 = str.length() < this.f18962g;
        this.f18962g = str.length();
        this.f18964i = i;
        ImGroupInfo mo32836h = ((AbstractC5639g.AbstractC5640a) this.f18968m.get()).mo32836h();
        if (mo32836h == null || (str2 = mo32836h.f13319a) == null) {
            return;
        }
        int K = v.K(str, StringConstant.f9511AT, i - 1, false, 4);
        if (K == -1 || i < K) {
            z2 = false;
        }
        if (z2) {
            if (K < i) {
                str3 = str.substring(K + 1, i);
                l.d(str3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            } else {
                str3 = "";
            }
            if (z3 && (m32831Ij = m32831Ij(i)) != null) {
                this.f18961f.remove(m32831Ij);
                AbstractC5644j abstractC5644j = (AbstractC5644j) this.f57683a;
                if (abstractC5644j != null) {
                    abstractC5644j.mo32446ko(K);
                }
                AbstractC5644j abstractC5644j2 = (AbstractC5644j) this.f57683a;
                if (abstractC5644j2 == null) {
                    return;
                }
                abstractC5644j2.mo32441lx(false);
                return;
            }
            this.f18959d = d.w2(this, (f) null, (j0) null, new C5641h(this, str2, str3, null), 3, (Object) null);
        } else {
            AbstractC5644j abstractC5644j3 = (AbstractC5644j) this.f57683a;
            if (abstractC5644j3 != null) {
                abstractC5644j3.mo32441lx(false);
            }
        }
        String str4 = this.f18963h;
        String str5 = "";
        if (str4 != null) {
            str5 = str4;
        }
        int min = Math.min(str.length(), str5.length());
        int i2 = 0;
        while (i2 < min && str.charAt(i2) == str5.charAt(i2)) {
            i2++;
        }
        int length = str.length();
        int length2 = str5.length();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Mention mention : this.f18961f) {
            if (mention.getOffset() >= i2) {
                arrayList2.add(new Mention(mention.getId(), mention.getImId(), mention.getOffset() + (length - length2), mention.getLength(), mention.getPrivateName(), mention.getPublicName()));
                arrayList.add(mention);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.f18961f.remove((Mention) it.next());
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            this.f18961f.add((Mention) it2.next());
        }
        this.f18963h = str;
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        AbstractC6487o abstractC6487o = this.f18960e;
        if (abstractC6487o != null) {
            abstractC6487o.close();
        }
        this.f18960e = null;
        super.mo9806c();
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5633b
    /* renamed from: f */
    public AbstractC6487o mo32825f() {
        return this.f18960e;
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5639g
    /* renamed from: ff */
    public void mo32824ff(int i, int i2, String str) {
        l.e(str, "text");
        if (!m32830Jj() || i != i2) {
            return;
        }
        Mention m32831Ij = m32831Ij(i);
        if (m32831Ij != null) {
            int offset = m32831Ij.getOffset() - 1;
            AbstractC5644j abstractC5644j = (AbstractC5644j) this.f57683a;
            i = offset;
            if (abstractC5644j != null) {
                abstractC5644j.mo32543Gl(offset);
                i = offset;
            }
        }
        if (this.f18964i == i) {
            return;
        }
        mo32826W7(str, i, true);
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5639g
    /* renamed from: gj */
    public boolean mo32823gj() {
        boolean z = true;
        if (!m32830Jj() || !(!this.f18961f.isEmpty())) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5632a
    /* renamed from: kb */
    public void mo32822kb(C16503a c16503a) {
        l.e(c16503a, "participant");
        String str = c16503a.f46401e;
        if (str == null) {
            str = c16503a.f46402f;
        }
        if (str == null) {
            str = this.f18969n.mo30871d(c16503a.f46397a);
        }
        String m8702I1 = C22128a.m8702I1('@', str);
        AbstractC5644j abstractC5644j = (AbstractC5644j) this.f57683a;
        if (abstractC5644j != null) {
            int mo32454iu = abstractC5644j.mo32454iu(m8702I1);
            if (mo32454iu != -1) {
                List<Mention> list = this.f18961f;
                String str2 = c16503a.f46397a;
                int length = str.length();
                String str3 = c16503a.f46402f;
                list.add(new Mention(0L, str2, mo32454iu, length, str, str3 != null ? str3 : this.f18969n.mo30871d(c16503a.f46397a), 1, null));
            }
            abstractC5644j.mo32441lx(false);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5639g
    /* renamed from: p4 */
    public void mo32821p4(Mention[] mentionArr, String str) {
        l.e(mentionArr, "mentions");
        l.e(str, "text");
        if (m32830Jj()) {
            mo32832E6();
            this.f18963h = str;
            this.f18962g = str.length();
            this.f18964i = str.length();
            List<Mention> list = this.f18961f;
            i.c(list, mentionArr);
            for (Mention mention : list) {
                AbstractC5644j abstractC5644j = (AbstractC5644j) this.f57683a;
                if (abstractC5644j != null) {
                    abstractC5644j.mo32540Hx(mention.getOffset() - 1, mention.getLength() + mention.getOffset());
                }
            }
        }
    }
}
