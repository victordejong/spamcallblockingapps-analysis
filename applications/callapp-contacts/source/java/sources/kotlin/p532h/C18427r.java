package kotlin.p532h;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p530f.C18363d;
import org.apache.commons.lang3.StringUtils;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u000b\u001a!\u0010��\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0002\b\u0004\u001a\u0011\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0002¢\u0006\u0002\b\u0007\u001a\u0014\u0010\b\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u001aJ\u0010\t\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0082\b¢\u0006\u0002\b\u000e\u001a\u0014\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u001a\u001e\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u001a\n\u0010\u0013\u001a\u00020\u0002*\u00020\u0002\u001a\u0014\u0010\u0014\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u0002¨\u0006\u0015"}, m4298d2 = {"getIndentFunction", "Lkotlin/Function1;", "", "indent", "getIndentFunction$StringsKt__IndentKt", "indentWidth", "", "indentWidth$StringsKt__IndentKt", "prependIndent", "reindent", "", "resultSizeEstimate", "indentAddFunction", "indentCutFunction", "reindent$StringsKt__IndentKt", "replaceIndent", "newIndent", "replaceIndentByMargin", "marginPrefix", "trimIndent", "trimMargin", "kotlin-stdlib"}, m4297k = 5, m4296mv = {1, 4, 1}, m4294xi = 1, m4293xs = "kotlin/text/StringsKt")
/* renamed from: kotlin.h.r */
/* loaded from: classes5-dex2jar.jar:kotlin/h/r.class */
public class C18427r extends C18426q {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "", "line", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.h.r$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/h/r$a.class */
    public static final class C18428a extends AbstractC18526r implements Function1<String, String> {

        /* renamed from: a */
        public static final C18428a f63552a = new C18428a();

        C18428a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(String str) {
            String line = str;
            C18524p.m3840d(line, "line");
            return line;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "", "line", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.h.r$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/h/r$b.class */
    public static final class C18429b extends AbstractC18526r implements Function1<String, String> {

        /* renamed from: a */
        final /* synthetic */ String f63553a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18429b(String str) {
            super(1);
            this.f63553a = str;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(String str) {
            String line = str;
            C18524p.m3840d(line, "line");
            return this.f63553a + line;
        }
    }

    /* renamed from: a */
    public static /* synthetic */ String m3977a(String replaceIndentByMargin) {
        String str;
        String str2;
        C18524p.m3840d(replaceIndentByMargin, "$this$trimMargin");
        C18524p.m3840d("|", "marginPrefix");
        C18524p.m3840d(replaceIndentByMargin, "$this$replaceIndentByMargin");
        C18524p.m3840d("", "newIndent");
        C18524p.m3840d("|", "marginPrefix");
        if (!C18425p.m3966a((CharSequence) "|")) {
            List<String> f = C18425p.m3912f((CharSequence) replaceIndentByMargin);
            int length = replaceIndentByMargin.length();
            int size = f.size();
            Function1<String, String> m3974d = m3974d("");
            int a = C18282n.m4173a((List) f);
            List<String> list = f;
            ArrayList arrayList = new ArrayList();
            int i = 0;
            for (Object obj : list) {
                if (i < 0) {
                    C18282n.m4175a();
                }
                String str3 = (String) obj;
                if ((i == 0 || i == a) && C18425p.m3966a((CharSequence) str3)) {
                    str = null;
                } else {
                    int length2 = str3.length();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length2) {
                            i2 = -1;
                            break;
                        } else if (!C18400a.m3999a(str2.charAt(i2))) {
                            break;
                        } else {
                            i2++;
                        }
                    }
                    String str4 = null;
                    if (i2 != -1) {
                        str4 = null;
                        if (C18425p.m3960a(str3, "|", i2, false)) {
                            Objects.requireNonNull(str3, "null cannot be cast to non-null type java.lang.String");
                            str4 = str3.substring(i2 + 1);
                            C18524p.m3843b(str4, "(this as java.lang.String).substring(startIndex)");
                        }
                    }
                    str = str3;
                    if (str4 != null) {
                        str = m3974d.invoke(str4);
                        if (str == null) {
                            str = str3;
                        }
                    }
                }
                if (str != null) {
                    arrayList.add(str);
                }
                i++;
            }
            String sb = ((StringBuilder) C18282n.m4150a(arrayList, new StringBuilder(length + (size * 0)), StringUtils.f67179LF, null, null, 0, null, null, 124)).toString();
            C18524p.m3843b(sb, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
            return sb;
        }
        throw new IllegalArgumentException("marginPrefix must be non-blank string.".toString());
    }

    /* renamed from: b */
    public static final String m3976b(String replaceIndent) {
        String str;
        C18524p.m3840d(replaceIndent, "$this$trimIndent");
        C18524p.m3840d(replaceIndent, "$this$replaceIndent");
        C18524p.m3840d("", "newIndent");
        List<String> f = C18425p.m3912f((CharSequence) replaceIndent);
        List<String> list = f;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (true ^ C18425p.m3966a((CharSequence) ((String) obj))) {
                arrayList.add(obj);
            }
        }
        ArrayList<String> arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(C18282n.m4163a((Iterable) arrayList2, 10));
        for (String str2 : arrayList2) {
            arrayList3.add(Integer.valueOf(m3975c(str2)));
        }
        Integer num = (Integer) C18282n.m4107o(arrayList3);
        int intValue = num != null ? num.intValue() : 0;
        int length = replaceIndent.length();
        int size = f.size();
        Function1<String, String> m3974d = m3974d("");
        int a = C18282n.m4173a((List) f);
        ArrayList arrayList4 = new ArrayList();
        int i = 0;
        for (Object obj2 : list) {
            if (i < 0) {
                C18282n.m4175a();
            }
            String drop = (String) obj2;
            if ((i == 0 || i == a) && C18425p.m3966a((CharSequence) drop)) {
                str = null;
            } else {
                C18524p.m3840d(drop, "$this$drop");
                if (!(intValue >= 0)) {
                    throw new IllegalArgumentException(("Requested character count " + intValue + " is less than zero.").toString());
                }
                String substring = drop.substring(C18363d.m4050d(intValue, drop.length()));
                C18524p.m3843b(substring, "(this as java.lang.String).substring(startIndex)");
                str = drop;
                if (substring != null) {
                    str = m3974d.invoke(substring);
                    if (str == null) {
                        str = drop;
                    }
                }
            }
            if (str != null) {
                arrayList4.add(str);
            }
            i++;
        }
        String sb = ((StringBuilder) C18282n.m4150a(arrayList4, new StringBuilder(length + (size * 0)), StringUtils.f67179LF, null, null, 0, null, null, 124)).toString();
        C18524p.m3843b(sb, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return sb;
    }

    /* renamed from: c */
    private static final int m3975c(String str) {
        String str2;
        int length = str.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (!C18400a.m3999a(str2.charAt(i))) {
                break;
            } else {
                i++;
            }
        }
        return i == -1 ? str.length() : i;
    }

    /* renamed from: d */
    private static final Function1<String, String> m3974d(String str) {
        return str.length() == 0 ? C18428a.f63552a : new C18429b(str);
    }
}
