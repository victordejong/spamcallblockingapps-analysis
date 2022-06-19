package com.googlecode.mp4parser.p414a.p415a;

import android.support.p008v4.media.session.PlaybackStateCompat;
import com.googlecode.mp4parser.AbstractC16294e;
import com.googlecode.mp4parser.C16292d;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p414a.AbstractC16243f;
import com.googlecode.mp4parser.p414a.AbstractC16244g;
import com.googlecode.mp4parser.p414a.C16232c;
import com.googlecode.mp4parser.p414a.C16237d;
import com.googlecode.mp4parser.p414a.p419d.AbstractC16239b;
import com.googlecode.mp4parser.p420b.AbstractC16247a;
import com.googlecode.mp4parser.p420b.p421a.C16248a;
import com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b;
import com.googlecode.mp4parser.p420b.p422b.p424b.C16274e;
import com.googlecode.mp4parser.p420b.p422b.p424b.C16275f;
import com.googlecode.mp4parser.p425c.AbstractC16287f;
import com.googlecode.mp4parser.p425c.C16282b;
import com.googlecode.mp4parser.p425c.C16283c;
import com.googlecode.mp4parser.p425c.C16288g;
import com.googlecode.mp4parser.p425c.C16289h;
import com.googlecode.mp4parser.p425c.C16290i;
import com.googlecode.mp4parser.p425c.C16291j;
import com.mp4parser.iso14496.p473a.C17043a;
import com.mp4parser.iso14496.p473a.C17044b;
import com.mp4parser.p471a.p472a.C17027a;
import com.p102b.p103a.AbstractC3512b;
import com.p102b.p103a.C3514d;
import com.p102b.p103a.C3516f;
import com.p102b.p103a.p104a.AbstractC3476b;
import com.p102b.p103a.p104a.AbstractC3487e;
import com.p102b.p103a.p104a.C3464aa;
import com.p102b.p103a.p104a.C3465ab;
import com.p102b.p103a.p104a.C3469ad;
import com.p102b.p103a.p104a.C3470ae;
import com.p102b.p103a.p104a.C3471af;
import com.p102b.p103a.p104a.C3473ag;
import com.p102b.p103a.p104a.C3474ah;
import com.p102b.p103a.p104a.C3475ai;
import com.p102b.p103a.p104a.C3485d;
import com.p102b.p103a.p104a.C3488f;
import com.p102b.p103a.p104a.C3489g;
import com.p102b.p103a.p104a.C3490h;
import com.p102b.p103a.p104a.C3491i;
import com.p102b.p103a.p104a.C3492j;
import com.p102b.p103a.p104a.C3494k;
import com.p102b.p103a.p104a.C3496m;
import com.p102b.p103a.p104a.C3497n;
import com.p102b.p103a.p104a.C3498o;
import com.p102b.p103a.p104a.C3499p;
import com.p102b.p103a.p104a.C3500q;
import com.p102b.p103a.p104a.C3501r;
import com.p102b.p103a.p104a.C3502s;
import com.p102b.p103a.p104a.C3503t;
import com.p102b.p103a.p104a.C3504u;
import com.p102b.p103a.p104a.C3507w;
import com.p102b.p103a.p104a.C3508x;
import com.p102b.p103a.p104a.C3509y;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p594a.C20985a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.googlecode.mp4parser.a.a.b */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/a/b.class */
public class C16224b {

    /* renamed from: e */
    static final /* synthetic */ boolean f57241e = true;

    /* renamed from: f */
    private static AbstractC16287f f57242f = AbstractC16287f.m7514a(C16224b.class);

    /* renamed from: a */
    Map<AbstractC16244g, C3465ab> f57243a = new HashMap();

    /* renamed from: b */
    Set<C17043a> f57244b = new HashSet();

    /* renamed from: c */
    HashMap<AbstractC16244g, List<AbstractC16243f>> f57245c = new HashMap<>();

    /* renamed from: d */
    HashMap<AbstractC16244g, long[]> f57246d = new HashMap<>();

    /* renamed from: g */
    private AbstractC16228c f57247g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.googlecode.mp4parser.a.a.b$a */
    /* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/a/b$a.class */
    public final class C16226a implements AbstractC3476b {

        /* renamed from: a */
        List<AbstractC16244g> f57249a;

        /* renamed from: b */
        List<List<AbstractC16243f>> f57250b;

        /* renamed from: c */
        AbstractC3487e f57251c;

        /* renamed from: d */
        long f57252d;

