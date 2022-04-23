package kotlin.h;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.f.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import org.apache.commons.lang3.StringUtils;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u000b\u001a!\u0010��\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0002\b\u0004\u001a\u0011\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0002¢\u0006\u0002\b\u0007\u001a\u0014\u0010\b\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u001aJ\u0010\t\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0082\b¢\u0006\u0002\b\u000e\u001a\u0014\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u001a\u001e\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u001a\n\u0010\u0013\u001a\u00020\u0002*\u00020\u0002\u001a\u0014\u0010\u0014\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u0002¨\u0006\u0015"}, d2 = {"getIndentFunction", "Lkotlin/Function1;", "", "indent", "getIndentFunction$StringsKt__IndentKt", "indentWidth", "", "indentWidth$StringsKt__IndentKt", "prependIndent", "reindent", "", "resultSizeEstimate", "indentAddFunction", "indentCutFunction", "reindent$StringsKt__IndentKt", "replaceIndent", "newIndent", "replaceIndentByMargin", "marginPrefix", "trimIndent", "trimMargin", "kotlin-stdlib"}, k = 5, mv = {1, 4, 1}, xi = 1, xs = "kotlin/text/StringsKt")
/* loaded from: classes5-dex2jar.jar:kotlin/h/r.class */
public class r extends q {

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "line", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/h/r$a.class */
    public static final class a extends kotlin.jvm.internal.r implements Function1<String, String> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f36748a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(String str) {
            String line = str;
            p.d(line, "line");
            return line;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "line", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/h/r$b.class */
    public static final class b extends kotlin.jvm.internal.r implements Function1<String, String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f36749a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str) {
            super(1);
            this.f36749a = str;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(String str) {
            String line = str;
            p.d(line, "line");
            return this.f36749a + line;
        }
    }

    public static /* synthetic */ String a(String replaceIndentByMargin) {
        String str;
        String str2;
        p.d(replaceIndentByMargin, "$this$trimMargin");
        p.d("|", "marginPrefix");
        p.d(replaceIndentByMargin, "$this$replaceIndentByMargin");
        p.d("", "newIndent");
        p.d("|", "marginPrefix");
        if (!p.a((CharSequence) "|")) {
            List<String> f = p.f((CharSequence) replaceIndentByMargin);
            int length = replaceIndentByMargin.length();
            int size = f.size();
            Function1<String, String> d2 = d("");
            int a2 = n.a((List) f);
            List<String> list = f;
            ArrayList arrayList = new ArrayList();
            int i = 0;
            for (Object obj : list) {
                if (i < 0) {
                    n.a();
                }
                String str3 = (String) obj;
                if ((i == 0 || i == a2) && p.a((CharSequence) str3)) {
                    str = null;
                } else {
                    int length2 = str3.length();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length2) {
                            i2 = -1;
                            break;
                        } else if (!kotlin.h.a.a(str2.charAt(i2))) {
                            break;
                        } else {
                            i2++;
                        }
                    }
                    String str4 = null;
                    if (i2 != -1) {
                        str4 = null;
                        if (p.a(str3, "|", i2, false)) {
                            Objects.requireNonNull(str3, "null cannot be cast to non-null type java.lang.String");
                            str4 = str3.substring(i2 + 1);
                            p.b(str4, "(this as java.lang.String).substring(startIndex)");
                        }
                    }
                    str = str3;
                    if (str4 != null) {
                        str = d2.invoke(str4);
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
            String sb = ((StringBuilder) n.a(arrayList, new StringBuilder(length + (size * 0)), StringUtils.LF, null, null, 0, null, null, 124)).toString();
            p.b(sb, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
            return sb;
        }
        throw new IllegalArgumentException("marginPrefix must be non-blank string.".toString());
    }

    public static final String b(String replaceIndent) {
        String str;
        p.d(replaceIndent, "$this$trimIndent");
        p.d(replaceIndent, "$this$replaceIndent");
        p.d("", "newIndent");
        List<String> f = p.f((CharSequence) replaceIndent);
        List<String> list = f;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (true ^ p.a((CharSequence) ((String) obj))) {
                arrayList.add(obj);
            }
        }
        ArrayList<String> arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(n.a((Iterable) arrayList2, 10));
        for (String str2 : arrayList2) {
            arrayList3.add(Integer.valueOf(c(str2)));
        }
        Integer num = (Integer) n.o(arrayList3);
        int intValue = num != null ? num.intValue() : 0;
        int length = replaceIndent.length();
        int size = f.size();
        Function1<String, String> d2 = d("");
        int a2 = n.a((List) f);
        ArrayList arrayList4 = new ArrayList();
        int i = 0;
        for (Object obj2 : list) {
            if (i < 0) {
                n.a();
            }
            String drop = (String) obj2;
            if ((i == 0 || i == a2) && p.a((CharSequence) drop)) {
                str = null;
            } else {
                p.d(drop, "$this$drop");
                if (intValue >= 0) {
                    String substring = drop.substring(d.d(intValue, drop.length()));
                    p.b(substring, "(this as java.lang.String).substring(startIndex)");
                    str = drop;
                    if (substring != null) {
                        str = d2.invoke(substring);
                        if (str == null) {
                            str = drop;
                        }
                    }
                } else {
                    throw new IllegalArgumentException(("Requested character count " + intValue + " is less than zero.").toString());
                }
            }
            if (str != null) {
                arrayList4.add(str);
            }
            i++;
        }
        String sb = ((StringBuilder) n.a(arrayList4, new StringBuilder(length + (size * 0)), StringUtils.LF, null, null, 0, null, null, 124)).toString();
        p.b(sb, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return sb;
    }

    private static final int c(String str) {
        String str2 = str;
        int length = str2.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (!kotlin.h.a.a(str2.charAt(i))) {
                break;
            } else {
                i++;
            }
        }
        return i == -1 ? str.length() : i;
    }

    private static final Function1<String, String> d(String str) {
        return str.length() == 0 ? a.f36748a : new b(str);
    }
}
