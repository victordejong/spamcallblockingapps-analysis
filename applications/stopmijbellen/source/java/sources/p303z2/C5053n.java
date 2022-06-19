package p303z2;

import android.database.sqlite.SQLiteDatabase;
import android.widget.EditText;
import androidx.appcompat.widget.SwitchCompat;
import java.util.Objects;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p117h8.C3047u;
import p117h8.C3049v;
import p122i2.AbstractC3073i;
import p160l8.C3540w;
import p170m7.AbstractC3654b;
import p170m7.AbstractC3665i;
import p170m7.C3661g;
import p250u2.AbstractC4469i;
import p278w8.C4790q;
import p278w8.C4791r;
import p293y2.C4995l;
import p303z2.C5057r;
/* renamed from: z2.n */
/* loaded from: classes2-dex2jar.jar:z2/n.class */
public final /* synthetic */ class C5053n implements C5057r.AbstractC5059b, C3661g.AbstractC3662a, AbstractC3073i, View$OnClickListenerC2530g.AbstractC2533c {

    /* renamed from: a */
    public final /* synthetic */ int f15340a;

    /* renamed from: b */
    public final /* synthetic */ Object f15341b;

    /* renamed from: c */
    public final /* synthetic */ Object f15342c;

    public /* synthetic */ C5053n(Object obj, Object obj2, int i) {
        this.f15340a = i;
        this.f15341b = obj;
        this.f15342c = obj2;
    }

    @Override // p303z2.C5057r.AbstractC5059b
    public Object apply(Object obj) {
        C5057r c5057r = (C5057r) this.f15341b;
        Long m86l = c5057r.m86l((SQLiteDatabase) obj, (AbstractC4469i) this.f15342c);
        return m86l == null ? Boolean.FALSE : (Boolean) C5057r.m82r(c5057r.m87k().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{m86l.toString()}), C5054o.f15343b);
    }

    /* JADX WARN: Removed duplicated region for block: B:159:0x0676  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x067d  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x071a A[Catch: Exception -> 0x0787, CancellationException -> 0x079b, TimeoutException -> 0x079f, TRY_ENTER, TRY_LEAVE, TryCatch #4 {CancellationException -> 0x079b, TimeoutException -> 0x079f, Exception -> 0x0787, blocks: (B:170:0x06f3, B:172:0x071a, B:173:0x0758), top: B:193:0x06f3 }] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0758 A[Catch: Exception -> 0x0787, CancellationException -> 0x079b, TimeoutException -> 0x079f, TRY_ENTER, TRY_LEAVE, TryCatch #4 {CancellationException -> 0x079b, TimeoutException -> 0x079f, Exception -> 0x0787, blocks: (B:170:0x06f3, B:172:0x071a, B:173:0x0758), top: B:193:0x06f3 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:176:0x0788 -> B:192:0x07d6). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:179:0x07a0 -> B:192:0x07d6). Please submit an issue!!! */
    @Override // p122i2.AbstractC3073i
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo102e(p122i2.C3067c r10, java.util.List r11) {
        /*
            Method dump skipped, instructions count: 2017
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p303z2.C5053n.mo102e(i2.c, java.util.List):void");
    }

    @Override // p170m7.C3661g.AbstractC3662a
    /* renamed from: f */
    public void mo103f(Exception exc, Object obj, C3661g.C3663b c3663b) {
        switch (this.f15340a) {
            case 1:
                C3661g c3661g = (C3661g) this.f15341b;
                AbstractC3665i abstractC3665i = (AbstractC3665i) this.f15342c;
                int i = C3661g.f11988i;
                if (exc != null) {
                    c3661g.m1914p(exc, null, c3663b);
                    return;
                }
                try {
                    c3661g.m1917m(abstractC3665i.then(obj), c3663b);
                    return;
                } catch (Exception e) {
                    c3661g.m1914p(e, null, c3663b);
                    return;
                }
            default:
                C3661g c3661g2 = (C3661g) this.f15341b;
                C4995l c4995l = (C4995l) this.f15342c;
                int i2 = C3661g.f11988i;
                if (exc == null) {
                    c3661g2.m1914p(exc, obj, c3663b);
                    return;
                }
                try {
                    ((AbstractC3654b) c4995l.f15216b).mo104a(exc);
                    c3661g2.m1917m(new C3661g(null), c3663b);
                    return;
                } catch (Exception e2) {
                    c3661g2.m1914p(e2, null, c3663b);
                    return;
                }
        }
    }

    @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
    /* renamed from: g */
    public void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
        C3540w c3540w = (C3540w) this.f15341b;
        SwitchCompat switchCompat = (SwitchCompat) this.f15342c;
        Objects.requireNonNull(c3540w);
        String obj = ((EditText) view$OnClickListenerC2530g.findViewById(2131296841)).getText().toString();
        c3540w.f11703b.get(c3540w.f11704c).f10323c = obj;
        new C4791r(new C4790q(C3047u.class).m460a(C3049v.f10354g.m239a(obj)), C3049v.f10353f.m239a(Integer.valueOf(c3540w.f11703b.get(c3540w.f11704c).f10322b))).mo458i();
        switchCompat.setText(obj);
    }
}
