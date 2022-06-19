package p193e.p194a.p1159q4;

import android.content.Context;
import android.telephony.SmsManager;
import com.truecaller.log.AssertionUtil;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p1334w.p1336b.AbstractC21179b;
import p193e.p194a.p1334w.p1336b.p1338d.C21183a;
import p193e.p194a.p1334w.p1339c.C21185a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p804h.p806b.p818w0.AbstractC14630d;
import p193e.p194a.p837h0.AbstractC14835j;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p997k3.p998j.C16461b;
/* renamed from: e.a.q4.a0 */
/* loaded from: classes12-dex2jar.jar:e/a/q4/a0.class */
public final class C19620a0 {

    /* renamed from: a */
    public final C19677w f54519a;

    /* renamed from: b */
    public final AbstractC15539j2 f54520b;

    /* renamed from: c */
    public final C19655n0 f54521c;

    /* renamed from: d */
    public final C19620a0 f54522d = this;

    /* renamed from: e */
    public Provider<SmsManager> f54523e;

    /* renamed from: f */
    public Provider<C19680y> f54524f;

    /* renamed from: g */
    public Provider<C21183a> f54525g;

    /* renamed from: h */
    public Provider<C19672u> f54526h;

    /* renamed from: i */
    public Provider<AbstractC19643h0> f54527i;

    /* renamed from: j */
    public Provider<AbstractC19868j> f54528j;

    /* renamed from: k */
    public Provider<AbstractC19854f<AbstractC19643h0>> f54529k;

    /* renamed from: l */
    public Provider<C19679x> f54530l;

    /* renamed from: e.a.q4.a0$b */
    /* loaded from: classes12-dex2jar.jar:e/a/q4/a0$b.class */
    public static final class C19622b<T> implements Provider<T> {

        /* renamed from: a */
        public final C19620a0 f54531a;

        /* renamed from: b */
        public final int f54532b;

        public C19622b(C19620a0 c19620a0, int i) {
            this.f54531a = c19620a0;
            this.f54532b = i;
        }

