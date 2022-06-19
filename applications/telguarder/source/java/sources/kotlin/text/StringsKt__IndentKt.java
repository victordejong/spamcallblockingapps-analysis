package kotlin.text;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u001e\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u000b\u001a!\u0010��\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0002\b\u0004\u001a\u0011\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0002¢\u0006\u0002\b\u0007\u001a\u0014\u0010\b\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u001aJ\u0010\t\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0082\b¢\u0006\u0002\b\u000e\u001a\u0014\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u001a\u001e\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u001a\n\u0010\u0013\u001a\u00020\u0002*\u00020\u0002\u001a\u0014\u0010\u0014\u001a\u00020\u0002*\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u0002¨\u0006\u0015"}, m400d2 = {"getIndentFunction", "Lkotlin/Function1;", "", "indent", "getIndentFunction$StringsKt__IndentKt", "indentWidth", "", "indentWidth$StringsKt__IndentKt", "prependIndent", "reindent", "", "resultSizeEstimate", "indentAddFunction", "indentCutFunction", "reindent$StringsKt__IndentKt", "replaceIndent", "newIndent", "replaceIndentByMargin", "marginPrefix", "trimIndent", "trimMargin", "kotlin-stdlib"}, m399k = 5, m398mv = {1, 4, 0}, m396xi = 1, m395xs = "kotlin/text/StringsKt")
/* loaded from: classes-dex2jar.jar:kotlin/text/StringsKt__IndentKt.class */
public class StringsKt__IndentKt extends StringsKt__AppendableKt {
    private static final Function1<String, String> getIndentFunction$StringsKt__IndentKt(String str) {
        return str.length() == 0 ? StringsKt__IndentKt$getIndentFunction$1.INSTANCE : new StringsKt__IndentKt$getIndentFunction$2(str);
    }

    private static final int indentWidth$StringsKt__IndentKt(String str) {
        String str2;
        int length = str.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (!CharsKt.isWhitespace(str2.charAt(i))) {
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

    public static final String prependIndent(String prependIndent, String indent) {
        Intrinsics.checkNotNullParameter(prependIndent, "$this$prependIndent");
        Intrinsics.checkNotNullParameter(indent, "indent");
        return SequencesKt.joinToString$default(SequencesKt.map(StringsKt.lineSequence(prependIndent), new StringsKt__IndentKt$prependIndent$1(indent)), "\n", null, null, 0, null, null, 62, null);
    }

    public static /* synthetic */ String prependIndent$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "    ";
        }
        return StringsKt.prependIndent(str, str2);
    }