        /* JADX WARN: Type inference failed for: r0v35, types: [double] */
        /* JADX WARN: Type inference failed for: r0v50, types: [double] */
        private C16226a(C16237d c16237d, Map<AbstractC16244g, int[]> map, long j) {
            int i;
            C16224b.this = r8;
            this.f57250b = new ArrayList();
            this.f57252d = j;
            this.f57249a = c16237d.f57293b;
            ArrayList<AbstractC16244g> arrayList = new ArrayList(map.keySet());
            Collections.sort(arrayList, new Comparator<AbstractC16244g>() { // from class: com.googlecode.mp4parser.a.a.b.a.1
                @Override // java.util.Comparator
                public final /* synthetic */ int compare(AbstractC16244g abstractC16244g, AbstractC16244g abstractC16244g2) {
                    return C16282b.m7517a(abstractC16244g.mo7563m().f57325i - abstractC16244g2.mo7563m().f57325i);
                }
            });
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            for (AbstractC16244g abstractC16244g : arrayList) {
                hashMap.put(abstractC16244g, 0);
                hashMap2.put(abstractC16244g, 0);
                hashMap3.put(abstractC16244g, Double.valueOf(0.0d));
            }
            while (true) {
                AbstractC16244g abstractC16244g2 = null;
                for (AbstractC16244g abstractC16244g3 : arrayList) {
                    if (abstractC16244g2 == null || ((Double) hashMap3.get(abstractC16244g3)).doubleValue() < ((Double) hashMap3.get(abstractC16244g2)).doubleValue()) {
                        if (((Integer) hashMap.get(abstractC16244g3)).intValue() < map.get(abstractC16244g3).length) {
                            abstractC16244g2 = abstractC16244g3;
                        }
                    }
                }
                if (abstractC16244g2 != null) {
                    int intValue = ((Integer) hashMap.get(abstractC16244g2)).intValue();
                    int i2 = map.get(abstractC16244g2)[intValue];
                    int intValue2 = ((Integer) hashMap2.get(abstractC16244g2)).intValue();
                    char doubleValue = ((Double) hashMap3.get(abstractC16244g2)).doubleValue();
                    int i3 = intValue2;
                    while (true) {
                        i = intValue2 + i2;
                        if (i3 >= i) {
                            break;
                        }
                        doubleValue += abstractC16244g2.mo7565k()[i3] / abstractC16244g2.mo7563m().f57318b;
                        i3++;
                    }
                    this.f57250b.add(abstractC16244g2.mo7566j().subList(intValue2, i));
                    hashMap.put(abstractC16244g2, Integer.valueOf(intValue + 1));
                    hashMap2.put(abstractC16244g2, Integer.valueOf(i));
                    hashMap3.put(abstractC16244g2, Double.valueOf(doubleValue));
                } else {
                    return;
                }
            }
        }

        /* synthetic */ C16226a(C16224b c16224b, C16237d c16237d, Map map, long j, C16226a c16226a) {
            this(c16237d, map, j);
        }

        /* renamed from: a */
        private static boolean m7598a(long j) {
            return j + 8 < 4294967296L;
        }

        /* JADX WARN: Type inference failed for: r0v21, types: [long] */
        /* renamed from: a */
        public final long m7599a() {
            AbstractC3476b next;
            char c = 16;
            Object obj = this;
            while (true) {
                Object obj2 = obj;
                if (!(obj2 instanceof AbstractC3476b)) {
                    return c;
                }
                AbstractC3476b abstractC3476b = (AbstractC3476b) obj2;
                Iterator<AbstractC3476b> it2 = abstractC3476b.getParent().mo7491b().iterator();
                while (it2.hasNext() && obj2 != (next = it2.next())) {
                    c += next.getSize();
                }
                obj = abstractC3476b.getParent();
            }
        }

        /* JADX WARN: Type inference failed for: r0v37, types: [long] */
        /* JADX WARN: Type inference failed for: r0v42, types: [long] */
        /* JADX WARN: Type inference failed for: r0v44, types: [long] */
        @Override // com.p102b.p103a.p104a.AbstractC3476b
        public final void getBox(WritableByteChannel writableByteChannel) throws IOException {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            long size = getSize();
            if (m7598a(size)) {
                C3516f.m37835b(allocate, size);
            } else {
                C3516f.m37835b(allocate, 1L);
            }
            allocate.put(C3514d.m37853a("mdat"));
            if (m7598a(size)) {
                allocate.put(new byte[8]);
            } else {
                C3516f.m37839a(allocate, size);
            }
            allocate.rewind();
            writableByteChannel.write(allocate);
            C16224b.f57242f.mo7513a("About to write " + this.f57252d);
            char c = (char) 0;
            char c2 = 0;
            for (List<AbstractC16243f> list : this.f57250b) {
                for (AbstractC16243f abstractC16243f : list) {
                    abstractC16243f.mo7575a(writableByteChannel);
                    ?? mo7576a = c + abstractC16243f.mo7576a();
                    c = mo7576a;
                    if (mo7576a > PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
                        c = mo7576a - PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                        c2++;
                        C16224b.f57242f.mo7513a("Written " + ((long) c2) + "MB");
                    }
                }
            }
        }

        @Override // com.p102b.p103a.p104a.AbstractC3476b
        public final AbstractC3487e getParent() {
            return this.f57251c;
        }

