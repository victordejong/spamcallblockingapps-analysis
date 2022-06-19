package p193e.p194a.p195a.p200c.p206i;

import android.graphics.drawable.Drawable;
import com.truecaller.C2752R;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p200c.AbstractC5403j6;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.i.b */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/i/b.class */
public final class C5349b extends AbstractC5357g {

    /* renamed from: b */
    public final g f18288b = C25225a.m3978P1(new C5350a(5, this));

    /* renamed from: c */
    public final g f18289c = C25225a.m3978P1(new C5350a(4, this));

    /* renamed from: d */
    public final g f18290d = C25225a.m3978P1(new C5350a(3, this));

    /* renamed from: e */
    public final g f18291e = C25225a.m3978P1(new C5350a(0, this));

    /* renamed from: f */
    public final g f18292f = C25225a.m3978P1(new C5350a(2, this));

    /* renamed from: g */
    public final g f18293g = C25225a.m3978P1(new C5350a(1, this));

    /* renamed from: h */
    public final AbstractC5352d f18294h;

    /* renamed from: i */
    public final AbstractC19854f<AbstractC17348c> f18295i;

    /* renamed from: j */
    public final AbstractC19233h0 f18296j;

    /* renamed from: k */
    public final AbstractC18951b0 f18297k;

    /* renamed from: l */
    public final AbstractC5403j6 f18298l;

    /* renamed from: m */
    public final boolean f18299m;

    /* renamed from: e.a.a.c.i.b$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/i/b$a.class */
    public static final class C5350a extends m implements a<Drawable> {

        /* renamed from: b */
        public final /* synthetic */ int f18300b;

        /* renamed from: c */
        public final /* synthetic */ Object f18301c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5350a(int i, Object obj) {
            super(0);
            this.f18300b = i;
            this.f18301c = obj;
        }

        public final Object invoke() {
            int i = this.f18300b;
            if (i != 0) {
                if (i == 1) {
                    return ((C5349b) this.f18301c).f18296j.mo13764f(2131232516, 2130970255);
                }
                if (i == 2) {
                    return ((C5349b) this.f18301c).f18296j.mo13764f(2131232517, 2130970255);
                }
                if (i == 3) {
                    return ((C5349b) this.f18301c).f18296j.mo13764f(2131232520, 2130969966);
                }
                if (i == 4) {
                    return ((C5349b) this.f18301c).f18296j.mo13764f(2131232525, 2130970255);
                }
                if (i != 5) {
                    throw null;
                }
                return ((C5349b) this.f18301c).f18296j.mo13764f(2131232531, 2130970255);
            }
            return ((C5349b) this.f18301c).f18296j.mo13764f(2131232512, 2130969966);
        }
    }

    @Inject
    public C5349b(AbstractC5352d abstractC5352d, AbstractC19854f<AbstractC17348c> abstractC19854f, AbstractC19233h0 abstractC19233h0, AbstractC18951b0 abstractC18951b0, AbstractC5403j6 abstractC5403j6, @Named("IsFlash") boolean z) {
        l.e(abstractC5352d, "dataSource");
        l.e(abstractC19854f, "callHistoryManager");
        l.e(abstractC19233h0, "resourceProvider");
        l.e(abstractC18951b0, "dateHelper");
        l.e(abstractC5403j6, "historyMessagesResourceProvider");
        this.f18294h = abstractC5352d;
        this.f18295i = abstractC19854f;
        this.f18296j = abstractC19233h0;
        this.f18297k = abstractC18951b0;
        this.f18298l = abstractC5403j6;
        this.f18299m = z;
    }

    /* renamed from: A */
    public final Drawable m33271A() {
        return (Drawable) this.f18288b.getValue();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        String str;
        Drawable drawable;
        AbstractC5359i abstractC5359i = (AbstractC5359i) obj;
        l.e(abstractC5359i, "itemView");
        C5356f item = this.f18294h.getItem(i);
        if (item != null) {
            if (item.f18320g) {
                str = this.f18296j.mo13768b(2131888942, new Object[0]);
                l.d(str, "resourceProvider.getString(R.string.flash_text)");
            } else {
                int i2 = item.f18316c;
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (item.f18319f) {
                            AbstractC19233h0 abstractC19233h0 = this.f18296j;
                            str = abstractC19233h0.mo13768b(C2752R.string.ConversationHistoryItemIncomingAudio, abstractC19233h0.mo13768b(2131890378, new Object[0]));
                        } else {
                            str = this.f18296j.mo13768b(C2752R.string.ConversationHistoryItemIncomingCall, new Object[0]);
                        }
                    } else if (item.f18319f) {
                        AbstractC19233h0 abstractC19233h02 = this.f18296j;
                        str = abstractC19233h02.mo13768b(C2752R.string.ConversationHistoryItemMissedAudio, abstractC19233h02.mo13768b(2131890378, new Object[0]));
                    } else {
                        str = item.f18322i != 1 ? this.f18296j.mo13768b(C2752R.string.ConversationHistoryItemMissedCall, new Object[0]) : this.f18296j.mo13768b(C2752R.string.ConversationBlockedCall, new Object[0]);
                    }
                } else if (item.f18319f) {
                    AbstractC19233h0 abstractC19233h03 = this.f18296j;
                    str = abstractC19233h03.mo13768b(C2752R.string.ConversationHistoryItemOutgoingAudio, abstractC19233h03.mo13768b(2131890378, new Object[0]));
                } else {
                    str = this.f18296j.mo13768b(C2752R.string.ConversationHistoryItemOutgoingCall, new Object[0]);
                }
                l.d(str, "when (type) {\n        Hi…mingCall)\n        }\n    }");
            }
            abstractC5359i.mo33250V1(str);
            abstractC5359i.mo33248o0(this.f18297k.mo14283l(item.f18317d));
            String mo14286i = this.f18297k.mo14286i(item.f18318e);
            boolean z = false;
            if (!item.f18320g) {
                z = false;
                if (item.f18316c != 3) {
                    z = true;
                }
            }
            if (!z) {
                mo14286i = null;
            }
            if (mo14286i == null) {
                mo14286i = "---";
            }
            abstractC5359i.mo33249W(mo14286i);
            if (item.f18320g) {
                drawable = (Drawable) this.f18293g.getValue();
                l.d(drawable, "flashIcon");
            } else {
                int i3 = item.f18316c;
                drawable = i3 != 2 ? i3 != 3 ? item.f18319f ? m33271A() : (Drawable) this.f18292f.getValue() : item.f18319f ? m33271A() : item.f18322i != 1 ? (Drawable) this.f18290d.getValue() : (Drawable) this.f18291e.getValue() : item.f18319f ? m33271A() : (Drawable) this.f18289c.getValue();
                l.d(drawable, "when (type) {\n        Hi…se incomingCallIcon\n    }");
            }
            abstractC5359i.setIcon(drawable);
            abstractC5359i.mo33251O3(this.f18298l.mo33112i(item));
            abstractC5359i.mo33247v0(new C5358h(this));
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f18294h.mo33269b();
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        C5356f item = this.f18294h.getItem(i);
        return item != null ? item.f18314a : (char) 65535;
    }
}
