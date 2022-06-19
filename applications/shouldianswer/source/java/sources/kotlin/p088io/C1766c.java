package kotlin.p088io;

import java.io.BufferedReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.C1775o;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1694h;
import kotlin.p086h.AbstractC1728b;
import kotlin.p086h.C1729c;
/* renamed from: kotlin.io.c */
/* loaded from: classes-dex2jar.jar:kotlin/io/c.class */
public final class C1766c {

    /* renamed from: kotlin.io.c$a */
    /* loaded from: classes-dex2jar.jar:kotlin/io/c$a.class */
    public static final class C1767a extends AbstractC1695i implements AbstractC1663b<String, C1775o> {

        /* renamed from: a */
        final /* synthetic */ ArrayList f4442a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1767a(ArrayList arrayList) {
            super(1);
            this.f4442a = arrayList;
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo138a(String str) {
            m2988a(str);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m2988a(String str) {
            C1694h.m3117b(str, "it");
            this.f4442a.add(str);
        }
    }

    /* renamed from: a */
    public static final List<String> m2990a(Reader reader) {
        C1694h.m3117b(reader, "$this$readLines");
        ArrayList arrayList = new ArrayList();
        m2989a(reader, new C1767a(arrayList));
        return arrayList;
    }

    /* renamed from: a */
    public static final AbstractC1728b<String> m2991a(BufferedReader bufferedReader) {
        C1694h.m3117b(bufferedReader, "$this$lineSequence");
        return C1729c.m3070a(new C1764b(bufferedReader));
    }

    /* renamed from: a */
    public static final void m2989a(Reader reader, AbstractC1663b<? super String, C1775o> abstractC1663b) {
        C1694h.m3117b(reader, "$this$forEachLine");
        C1694h.m3117b(abstractC1663b, "action");
        th = null;
        try {
            Iterator<String> mo2994a = m2991a(reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, 8192)).mo2994a();
            while (mo2994a.hasNext()) {
                abstractC1663b.mo138a(mo2994a.next());
            }
            C1775o c1775o = C1775o.f4450a;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }
}
