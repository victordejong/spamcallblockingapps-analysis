package p131c.p161d.p354f;

import com.google.gson.internal.LinkedTreeMap;
import java.util.Map;
import java.util.Set;
/* renamed from: c.d.f.m */
/* loaded from: classes2-dex2jar.jar:c/d/f/m.class */
public final class C6125m extends AbstractC6123k {

    /* renamed from: a */
    public final LinkedTreeMap<String, AbstractC6123k> f19645a = new LinkedTreeMap<>();

    /* renamed from: a */
    public void m21953a(String str, AbstractC6123k kVar) {
        LinkedTreeMap<String, AbstractC6123k> linkedTreeMap = this.f19645a;
        AbstractC6123k kVar2 = kVar;
        if (kVar == null) {
            kVar2 = C6124l.f19644a;
        }
        linkedTreeMap.put(str, kVar2);
    }

    public Set<Map.Entry<String, AbstractC6123k>> entrySet() {
        return this.f19645a.entrySet();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof C6125m) && ((C6125m) obj).f19645a.equals(this.f19645a));
    }

    public int hashCode() {
        return this.f19645a.hashCode();
    }
}
