package p012b.p042i.p050l;

import android.os.LocaleList;
import java.util.Locale;
/* renamed from: b.i.l.e */
/* loaded from: classes-dex2jar.jar:b/i/l/e.class */
public final class C0920e implements AbstractC0919d {

    /* renamed from: a */
    public final LocaleList f4131a;

    public C0920e(LocaleList localeList) {
        this.f4131a = localeList;
    }

    @Override // p012b.p042i.p050l.AbstractC0919d
    /* renamed from: a */
    public Object mo35497a() {
        return this.f4131a;
    }

    public boolean equals(Object obj) {
        return this.f4131a.equals(((AbstractC0919d) obj).mo35497a());
    }

    @Override // p012b.p042i.p050l.AbstractC0919d
    public Locale get(int i) {
        return this.f4131a.get(i);
    }

    public int hashCode() {
        return this.f4131a.hashCode();
    }

    public String toString() {
        return this.f4131a.toString();
    }
}