    private static final String reindent$StringsKt__IndentKt(List<String> list, int i, Function1<? super String, String> function1, Function1<? super String, String> function12) {
        String str;
        int lastIndex = CollectionsKt.getLastIndex(list);
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (Object obj : list) {
            if (i2 < 0) {
                if (!PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
                    throw new ArithmeticException("Index overflow has happened.");
                }
                CollectionsKt.throwIndexOverflow();
            }
            String str2 = (String) obj;
            if ((i2 == 0 || i2 == lastIndex) && StringsKt.isBlank(str2)) {
                str = null;
            } else {
                String invoke = function12.invoke(str2);
                str = str2;
                if (invoke != null) {
                    String invoke2 = function1.invoke(invoke);
                    str = str2;
                    if (invoke2 != null) {
                        str = invoke2;
                    }
                }
            }
            if (str != null) {
                arrayList.add(str);
            }
            i2++;
        }
        String sb = ((StringBuilder) CollectionsKt.joinTo$default(arrayList, new StringBuilder(i), "\n", null, null, 0, null, null, 124, null)).toString();
        Intrinsics.checkNotNullExpressionValue(sb, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return sb;
    }

    public static final String replaceIndent(String replaceIndent, String newIndent) {
        String str;
        Intrinsics.checkNotNullParameter(replaceIndent, "$this$replaceIndent");
        Intrinsics.checkNotNullParameter(newIndent, "newIndent");
        List<String> lines = StringsKt.lines(replaceIndent);
        List<String> list = lines;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!StringsKt.isBlank((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList<String> arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        for (String str2 : arrayList2) {
            arrayList3.add(Integer.valueOf(indentWidth$StringsKt__IndentKt(str2)));
        }
        Integer num = (Integer) CollectionsKt.minOrNull((Iterable<? extends Comparable>) arrayList3);
        int i = 0;
        int intValue = num != null ? num.intValue() : 0;
        int length = replaceIndent.length();
        int length2 = newIndent.length();
        int size = lines.size();
        Function1<String, String> indentFunction$StringsKt__IndentKt = getIndentFunction$StringsKt__IndentKt(newIndent);
        int lastIndex = CollectionsKt.getLastIndex(lines);
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : list) {
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            String str3 = (String) obj2;
            if ((i == 0 || i == lastIndex) && StringsKt.isBlank(str3)) {
                str = null;
            } else {
                String drop = StringsKt.drop(str3, intValue);
                str = str3;
                if (drop != null) {
                    String invoke = indentFunction$StringsKt__IndentKt.invoke(drop);
                    str = str3;
                    if (invoke != null) {
                        str = invoke;
                    }
                }
            }
            if (str != null) {
                arrayList4.add(str);
            }
            i++;
        }
        String sb = ((StringBuilder) CollectionsKt.joinTo$default(arrayList4, new StringBuilder(length + (length2 * size)), "\n", null, null, 0, null, null, 124, null)).toString();
        Intrinsics.checkNotNullExpressionValue(sb, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return sb;
    }

    public static /* synthetic */ String replaceIndent$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "";
        }
        return StringsKt.replaceIndent(str, str2);
    }

    public static final String replaceIndentByMargin(String replaceIndentByMargin, String newIndent, String marginPrefix) {
        String str;
        String str2;
        Intrinsics.checkNotNullParameter(replaceIndentByMargin, "$this$replaceIndentByMargin");
        Intrinsics.checkNotNullParameter(newIndent, "newIndent");
        Intrinsics.checkNotNullParameter(marginPrefix, "marginPrefix");
        if (!StringsKt.isBlank(marginPrefix)) {
            List<String> lines = StringsKt.lines(replaceIndentByMargin);
            int length = replaceIndentByMargin.length();
            int length2 = newIndent.length();
            int size = lines.size();
            Function1<String, String> indentFunction$StringsKt__IndentKt = getIndentFunction$StringsKt__IndentKt(newIndent);
            int lastIndex = CollectionsKt.getLastIndex(lines);
            List<String> list = lines;
            ArrayList arrayList = new ArrayList();
            int i = 0;
            for (Object obj : list) {
                if (i < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                String str3 = (String) obj;
                String str4 = null;
                if ((i == 0 || i == lastIndex) && StringsKt.isBlank(str3)) {
                    str = null;
                } else {
                    int length3 = str3.length();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length3) {
                            i2 = -1;
                            break;
                        } else if (!CharsKt.isWhitespace(str2.charAt(i2))) {
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i2 != -1 && StringsKt.startsWith$default(str3, marginPrefix, i2, false, 4, (Object) null)) {
                        int length4 = marginPrefix.length();
                        Objects.requireNonNull(str3, "null cannot be cast to non-null type java.lang.String");
                        str4 = str3.substring(i2 + length4);
                        Intrinsics.checkNotNullExpressionValue(str4, "(this as java.lang.String).substring(startIndex)");
                    }
                    str = str3;
                    if (str4 != null) {
                        String invoke = indentFunction$StringsKt__IndentKt.invoke(str4);
                        str = str3;
                        if (invoke != null) {
                            str = invoke;
                        }
                    }
                }
                if (str != null) {
                    arrayList.add(str);
                }
                i++;
            }
            String sb = ((StringBuilder) CollectionsKt.joinTo$default(arrayList, new StringBuilder(length + (length2 * size)), "\n", null, null, 0, null, null, 124, null)).toString();
            Intrinsics.checkNotNullExpressionValue(sb, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
            return sb;
        }
        throw new IllegalArgumentException("marginPrefix must be non-blank string.".toString());
    }

    public static /* synthetic */ String replaceIndentByMargin$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "";
        }
        if ((i & 2) != 0) {
            str3 = "|";
        }
        return StringsKt.replaceIndentByMargin(str, str2, str3);
    }

    public static final String trimIndent(String trimIndent) {
        Intrinsics.checkNotNullParameter(trimIndent, "$this$trimIndent");
        return StringsKt.replaceIndent(trimIndent, "");
    }

    public static final String trimMargin(String trimMargin, String marginPrefix) {
        Intrinsics.checkNotNullParameter(trimMargin, "$this$trimMargin");
        Intrinsics.checkNotNullParameter(marginPrefix, "marginPrefix");
        return StringsKt.replaceIndentByMargin(trimMargin, "", marginPrefix);
    }

    public static /* synthetic */ String trimMargin$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "|";
        }
        return StringsKt.trimMargin(str, str2);
    }
}