        public T get() {
            switch (this.f54532b) {
                case 0:
                    C19620a0 c19620a0 = this.f54531a;
                    C19677w c19677w = c19620a0.f54519a;
                    Object obj = c19620a0.f54524f.get();
                    AbstractC21179b mo12470Z1 = c19620a0.f54520b.mo12470Z1();
                    Objects.requireNonNull(mo12470Z1, "Cannot return null from a non-@Nullable component method");
                    AbstractC19022f0 mo12377g0 = c19620a0.f54520b.mo12377g0();
                    Objects.requireNonNull(mo12377g0, "Cannot return null from a non-@Nullable component method");
                    AbstractC19223c0 mo12349i = c19620a0.f54520b.mo12349i();
                    Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
                    AbstractC19854f abstractC19854f = (AbstractC19854f) c19620a0.f54529k.get();
                    AbstractC19870l mo12119z1 = c19620a0.f54520b.mo12119z1();
                    Objects.requireNonNull(mo12119z1, "Cannot return null from a non-@Nullable component method");
                    AbstractC19219a0 mo11647c = c19620a0.f54520b.mo11647c();
                    Objects.requireNonNull(mo11647c, "Cannot return null from a non-@Nullable component method");
                    AbstractC20235a mo12671K0 = c19620a0.f54520b.mo12671K0();
                    Objects.requireNonNull(mo12671K0, "Cannot return null from a non-@Nullable component method");
                    AbstractC19647j0 mo12251p4 = c19620a0.f54520b.mo12251p4();
                    Objects.requireNonNull(mo12251p4, "Cannot return null from a non-@Nullable component method");
                    C19680y c19680y = (C19680y) obj;
                    AssertionUtil.isNotNull(c19677w.f54659a, new String[0]);
                    return (T) new C19679x(c19677w.f54659a, c19680y, mo12470Z1, mo12377g0, c19677w.f54660b, mo12349i, abstractC19854f, mo12119z1.mo11845d(), mo11647c, mo12671K0, mo12251p4);
                case 1:
                    C19620a0 c19620a02 = this.f54531a;
                    Objects.requireNonNull(c19620a02.f54519a);
                    return (T) new C19680y((SmsManager) c19620a02.f54523e.get());
                case 2:
                    Objects.requireNonNull(this.f54531a.f54519a);
                    T t = (T) SmsManager.getDefault();
                    Objects.requireNonNull(t, "Cannot return null from a non-@Nullable @Provides method");
                    return t;
                case 3:
                    C19620a0 c19620a03 = this.f54531a;
                    C19655n0 c19655n0 = c19620a03.f54521c;
                    AbstractC19643h0 abstractC19643h0 = (AbstractC19643h0) c19620a03.f54527i.get();
                    Objects.requireNonNull(c19655n0);
                    T t2 = (T) ((AbstractC19868j) c19620a03.f54528j.get()).mo11838a(AbstractC19643h0.class, abstractC19643h0);
                    Objects.requireNonNull(t2, "Cannot return null from a non-@Nullable @Provides method");
                    return t2;
                case 4:
                    C19620a0 c19620a04 = this.f54531a;
                    C19655n0 c19655n02 = c19620a04.f54521c;
                    Object obj2 = c19620a04.f54526h.get();
                    Context mo12335j = c19620a04.f54520b.mo12335j();
                    Objects.requireNonNull(mo12335j, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c19655n02);
                    return (T) new C19645i0((C19672u) obj2, mo12335j);
                case 5:
                    C19620a0 c19620a05 = this.f54531a;
                    C19655n0 c19655n03 = c19620a05.f54521c;
                    C21185a mo12236q6 = c19620a05.f54520b.mo12236q6();
                    Objects.requireNonNull(mo12236q6, "Cannot return null from a non-@Nullable component method");
                    AbstractC14630d mo12276n5 = c19620a05.f54520b.mo12276n5();
                    Objects.requireNonNull(mo12276n5, "Cannot return null from a non-@Nullable component method");
                    C16461b mo12572R6 = c19620a05.f54520b.mo12572R6();
                    Objects.requireNonNull(mo12572R6, "Cannot return null from a non-@Nullable component method");
                    AbstractC21179b mo12470Z12 = c19620a05.f54520b.mo12470Z1();
                    Objects.requireNonNull(mo12470Z12, "Cannot return null from a non-@Nullable component method");
                    AbstractC8621z mo12296m = c19620a05.f54520b.mo12296m();
                    Objects.requireNonNull(mo12296m, "Cannot return null from a non-@Nullable component method");
                    AbstractC14835j mo12670K2 = c19620a05.f54520b.mo12670K2();
                    Objects.requireNonNull(mo12670K2, "Cannot return null from a non-@Nullable component method");
                    AbstractC14840m mo11655T = c19620a05.f54520b.mo11655T();
                    Objects.requireNonNull(mo11655T, "Cannot return null from a non-@Nullable component method");
                    return (T) C17422k.m16082e0(c19655n03, mo12236q6, mo12276n5, mo12572R6, mo12470Z12, mo12296m, mo12670K2, mo11655T, (C21183a) c19620a05.f54525g.get());
                case 6:
                    Objects.requireNonNull(this.f54531a.f54521c);
                    return (T) C21183a.f59362a;
                case 7:
                    C19620a0 c19620a06 = this.f54531a;
                    C19655n0 c19655n04 = c19620a06.f54521c;
                    AbstractC19870l mo12119z12 = c19620a06.f54520b.mo12119z1();
                    Objects.requireNonNull(mo12119z12, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c19655n04);
                    T t3 = (T) mo12119z12.mo11844e("referral");
                    Objects.requireNonNull(t3, "Cannot return null from a non-@Nullable @Provides method");
                    return t3;
                default:
                    throw new AssertionError(this.f54532b);
            }
        }
    }

    public C19620a0(C19655n0 c19655n0, C19677w c19677w, AbstractC15539j2 abstractC15539j2, C19621a c19621a) {
        this.f54519a = c19677w;
        this.f54520b = abstractC15539j2;
        this.f54521c = c19655n0;
        Provider c19622b = new C19622b(this, 2);
        Object obj = b.c;
        this.f54523e = !(c19622b instanceof b) ? new b(c19622b) : c19622b;
        Provider c19622b2 = new C19622b(this, 1);
        this.f54524f = !(c19622b2 instanceof b) ? new b(c19622b2) : c19622b2;
        Provider c19622b3 = new C19622b(this, 6);
        this.f54525g = !(c19622b3 instanceof b) ? new b(c19622b3) : c19622b3;
        Provider c19622b4 = new C19622b(this, 5);
        this.f54526h = !(c19622b4 instanceof b) ? new b(c19622b4) : c19622b4;
        Provider c19622b5 = new C19622b(this, 4);
        this.f54527i = !(c19622b5 instanceof b) ? new b(c19622b5) : c19622b5;
        Provider c19622b6 = new C19622b(this, 7);
        this.f54528j = !(c19622b6 instanceof b) ? new b(c19622b6) : c19622b6;
        Provider c19622b7 = new C19622b(this, 3);
        this.f54529k = !(c19622b7 instanceof b) ? new b(c19622b7) : c19622b7;
        Provider c19622b8 = new C19622b(this, 0);
        this.f54530l = !(c19622b8 instanceof b) ? new b(c19622b8) : c19622b8;
    }
}