        @Override // com.p102b.p103a.p104a.AbstractC3476b
        public final long getSize() {
            return this.f57252d + 16;
        }

        @Override // com.p102b.p103a.p104a.AbstractC3476b
        public final String getType() {
            return "mdat";
        }

        @Override // com.p102b.p103a.p104a.AbstractC3476b
        public final void parse(AbstractC16294e abstractC16294e, ByteBuffer byteBuffer, long j, AbstractC3512b abstractC3512b) throws IOException {
        }

        @Override // com.p102b.p103a.p104a.AbstractC3476b
        public final void setParent(AbstractC3487e abstractC3487e) {
            this.f57251c = abstractC3487e;
        }
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: a */
    private static long m7602a(long[] jArr) {
        char c = 0;
        for (long j : jArr) {
            c += j;
        }
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v192, types: [long] */
    /* renamed from: a */
    private C3473ag m7605a(AbstractC16244g abstractC16244g, C16237d c16237d, Map<AbstractC16244g, int[]> map) {
        C3473ag c3473ag = new C3473ag();
        C3474ah c3474ah = new C3474ah();
        AbstractC20997a m162a = C20987b.m162a(C3474ah.f13179t, c3474ah, c3474ah, true);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        c3474ah.m7520c(c3474ah.m7518i() | 1);
        AbstractC20997a m162a2 = C20987b.m162a(C3474ah.f13180u, c3474ah, c3474ah, true);
        C16297h.m7484a();
        C16297h.m7483a(m162a2);
        c3474ah.m7520c(c3474ah.m7518i() | 2);
        C16289h c16289h = abstractC16244g.mo7563m().f57321e;
        AbstractC20997a m162a3 = C20987b.m162a(C3474ah.f13176q, c3474ah, c3474ah, c16289h);
        C16297h.m7484a();
        C16297h.m7483a(m162a3);
        c3474ah.f13191g = c16289h;
        int i = abstractC16244g.mo7563m().f57326j;
        AbstractC20997a m162a4 = C20987b.m162a(C3474ah.f13174o, c3474ah, c3474ah, Integer.valueOf(i));
        C16297h.m7484a();
        C16297h.m7483a(m162a4);
        c3474ah.f13189e = i;
        Date date = abstractC16244g.mo7563m().f57320d;
        AbstractC20997a m162a5 = C20987b.m162a(C3474ah.f13170k, c3474ah, c3474ah, date);
        C16297h.m7484a();
        C16297h.m7483a(m162a5);
        c3474ah.f13185a = date;
        if (C16283c.m7515a(date) >= 4294967296L) {
            c3474ah.m7522b(1);
        }
        if (abstractC16244g.mo7568g() == null || abstractC16244g.mo7568g().isEmpty()) {
            c3474ah.m37904a((abstractC16244g.mo7570e() * m7601b(c16237d)) / abstractC16244g.mo7563m().f57318b);
        } else {
            char c = 0;
            for (C16232c c16232c : abstractC16244g.mo7568g()) {
                c += (long) c16232c.f57264b;
            }
            c3474ah.m37904a(c * abstractC16244g.mo7563m().f57318b);
        }
        double d = abstractC16244g.mo7563m().f57323g;
        AbstractC20997a m162a6 = C20987b.m162a(C3474ah.f13178s, c3474ah, c3474ah, Double.valueOf(d));
        C16297h.m7484a();
        C16297h.m7483a(m162a6);
        c3474ah.f13193i = d;
        double d2 = abstractC16244g.mo7563m().f57322f;
        AbstractC20997a m162a7 = C20987b.m162a(C3474ah.f13177r, c3474ah, c3474ah, Double.valueOf(d2));
        C16297h.m7484a();
        C16297h.m7483a(m162a7);
        c3474ah.f13192h = d2;
        int i2 = abstractC16244g.mo7563m().f57327k;
        AbstractC20997a m162a8 = C20987b.m162a(C3474ah.f13173n, c3474ah, c3474ah, Integer.valueOf(i2));
        C16297h.m7484a();
        C16297h.m7483a(m162a8);
        c3474ah.f13188d = i2;
        Date date2 = new Date();
        AbstractC20997a m162a9 = C20987b.m162a(C3474ah.f13171l, c3474ah, c3474ah, date2);
        C16297h.m7484a();
        C16297h.m7483a(m162a9);
        c3474ah.f13186b = date2;
        if (C16283c.m7515a(date2) >= 4294967296L) {
            c3474ah.m7522b(1);
        }
        long j = abstractC16244g.mo7563m().f57325i;
        AbstractC20997a m162a10 = C20987b.m162a(C3474ah.f13172m, c3474ah, c3474ah, C20985a.m169a(j));
        C16297h.m7484a();
        C16297h.m7483a(m162a10);
        c3474ah.f13187c = j;
        float f = abstractC16244g.mo7563m().f57324h;
        AbstractC20997a m162a11 = C20987b.m162a(C3474ah.f13175p, c3474ah, c3474ah, Float.valueOf(f));
        C16297h.m7484a();
        C16297h.m7483a(m162a11);
        c3474ah.f13190f = f;
        c3473ag.m7496a(c3474ah);
        c3473ag.m7496a(m7606a(abstractC16244g, c16237d));
        C3498o c3498o = new C3498o();
        c3473ag.m7496a(c3498o);
        C3499p c3499p = new C3499p();
        Date date3 = abstractC16244g.mo7563m().f57320d;
        AbstractC20997a m162a12 = C20987b.m162a(C3499p.f13283e, c3499p, c3499p, date3);
        C16297h.m7484a();
        C16297h.m7483a(m162a12);
        c3499p.f13295a = date3;
        long mo7570e = abstractC16244g.mo7570e();
        AbstractC20997a m162a13 = C20987b.m162a(C3499p.f13285g, c3499p, c3499p, C20985a.m169a(mo7570e));
        C16297h.m7484a();
        C16297h.m7483a(m162a13);
        c3499p.f13297c = mo7570e;
        long j2 = abstractC16244g.mo7563m().f57318b;
        AbstractC20997a m162a14 = C20987b.m162a(C3499p.f13284f, c3499p, c3499p, C20985a.m169a(j2));
        C16297h.m7484a();
        C16297h.m7483a(m162a14);
        c3499p.f13296b = j2;
        String str = abstractC16244g.mo7563m().f57317a;
        AbstractC20997a m162a15 = C20987b.m162a(C3499p.f13286h, c3499p, c3499p, str);
        C16297h.m7484a();
        C16297h.m7483a(m162a15);
        c3499p.f13298d = str;
        c3498o.m7496a(c3499p);
        C3496m c3496m = new C3496m();
        c3498o.m7496a(c3496m);
        String mo7562n = abstractC16244g.mo7562n();
        AbstractC20997a m162a16 = C20987b.m162a(C3496m.f13261c, c3496m, c3496m, mo7562n);
        C16297h.m7484a();
        C16297h.m7483a(m162a16);
        c3496m.f13267b = mo7562n;
        C3500q c3500q = new C3500q();
        if (abstractC16244g.mo7562n().equals("vide")) {
            c3500q.m7496a(new C3475ai());
        } else if (abstractC16244g.mo7562n().equals("soun")) {
            c3500q.m7496a(new C3464aa());
        } else if (abstractC16244g.mo7562n().equals("text")) {
            c3500q.m7496a(new C3503t());
        } else if (abstractC16244g.mo7562n().equals("subt")) {
            c3500q.m7496a(new C3469ad());
        } else if (abstractC16244g.mo7562n().equals("hint")) {
            c3500q.m7496a(new C3497n());
        } else if (abstractC16244g.mo7562n().equals("sbtl")) {
            c3500q.m7496a(new C3503t());
        }
        C3489g c3489g = new C3489g();
        C3490h c3490h = new C3490h();
        c3489g.m7496a(c3490h);
        C3488f c3488f = new C3488f();
        c3488f.m7520c(1);
        c3490h.m7496a(c3488f);
        c3500q.m7496a(c3489g);
        c3500q.m7496a(m7604a(abstractC16244g, map));
        c3498o.m7496a(c3500q);
        f57242f.mo7513a("done with trak for track_" + abstractC16244g.mo7563m().f57325i);
        return c3473ag;
    }

    /* renamed from: a */
    private static AbstractC3476b m7606a(AbstractC16244g abstractC16244g, C16237d c16237d) {
        if (abstractC16244g.mo7568g() == null || abstractC16244g.mo7568g().size() <= 0) {
            return null;
        }
        C3492j c3492j = new C3492j();
        c3492j.m7522b(0);
        ArrayList arrayList = new ArrayList();
        for (C16232c c16232c : abstractC16244g.mo7568g()) {
            arrayList.add(new C3492j.C3493a(c3492j, Math.round(c16232c.f57264b * c16237d.m7585a()), (c16232c.f57265c * abstractC16244g.mo7563m().f57318b) / c16232c.f57263a, c16232c.f57266d));
        }
        AbstractC20997a m162a = C20987b.m162a(C3492j.f13244c, c3492j, c3492j, arrayList);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        c3492j.f13246a = arrayList;
        C3491i c3491i = new C3491i();
        c3491i.m7496a(c3492j);
        return c3491i;
    }

    /* renamed from: a */
    private AbstractC3476b m7604a(AbstractC16244g abstractC16244g, Map<AbstractC16244g, int[]> map) {
        long[] mo7565k;
        char c;
        C3508x c3508x = new C3508x();
        c3508x.m7496a(abstractC16244g.mo7564l());
        ArrayList arrayList = new ArrayList();
        C3471af.C3472a c3472a = null;
        for (long j : abstractC16244g.mo7565k()) {
            if (c3472a == null || c3472a.f13152b != j) {
                c3472a = new C3471af.C3472a(1L, j);
                arrayList.add(c3472a);
            } else {
                c3472a.f13151a++;
            }
        }
        C3471af c3471af = new C3471af();
        AbstractC20997a m162a = C20987b.m162a(C3471af.f13148e, c3471af, c3471af, arrayList);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        c3471af.f13150a = arrayList;
        c3508x.m7496a(c3471af);
        List<C3485d.C3486a> mo7574a = abstractC16244g.mo7574a();
        if (mo7574a != null && !mo7574a.isEmpty()) {
            C3485d c3485d = new C3485d();
            AbstractC20997a m162a2 = C20987b.m162a(C3485d.f13236d, c3485d, c3485d, mo7574a);
            C16297h.m7484a();
            C16297h.m7483a(m162a2);
            c3485d.f13237a = mo7574a;
            c3508x.m7496a(c3485d);
        }
        long[] mo7573b = abstractC16244g.mo7573b();
        if (mo7573b != null && mo7573b.length > 0) {
            C3470ae c3470ae = new C3470ae();
            AbstractC20997a m162a3 = C20987b.m162a(C3470ae.f13142c, c3470ae, c3470ae, mo7573b);
            C16297h.m7484a();
            C16297h.m7483a(m162a3);
            c3470ae.f13144a = mo7573b;
            c3508x.m7496a(c3470ae);
        }
        if (abstractC16244g.mo7572c() != null && !abstractC16244g.mo7572c().isEmpty()) {
            C3504u c3504u = new C3504u();
            List<C3504u.C3505a> mo7572c = abstractC16244g.mo7572c();
            AbstractC20997a m162a4 = C20987b.m162a(C3504u.f13345c, c3504u, c3504u, mo7572c);
            C16297h.m7484a();
            C16297h.m7483a(m162a4);
            c3504u.f13347a = mo7572c;
            c3508x.m7496a(c3504u);
        }
        m7600b(abstractC16244g, map, c3508x);
        C3507w c3507w = new C3507w();
        long[] jArr = this.f57246d.get(abstractC16244g);
        AbstractC20997a m162a5 = C20987b.m162a(C3507w.f13352d, c3507w, c3507w, jArr);
        C16297h.m7484a();
        C16297h.m7483a(m162a5);
        c3507w.f13358a = jArr;
        c3508x.m7496a(c3507w);
        m7603a(abstractC16244g, map, c3508x);
        HashMap hashMap = new HashMap();
        Iterator<Map.Entry<AbstractC16270b, long[]>> it2 = abstractC16244g.mo7567h().entrySet().iterator();
        while (true) {
            c = 1;
            if (!it2.hasNext()) {
                break;
            }
            Map.Entry<AbstractC16270b, long[]> next = it2.next();
            String mo5963a = next.getKey().mo5963a();
            List list = (List) hashMap.get(mo5963a);
            ArrayList arrayList2 = list;
            if (list == null) {
                arrayList2 = new ArrayList();
                hashMap.put(mo5963a, arrayList2);
            }
            arrayList2.add(next.getKey());
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            C16274e c16274e = new C16274e();
            String str = (String) entry.getKey();
            AbstractC20997a m162a6 = C20987b.m162a(C16274e.f57496c, c16274e, c16274e, str);
            C16297h.m7484a();
            C16297h.m7483a(m162a6);
            c16274e.f57505a = str;
            List<AbstractC16270b> list2 = (List) entry.getValue();
            AbstractC20997a m162a7 = C20987b.m162a(C16274e.f57497d, c16274e, c16274e, list2);
            C16297h.m7484a();
            C16297h.m7483a(m162a7);
            c16274e.f57506b = list2;
            C16275f c16275f = new C16275f();
            AbstractC20997a m162a8 = C20987b.m162a(C16275f.f57508c, c16275f, c16275f, str);
            C16297h.m7484a();
            C16297h.m7483a(m162a8);
            c16275f.f57514a = str;
            C16275f.C16276a c16276a = null;
            for (int i = 0; i < abstractC16244g.mo7566j().size(); i++) {
                int i2 = 0;
                int i3 = 0;
                while (i2 < ((List) entry.getValue()).size()) {
                    if (Arrays.binarySearch(abstractC16244g.mo7567h().get((AbstractC16270b) ((List) entry.getValue()).get(i2)), i) >= 0) {
                        i3 = i2 + 1;
                    }
                    i2++;
                    c = 1;
                }
                if (c16276a == null || c16276a.f57518b != i3) {
                    c16276a = new C16275f.C16276a(c, i3);
                    c16275f.m7526b().add(c16276a);
                } else {
                    c16276a.f57517a += c;
                }
            }
            c3508x.m7496a(c16274e);
            c3508x.m7496a(c16275f);
        }
        if (abstractC16244g instanceof AbstractC16239b) {
            m7610a((AbstractC16239b) abstractC16244g, c3508x, map.get(abstractC16244g));
        }
        if (abstractC16244g.mo7571d() != null) {
            c3508x.m7496a(abstractC16244g.mo7571d());
        }
        f57242f.mo7513a("done with stbl for track_" + abstractC16244g.mo7563m().f57325i);
        return c3508x;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r0v107, types: [double] */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87 */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    /* renamed from: a */
    private C3501r m7608a(C16237d c16237d, Map<AbstractC16244g, int[]> map) {
        char c;
        char c2;
        Iterator<C16232c> it2;
        C3501r c3501r = new C3501r();
        C3502s c3502s = new C3502s();
        Date date = new Date();
        AbstractC20997a m162a = C20987b.m162a(C3502s.f13319h, c3502s, c3502s, date);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        c3502s.f13330a = date;
        if (C16283c.m7515a(date) >= 4294967296L) {
            c3502s.m7522b(1);
        }
        Date date2 = new Date();
        AbstractC20997a m162a2 = C20987b.m162a(C3502s.f13320i, c3502s, c3502s, date2);
        C16297h.m7484a();
        C16297h.m7483a(m162a2);
        c3502s.f13331b = date2;
        if (C16283c.m7515a(date2) >= 4294967296L) {
            c3502s.m7522b(1);
        }
        C16289h c16289h = c16237d.f57292a;
        AbstractC20997a m162a3 = C20987b.m162a(C3502s.f13323l, c3502s, c3502s, c16289h);
        C16297h.m7484a();
        C16297h.m7483a(m162a3);
        c3502s.f13334e = c16289h;
        long m7601b = m7601b(c16237d);
        Iterator<AbstractC16244g> it3 = c16237d.f57293b.iterator();
        ?? r0 = 0;
        while (true) {
            c = r0;
            if (!it3.hasNext()) {
                break;
            }
            AbstractC16244g next = it3.next();
            if (next.mo7568g() == null || next.mo7568g().isEmpty()) {
                c2 = (next.mo7570e() * m7601b) / next.mo7563m().f57318b;
            } else {
                char c3 = 0;
                while (next.mo7568g().iterator().hasNext()) {
                    c3 += (long) it2.next().f57264b;
                }
                c2 = (long) (m7601b * c3);
            }
            char c4 = c;
            if (c2 > c) {
                c4 = c2;
            }
            r0 = c4;
        }
        AbstractC20997a m162a4 = C20987b.m162a(C3502s.f13322k, c3502s, c3502s, C20985a.m169a(c));
        C16297h.m7484a();
        C16297h.m7483a(m162a4);
        c3502s.f13333d = c;
        if (c >= 4294967296L) {
            c3502s.m7522b(1);
        }
        AbstractC20997a m162a5 = C20987b.m162a(C3502s.f13321j, c3502s, c3502s, C20985a.m169a(m7601b));
        C16297h.m7484a();
        C16297h.m7483a(m162a5);
        c3502s.f13332c = m7601b;
        char c5 = 0;
        for (AbstractC16244g abstractC16244g : c16237d.f57293b) {
            if (c5 < abstractC16244g.mo7563m().f57325i) {
                c5 = abstractC16244g.mo7563m().f57325i;
            }
        }
        long j = c5 + 1;
        AbstractC20997a m162a6 = C20987b.m162a(C3502s.f13324m, c3502s, c3502s, C20985a.m169a(j));
        C16297h.m7484a();
        C16297h.m7483a(m162a6);
        c3502s.f13335f = j;
        c3501r.m7496a(c3502s);
        for (AbstractC16244g abstractC16244g2 : c16237d.f57293b) {
            c3501r.m7496a(m7605a(abstractC16244g2, c16237d, map));
        }
        return c3501r;
    }

    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* renamed from: a */
    private void m7610a(AbstractC16239b abstractC16239b, C3508x c3508x, int[] iArr) {
        C17044b c17044b = new C17044b();
        AbstractC20997a m162a = C20987b.m162a(C17044b.f60526f, c17044b, c17044b, "cenc");
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        c17044b.f60541d = "cenc";
        c17044b.m7520c(1);
        List<C17027a> mo7578i = abstractC16239b.mo7578i();
        AbstractC20997a m162a2 = C20987b.m162a(C17044b.f60527g, c17044b, c17044b, 8);
        C16297h.m7484a();
        C16297h.m7483a(m162a2);
        c17044b.f60538a = (short) 8;
        int size = abstractC16239b.mo7566j().size();
        AbstractC20997a m162a3 = C20987b.m162a(C17044b.f60529i, c17044b, c17044b, Integer.valueOf(size));
        C16297h.m7484a();
        C16297h.m7483a(m162a3);
        c17044b.f60540c = size;
        C17043a c17043a = new C17043a();
        C16248a c16248a = new C16248a();
        c16248a.m7520c(c16248a.m7518i() & 16777213);
        AbstractC20997a m162a4 = C20987b.m162a(AbstractC16247a.f57332e, c16248a, c16248a, mo7578i);
        C16297h.m7484a();
        C16297h.m7483a(m162a4);
        c16248a.f57341d = mo7578i;
        char a = c16248a.m7560a();
        long[] jArr = new long[iArr.length];
        int i = 0;
        int i2 = 0;
        while (i < iArr.length) {
            jArr[i] = a == 1 ? 1 : 0;
            int i3 = 0;
            char c = a;
            while (i3 < iArr[i]) {
                c += mo7578i.get(i2).m5977a();
                i3++;
                i2++;
            }
            i++;
            a = c;
        }
        c17043a.m5972a(jArr);
        c3508x.m7496a(c17044b);
        c3508x.m7496a(c17043a);
        c3508x.m7496a(c16248a);
        this.f57244b.add(c17043a);
    }

    /* JADX WARN: Type inference failed for: r0v45, types: [double] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [double] */
    /* renamed from: a */
    private void m7603a(AbstractC16244g abstractC16244g, Map<AbstractC16244g, int[]> map, C3508x c3508x) {
        int i;
        AbstractC16244g abstractC16244g2;
        if (this.f57243a.get(abstractC16244g) == null) {
            f57242f.mo7513a("Calculating chunk offsets for track_" + abstractC16244g.mo7563m().f57325i);
            ArrayList<AbstractC16244g> arrayList = new ArrayList(map.keySet());
            Collections.sort(arrayList, new Comparator<AbstractC16244g>() { // from class: com.googlecode.mp4parser.a.a.b.1
                @Override // java.util.Comparator
                public final /* synthetic */ int compare(AbstractC16244g abstractC16244g3, AbstractC16244g abstractC16244g4) {
                    return C16282b.m7517a(abstractC16244g3.mo7563m().f57325i - abstractC16244g4.mo7563m().f57325i);
                }
            });
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            for (AbstractC16244g abstractC16244g3 : arrayList) {
                hashMap.put(abstractC16244g3, 0);
                hashMap2.put(abstractC16244g3, 0);
                hashMap3.put(abstractC16244g3, Double.valueOf(0.0d));
                this.f57243a.put(abstractC16244g3, new C3465ab());
            }
            char c = 0;
            while (true) {
                AbstractC16244g abstractC16244g4 = null;
                for (AbstractC16244g abstractC16244g5 : arrayList) {
                    if (abstractC16244g4 != null) {
                        abstractC16244g2 = abstractC16244g4;
                        if (((Double) hashMap3.get(abstractC16244g5)).doubleValue() >= ((Double) hashMap3.get(abstractC16244g4)).doubleValue()) {
                            abstractC16244g4 = abstractC16244g2;
                        }
                    }
                    abstractC16244g2 = abstractC16244g4;
                    if (((Integer) hashMap.get(abstractC16244g5)).intValue() < map.get(abstractC16244g5).length) {
                        abstractC16244g2 = abstractC16244g5;
                    }
                    abstractC16244g4 = abstractC16244g2;
                }
                if (abstractC16244g4 == null) {
                    break;
                }
                C3465ab c3465ab = this.f57243a.get(abstractC16244g4);
                c3465ab.mo37895a(C16290i.m7506a(c3465ab.mo37896a(), c == 1 ? 1 : 0));
                int intValue = ((Integer) hashMap.get(abstractC16244g4)).intValue();
                int i2 = map.get(abstractC16244g4)[intValue];
                int intValue2 = ((Integer) hashMap2.get(abstractC16244g4)).intValue();
                char doubleValue = ((Double) hashMap3.get(abstractC16244g4)).doubleValue();
                long[] mo7565k = abstractC16244g4.mo7565k();
                int i3 = intValue2;
                char c2 = c;
                while (true) {
                    i = intValue2 + i2;
                    if (i3 >= i) {
                        break;
                    }
                    c2 += this.f57246d.get(abstractC16244g4)[i3];
                    doubleValue += mo7565k[i3] / abstractC16244g4.mo7563m().f57318b;
                    i3++;
                }
                hashMap.put(abstractC16244g4, Integer.valueOf(intValue + 1));
                hashMap2.put(abstractC16244g4, Integer.valueOf(i));
                hashMap3.put(abstractC16244g4, Double.valueOf(doubleValue));
                c = c2;
            }
        }
        c3508x.m7496a(this.f57243a.get(abstractC16244g));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* renamed from: a */
    private int[] m7607a(AbstractC16244g abstractC16244g) {
        long[] mo7597a = this.f57247g.mo7597a(abstractC16244g);
        int length = mo7597a.length;
        int[] iArr = new int[length];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= mo7597a.length) {
                break;
            }
            long j = mo7597a[i2];
            int length2 = mo7597a.length;
            int i3 = i2 + 1;
            iArr[i2] = C16282b.m7517a((length2 == i3 ? abstractC16244g.mo7566j().size() : mo7597a[i3] - 1) - (j - 1));
            i = i3;
        }
        if (!f57241e) {
            long size = this.f57245c.get(abstractC16244g).size();
            char c = 0;
            for (int i4 = 0; i4 < length; i4++) {
                c += iArr[i4];
            }
            if (size != c) {
                throw new AssertionError("The number of samples and the sum of all chunk lengths must be equal");
            }
        }
        return iArr;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: b */
    private static long m7601b(C16237d c16237d) {
        char c = c16237d.f57293b.iterator().next().mo7563m().f57318b;
        for (AbstractC16244g abstractC16244g : c16237d.f57293b) {
            c = C16288g.m7510a(c, abstractC16244g.mo7563m().f57318b);
        }
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: b */
    private static void m7600b(AbstractC16244g abstractC16244g, Map<AbstractC16244g, int[]> map, C3508x c3508x) {
        int[] iArr = map.get(abstractC16244g);
        C3509y c3509y = new C3509y();
        LinkedList linkedList = new LinkedList();
        AbstractC20997a m162a = C20987b.m162a(C3509y.f13362b, c3509y, c3509y, linkedList);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        c3509y.f13366a = linkedList;
        char c = 0;
        int i = 0;
        while (i < iArr.length) {
            char c2 = c;
            if (c != iArr[i]) {
                c3509y.m37862a().add(new C3509y.C3510a(i + 1, iArr[i], 1L));
                c2 = iArr[i];
            }
            i++;
            c = c2;
        }
        c3508x.m7496a(c3509y);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v123 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* renamed from: a */
    public final AbstractC3487e m7609a(C16237d c16237d) {
        char c;
        AbstractC3476b next;
        if (this.f57247g == null) {
            this.f57247g = new C16223a(2.0d);
        }
        f57242f.mo7513a("Creating movie ".concat(String.valueOf(c16237d)));
        Iterator<AbstractC16244g> it2 = c16237d.f57293b.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            AbstractC16244g next2 = it2.next();
            List<AbstractC16243f> mo7566j = next2.mo7566j();
            this.f57245c.put(next2, mo7566j);
            int size = mo7566j.size();
            long[] jArr = new long[size];
            for (int i = 0; i < size; i++) {
                jArr[i] = mo7566j.get(i).mo7576a();
            }
            this.f57246d.put(next2, jArr);
        }
        C16292d c16292d = new C16292d();
        LinkedList linkedList = new LinkedList();
        linkedList.add("mp42");
        linkedList.add("iso6");
        linkedList.add("avc1");
        linkedList.add("isom");
        c16292d.m7496a(new C3494k("iso6", 1L, linkedList));
        HashMap hashMap = new HashMap();
        for (AbstractC16244g abstractC16244g : c16237d.f57293b) {
            hashMap.put(abstractC16244g, m7607a(abstractC16244g));
        }
        C3501r m7608a = m7608a(c16237d, hashMap);
        c16292d.m7496a(m7608a);
        Iterator it3 = C16291j.m7504a((AbstractC3476b) m7608a, "trak/mdia/minf/stbl/stsz").iterator();
        ?? r0 = 0;
        while (true) {
            c = r0;
            if (!it3.hasNext()) {
                break;
            }
            C3507w c3507w = (C3507w) it3.next();
            AbstractC20997a m163a = C20987b.m163a(C3507w.f13351c, c3507w, c3507w);
            C16297h.m7484a();
            C16297h.m7483a(m163a);
            r0 = c + m7602a(c3507w.f13358a);
        }
        f57242f.mo7513a("About to create mdat");
        C16226a c16226a = new C16226a(this, c16237d, hashMap, c, null);
        c16292d.m7496a(c16226a);
        f57242f.mo7513a("mdat crated");
        long m7599a = c16226a.m7599a();
        for (C3465ab c3465ab : this.f57243a.values()) {
            long[] mo37896a = c3465ab.mo37896a();
            for (int i2 = 0; i2 < mo37896a.length; i2++) {
                mo37896a[i2] = mo37896a[i2] + m7599a;
            }
        }
        for (C17043a c17043a : this.f57244b) {
            char size2 = c17043a.getSize() + 44;
            AbstractC3487e abstractC3487e = c17043a;
            while (true) {
                C17043a c17043a2 = abstractC3487e;
                AbstractC3487e parent = c17043a2.getParent();
                Iterator<AbstractC3476b> it4 = parent.mo7491b().iterator();
                while (it4.hasNext() && (next = it4.next()) != c17043a2) {
                    size2 += next.getSize();
                }
                if (!(parent instanceof AbstractC3476b)) {
                    break;
                }
                abstractC3487e = parent;
            }
            long[] m5971b = c17043a.m5971b();
            for (int i3 = 0; i3 < m5971b.length; i3++) {
                m5971b[i3] = m5971b[i3] + size2;
            }
            c17043a.m5972a(m5971b);
        }
        return c16292d;
    }
}
