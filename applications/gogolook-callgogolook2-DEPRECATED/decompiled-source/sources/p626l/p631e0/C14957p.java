package p626l.p631e0;

import gogolook.callgogolook2.gson.UserProfile;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p626l.p632u.C15021m;
import p626l.p632u.C15022n;
import p626l.p632u.C15029u;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u000b\u001a!\u0010��\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0002\b\u0004\u001a\u0011\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0002¢\u0006\u0002\b\u0007\u001a\u0014\u0010\b\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u001aJ\u0010\t\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0082\b¢\u0006\u0002\b\u000e\u001a\u0014\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u001a\u001e\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u001a\n\u0010\u0013\u001a\u00020\u0002*\u00020\u0002\u001a\u0014\u0010\u0014\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u0002¨\u0006\u0015"}, m815d2 = {"getIndentFunction", "Lkotlin/Function1;", "", "indent", "getIndentFunction$StringsKt__IndentKt", "indentWidth", "", "indentWidth$StringsKt__IndentKt", "prependIndent", "reindent", "", "resultSizeEstimate", "indentAddFunction", "indentCutFunction", "reindent$StringsKt__IndentKt", "replaceIndent", "newIndent", "replaceIndentByMargin", "marginPrefix", "trimIndent", "trimMargin", "kotlin-stdlib"}, m814k = 5, m813mv = {1, 1, 16}, m811xi = 1, m810xs = "kotlin/text/StringsKt")
/* renamed from: l.e0.p */
/* loaded from: classes3-dex2jar.jar:l/e0/p.class */
public class C14957p extends C14956o {

    /* renamed from: l.e0.p$a */
    /* loaded from: classes3-dex2jar.jar:l/e0/p$a.class */
    public static final class C14958a extends AbstractC15150l implements AbstractC15118l<String, String> {

        /* renamed from: a */
        public static final C14958a f33003a = new C14958a();

        public C14958a() {
            super(1);
        }

        /* renamed from: a */
        public final String m731a(String str) {
            C15149k.m377b(str, UserProfile.TYPE_CONTACT_INFO_LINE);
            return str;
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ String invoke(String str) {
            String str2 = str;
            m731a(str2);
            return str2;
        }
    }

    /* renamed from: l.e0.p$b */
    /* loaded from: classes3-dex2jar.jar:l/e0/p$b.class */
    public static final class C14959b extends AbstractC15150l implements AbstractC15118l<String, String> {

        /* renamed from: a */
        public final /* synthetic */ String f33004a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14959b(String str) {
            super(1);
            this.f33004a = str;
        }

        /* renamed from: a */
        public final String invoke(String str) {
            C15149k.m377b(str, UserProfile.TYPE_CONTACT_INFO_LINE);
            return this.f33004a + str;
        }
    }

    /* renamed from: a */
    public static final String m734a(String str, String str2) {
        String c;
        String invoke;
        C15149k.m377b(str, "$this$replaceIndent");
        C15149k.m377b(str2, "newIndent");
        List<String> e = C14967x.m671e((CharSequence) str);
        ArrayList<String> arrayList = new ArrayList();
        for (Object obj : e) {
            if (!C14966w.m724a((CharSequence) ((String) obj))) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(C15022n.m555a(arrayList, 10));
        for (String str3 : arrayList) {
            arrayList2.add(Integer.valueOf(m733b(str3)));
        }
        Integer num = (Integer) C15029u.m518h(arrayList2);
        int i = 0;
        int intValue = num != null ? num.intValue() : 0;
        int length = str.length();
        int length2 = str2.length();
        int size = e.size();
        AbstractC15118l<String, String> a = m735a(str2);
        int a2 = C15021m.m563a((List) e);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : e) {
            String str4 = null;
            if (i >= 0) {
                str4 = (String) obj2;
                if (!(((i == 0 || i == a2) && C14966w.m724a((CharSequence) str4)) || (c = C14973z.m665c(str4, intValue)) == null || (invoke = a.invoke(c)) == null)) {
                    str4 = invoke;
                }
                if (str4 != null) {
                    arrayList3.add(str4);
                }
                i++;
            } else {
                C15021m.m558c();
                throw null;
            }
        }
        StringBuilder sb = new StringBuilder(length + (length2 * size));
        C15029u.m547a(arrayList3, sb, "\n", null, null, 0, null, null, 124, null);
        String sb2 = sb.toString();
        C15149k.m383a((Object) sb2, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return sb2;
    }

    /* renamed from: a */
    public static final AbstractC15118l<String, String> m735a(String str) {
        return str.length() == 0 ? C14958a.f33003a : new C14959b(str);
    }

    /* renamed from: b */
    public static final int m733b(String str) {
        int length = str.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (!C14936a.m763a(str.charAt(i))) {
                break;
            } else {
                i++;
            }
        }
        int i2 = i;
        if (i == -1) {
            i2 = str.length();
        }
        return i2;
    }

    /* renamed from: c */
    public static final String m732c(String str) {
        C15149k.m377b(str, "$this$trimIndent");
        return m734a(str, "");
    }
}
