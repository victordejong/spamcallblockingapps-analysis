package kotlin.text;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.simpleframework.xml.strategy.Name;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u008e\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0019\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\r\n\u0002\b\r\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\f\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0018\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020��H\u0087\b¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0018\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0087\b¢\u0006\u0004\b\u0003\u0010\u0007\u001a\u0018\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0087\b¢\u0006\u0004\b\u0003\u0010\n\u001a \u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0087\b¢\u0006\u0004\b\u0003\u0010\r\u001a(\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\b\u0003\u0010\u0011\u001a0\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000bH\u0087\b¢\u0006\u0004\b\u0003\u0010\u0012\u001a\u0018\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0087\b¢\u0006\u0004\b\u0003\u0010\u0015\u001a(\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\b\u0003\u0010\u0016\u001a(\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\b\u0003\u0010\u0019\u001a\u0011\u0010\u001a\u001a\u00020\u0002*\u00020\u0002¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u001b\u0010\u001a\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cH\u0007¢\u0006\u0004\b\u001a\u0010\u001e\u001a\u001c\u0010 \u001a\u00020\u000e*\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\b \u0010!\u001a\u001c\u0010\"\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\b\"\u0010!\u001a$\u0010%\u001a\u00020\u000e*\u00020\u00022\u0006\u0010#\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\b%\u0010&\u001a#\u0010*\u001a\u00020\u000e*\u00020\u00022\u0006\u0010'\u001a\u00020\u00022\b\b\u0002\u0010)\u001a\u00020(¢\u0006\u0004\b*\u0010+\u001a\u0013\u0010,\u001a\u00020\u0002*\u00020\u0013H\u0007¢\u0006\u0004\b,\u0010\u0015\u001a'\u0010,\u001a\u00020\u0002*\u00020\u00132\b\b\u0002\u0010-\u001a\u00020\u000e2\b\b\u0002\u0010$\u001a\u00020\u000eH\u0007¢\u0006\u0004\b,\u0010\u0016\u001a\u001c\u0010.\u001a\u00020(*\u00020\u00022\u0006\u0010\u0006\u001a\u00020��H\u0087\b¢\u0006\u0004\b.\u0010/\u001a\u001c\u0010.\u001a\u00020(*\u00020\u00022\u0006\u00101\u001a\u000200H\u0087\b¢\u0006\u0004\b.\u00102\u001a\u0011\u00103\u001a\u00020\u0002*\u00020\u0002¢\u0006\u0004\b3\u0010\u001b\u001a\u001b\u00103\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cH\u0007¢\u0006\u0004\b3\u0010\u001e\u001a\u0013\u00104\u001a\u00020\u0002*\u00020\bH\u0007¢\u0006\u0004\b4\u0010\n\u001a1\u00104\u001a\u00020\u0002*\u00020\b2\b\b\u0002\u0010-\u001a\u00020\u000e2\b\b\u0002\u0010$\u001a\u00020\u000e2\b\b\u0002\u00105\u001a\u00020(H\u0007¢\u0006\u0004\b4\u00106\u001a\u0013\u00107\u001a\u00020\b*\u00020\u0002H\u0007¢\u0006\u0004\b7\u00108\u001a1\u00107\u001a\u00020\b*\u00020\u00022\b\b\u0002\u0010-\u001a\u00020\u000e2\b\b\u0002\u0010$\u001a\u00020\u000e2\b\b\u0002\u00105\u001a\u00020(H\u0007¢\u0006\u0004\b7\u00109\u001a#\u0010;\u001a\u00020(*\u00020\u00022\u0006\u0010:\u001a\u00020\u00022\b\b\u0002\u0010)\u001a\u00020(¢\u0006\u0004\b;\u0010<\u001a'\u0010=\u001a\u00020(*\u0004\u0018\u00010\u00022\b\u0010'\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010)\u001a\u00020(¢\u0006\u0004\b=\u0010<\u001a4\u0010A\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001c2\u0016\u0010@\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010?0>\"\u0004\u0018\u00010?H\u0087\b¢\u0006\u0004\bA\u0010B\u001a6\u0010A\u001a\u00020\u0002*\u00020\u00022\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0016\u0010@\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010?0>\"\u0004\u0018\u00010?H\u0087\b¢\u0006\u0004\bC\u0010B\u001a,\u0010A\u001a\u00020\u0002*\u00020\u00022\u0016\u0010@\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010?0>\"\u0004\u0018\u00010?H\u0087\b¢\u0006\u0004\bA\u0010D\u001a<\u0010A\u001a\u00020\u0002*\u00020E2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010A\u001a\u00020\u00022\u0016\u0010@\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010?0>\"\u0004\u0018\u00010?H\u0087\b¢\u0006\u0004\bA\u0010F\u001a>\u0010A\u001a\u00020\u0002*\u00020E2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010A\u001a\u00020\u00022\u0016\u0010@\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010?0>\"\u0004\u0018\u00010?H\u0087\b¢\u0006\u0004\bC\u0010F\u001a4\u0010A\u001a\u00020\u0002*\u00020E2\u0006\u0010A\u001a\u00020\u00022\u0016\u0010@\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010?0>\"\u0004\u0018\u00010?H\u0087\b¢\u0006\u0004\bA\u0010G\u001a\u0014\u0010H\u001a\u00020\u0002*\u00020\u0002H\u0087\b¢\u0006\u0004\bH\u0010\u001b\u001a\u0011\u0010I\u001a\u00020(*\u000200¢\u0006\u0004\bI\u0010J\u001a$\u0010N\u001a\u00020\u000e*\u00020\u00022\u0006\u0010L\u001a\u00020K2\u0006\u0010M\u001a\u00020\u000eH\u0081\b¢\u0006\u0004\bN\u0010O\u001a$\u0010N\u001a\u00020\u000e*\u00020\u00022\u0006\u0010P\u001a\u00020\u00022\u0006\u0010M\u001a\u00020\u000eH\u0081\b¢\u0006\u0004\bN\u0010Q\u001a$\u0010R\u001a\u00020\u000e*\u00020\u00022\u0006\u0010L\u001a\u00020K2\u0006\u0010M\u001a\u00020\u000eH\u0081\b¢\u0006\u0004\bR\u0010O\u001a$\u0010R\u001a\u00020\u000e*\u00020\u00022\u0006\u0010P\u001a\u00020\u00022\u0006\u0010M\u001a\u00020\u000eH\u0081\b¢\u0006\u0004\bR\u0010Q\u001a$\u0010T\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u000e2\u0006\u0010S\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\bT\u0010&\u001a;\u0010W\u001a\u00020(*\u0002002\u0006\u0010U\u001a\u00020\u000e2\u0006\u0010'\u001a\u0002002\u0006\u0010V\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\b\b\u0002\u0010)\u001a\u00020(¢\u0006\u0004\bW\u0010X\u001a;\u0010W\u001a\u00020(*\u00020\u00022\u0006\u0010U\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020\u00022\u0006\u0010V\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\b\b\u0002\u0010)\u001a\u00020(¢\u0006\u0004\bW\u0010Y\u001a\u0019\u0010[\u001a\u00020\u0002*\u0002002\u0006\u0010Z\u001a\u00020\u000e¢\u0006\u0004\b[\u0010\\\u001a+\u0010_\u001a\u00020\u0002*\u00020\u00022\u0006\u0010]\u001a\u00020K2\u0006\u0010^\u001a\u00020K2\b\b\u0002\u0010)\u001a\u00020(¢\u0006\u0004\b_\u0010`\u001a+\u0010_\u001a\u00020\u0002*\u00020\u00022\u0006\u0010a\u001a\u00020\u00022\u0006\u0010b\u001a\u00020\u00022\b\b\u0002\u0010)\u001a\u00020(¢\u0006\u0004\b_\u0010c\u001a+\u0010d\u001a\u00020\u0002*\u00020\u00022\u0006\u0010]\u001a\u00020K2\u0006\u0010^\u001a\u00020K2\b\b\u0002\u0010)\u001a\u00020(¢\u0006\u0004\bd\u0010`\u001a+\u0010d\u001a\u00020\u0002*\u00020\u00022\u0006\u0010a\u001a\u00020\u00022\u0006\u0010b\u001a\u00020\u00022\b\b\u0002\u0010)\u001a\u00020(¢\u0006\u0004\bd\u0010c\u001a)\u0010i\u001a\b\u0012\u0004\u0012\u00020\u00020h*\u0002002\u0006\u0010f\u001a\u00020e2\b\b\u0002\u0010g\u001a\u00020\u000e¢\u0006\u0004\bi\u0010j\u001a#\u0010l\u001a\u00020(*\u00020\u00022\u0006\u0010k\u001a\u00020\u00022\b\b\u0002\u0010)\u001a\u00020(¢\u0006\u0004\bl\u0010<\u001a+\u0010l\u001a\u00020(*\u00020\u00022\u0006\u0010k\u001a\u00020\u00022\u0006\u0010-\u001a\u00020\u000e2\b\b\u0002\u0010)\u001a\u00020(¢\u0006\u0004\bl\u0010m\u001a\u001c\u0010n\u001a\u00020\u0002*\u00020\u00022\u0006\u0010-\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\bn\u0010o\u001a$\u0010n\u001a\u00020\u0002*\u00020\u00022\u0006\u0010-\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\bn\u0010p\u001a\u001e\u0010q\u001a\u00020\b*\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0087\b¢\u0006\u0004\bq\u0010r\u001a\u0014\u0010s\u001a\u00020\u0013*\u00020\u0002H\u0087\b¢\u0006\u0004\bs\u0010t\u001a:\u0010s\u001a\u00020\u0013*\u00020\u00022\u0006\u0010u\u001a\u00020\u00132\b\b\u0002\u0010v\u001a\u00020\u000e2\b\b\u0002\u0010-\u001a\u00020\u000e2\b\b\u0002\u0010$\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\bs\u0010w\u001a'\u0010s\u001a\u00020\u0013*\u00020\u00022\b\b\u0002\u0010-\u001a\u00020\u000e2\b\b\u0002\u0010$\u001a\u00020\u000eH\u0007¢\u0006\u0004\bs\u0010x\u001a\u0014\u0010y\u001a\u00020\u0002*\u00020\u0002H\u0087\b¢\u0006\u0004\by\u0010\u001b\u001a\u001c\u0010y\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cH\u0087\b¢\u0006\u0004\by\u0010\u001e\u001a\u001e\u0010{\u001a\u00020e*\u00020\u00022\b\b\u0002\u0010z\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\b{\u0010|\u001a\u0014\u0010}\u001a\u00020\u0002*\u00020\u0002H\u0087\b¢\u0006\u0004\b}\u0010\u001b\u001a\u001c\u0010}\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cH\u0087\b¢\u0006\u0004\b}\u0010\u001e\"*\u0010\u0082\u0001\u001a\u0012\u0012\u0004\u0012\u00020\u00020~j\b\u0012\u0004\u0012\u00020\u0002`\u007f*\u00020E8F@\u0006¢\u0006\b\u001a\u0006\b\u0080\u0001\u0010\u0081\u0001¨\u0006\u0083\u0001"}, d2 = {"Ljava/lang/StringBuffer;", "stringBuffer", "", "String", "(Ljava/lang/StringBuffer;)Ljava/lang/String;", "Ljava/lang/StringBuilder;", "stringBuilder", "(Ljava/lang/StringBuilder;)Ljava/lang/String;", "", "bytes", "([B)Ljava/lang/String;", "Ljava/nio/charset/Charset;", "charset", "([BLjava/nio/charset/Charset;)Ljava/lang/String;", "", "offset", Name.LENGTH, "([BII)Ljava/lang/String;", "([BIILjava/nio/charset/Charset;)Ljava/lang/String;", "", "chars", "([C)Ljava/lang/String;", "([CII)Ljava/lang/String;", "", "codePoints", "([III)Ljava/lang/String;", "capitalize", "(Ljava/lang/String;)Ljava/lang/String;", "Ljava/util/Locale;", "locale", "(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;", FirebaseAnalytics.Param.INDEX, "codePointAt", "(Ljava/lang/String;I)I", "codePointBefore", "beginIndex", "endIndex", "codePointCount", "(Ljava/lang/String;II)I", "other", "", "ignoreCase", "compareTo", "(Ljava/lang/String;Ljava/lang/String;Z)I", "concatToString", "startIndex", "contentEquals", "(Ljava/lang/String;Ljava/lang/StringBuffer;)Z", "", "charSequence", "(Ljava/lang/String;Ljava/lang/CharSequence;)Z", "decapitalize", "decodeToString", "throwOnInvalidSequence", "([BIIZ)Ljava/lang/String;", "encodeToByteArray", "(Ljava/lang/String;)[B", "(Ljava/lang/String;IIZ)[B", "suffix", "endsWith", "(Ljava/lang/String;Ljava/lang/String;Z)Z", "equals", "", "", "args", "format", "(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/String;", "formatNullable", "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "Lkotlin/String$Companion;", "(Lkotlin/jvm/internal/StringCompanionObject;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "(Lkotlin/jvm/internal/StringCompanionObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "intern", "isBlank", "(Ljava/lang/CharSequence;)Z", "", "ch", "fromIndex", "nativeIndexOf", "(Ljava/lang/String;CI)I", "str", "(Ljava/lang/String;Ljava/lang/String;I)I", "nativeLastIndexOf", "codePointOffset", "offsetByCodePoints", "thisOffset", "otherOffset", "regionMatches", "(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z", "(Ljava/lang/String;ILjava/lang/String;IIZ)Z", "n", "repeat", "(Ljava/lang/CharSequence;I)Ljava/lang/String;", "oldChar", "newChar", "replace", "(Ljava/lang/String;CCZ)Ljava/lang/String;", "oldValue", "newValue", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;", "replaceFirst", "Ljava/util/regex/Pattern;", "regex", "limit", "", "split", "(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;I)Ljava/util/List;", "prefix", "startsWith", "(Ljava/lang/String;Ljava/lang/String;IZ)Z", "substring", "(Ljava/lang/String;I)Ljava/lang/String;", "(Ljava/lang/String;II)Ljava/lang/String;", "toByteArray", "(Ljava/lang/String;Ljava/nio/charset/Charset;)[B", "toCharArray", "(Ljava/lang/String;)[C", FirebaseAnalytics.Param.DESTINATION, "destinationOffset", "(Ljava/lang/String;[CIII)[C", "(Ljava/lang/String;II)[C", "toLowerCase", "flags", "toPattern", "(Ljava/lang/String;I)Ljava/util/regex/Pattern;", "toUpperCase", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "getCASE_INSENSITIVE_ORDER", "(Lkotlin/jvm/internal/StringCompanionObject;)Ljava/util/Comparator;", "CASE_INSENSITIVE_ORDER", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/text/StringsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__StringsJVMKt.class */
public class StringsKt__StringsJVMKt extends StringsKt__StringNumberConversionsKt {
    /* renamed from: A */
    public static boolean m1493A(@NotNull String startsWith, @NotNull String prefix, boolean z) {
        Intrinsics.m1830e(startsWith, "$this$startsWith");
        Intrinsics.m1830e(prefix, "prefix");
        return !z ? startsWith.startsWith(prefix) : m1484s(startsWith, 0, prefix, 0, prefix.length(), z);
    }

    /* renamed from: B */
    public static /* synthetic */ boolean m1492B(String str, String str2, int i, boolean z, int i2, Object obj) {
        boolean z2;
        if ((i2 & 4) != 0) {
            z = false;
        }
        z2 = m1477z(str, str2, i, z);
        return z2;
    }

    /* renamed from: C */
    public static /* synthetic */ boolean m1491C(String str, String str2, boolean z, int i, Object obj) {
        boolean A;
        if ((i & 2) != 0) {
            z = false;
        }
        A = m1493A(str, str2, z);
        return A;
    }

    /* renamed from: m */
    public static int m1490m(@NotNull String compareTo, @NotNull String other, boolean z) {
        Intrinsics.m1830e(compareTo, "$this$compareTo");
        Intrinsics.m1830e(other, "other");
        return z ? compareTo.compareToIgnoreCase(other) : compareTo.compareTo(other);
    }

    /* renamed from: n */
    public static final boolean m1489n(@NotNull String endsWith, @NotNull String suffix, boolean z) {
        Intrinsics.m1830e(endsWith, "$this$endsWith");
        Intrinsics.m1830e(suffix, "suffix");
        return !z ? endsWith.endsWith(suffix) : m1484s(endsWith, endsWith.length() - suffix.length(), suffix, 0, suffix.length(), true);
    }

    /* renamed from: o */
    public static /* synthetic */ boolean m1488o(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return m1489n(str, str2, z);
    }

    /* renamed from: p */
    public static boolean m1487p(@Nullable String str, @Nullable String str2, boolean z) {
        if (str == null) {
            return str2 == null;
        }
        return !z ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    @NotNull
    /* renamed from: q */
    public static Comparator<String> m1486q(@NotNull StringCompanionObject CASE_INSENSITIVE_ORDER) {
        Intrinsics.m1830e(CASE_INSENSITIVE_ORDER, "$this$CASE_INSENSITIVE_ORDER");
        Comparator<String> comparator = String.CASE_INSENSITIVE_ORDER;
        Intrinsics.m1831d(comparator, "java.lang.String.CASE_INSENSITIVE_ORDER");
        return comparator;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0056, code lost:
        if (r4 != false) goto L_0x0059;
     */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m1485r(@org.jetbrains.annotations.NotNull java.lang.CharSequence r3) {
        /*
            r0 = r3
            java.lang.String r1 = "$this$isBlank"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = r3
            int r0 = r0.length()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0059
            r0 = r3
            kotlin.ranges.IntRange r0 = kotlin.text.StringsKt__StringsKt.m1460N(r0)
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof java.util.Collection
            if (r0 == 0) goto L_0x0030
            r0 = r6
            java.util.Collection r0 = (java.util.Collection) r0
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0030
        L_0x002b:
            r0 = 1
            r4 = r0
            goto L_0x0055
        L_0x0030:
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L_0x0037:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x002b
            r0 = r3
            r1 = r6
            kotlin.collections.IntIterator r1 = (kotlin.collections.IntIterator) r1
            int r1 = r1.mo1733b()
            char r0 = r0.charAt(r1)
            boolean r0 = kotlin.text.CharsKt__CharJVMKt.m1573c(r0)
            if (r0 != 0) goto L_0x0037
            r0 = 0
            r4 = r0
        L_0x0055:
            r0 = r4
            if (r0 == 0) goto L_0x005b
        L_0x0059:
            r0 = 1
            r5 = r0
        L_0x005b:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.StringsKt__StringsJVMKt.m1485r(java.lang.CharSequence):boolean");
    }

    /* renamed from: s */
    public static final boolean m1484s(@NotNull String regionMatches, int i, @NotNull String other, int i2, int i3, boolean z) {
        Intrinsics.m1830e(regionMatches, "$this$regionMatches");
        Intrinsics.m1830e(other, "other");
        return !z ? regionMatches.regionMatches(i, other, i2, i3) : regionMatches.regionMatches(z, i, other, i2, i3);
    }

    /* renamed from: t */
    public static /* synthetic */ boolean m1483t(String str, int i, String str2, int i2, int i3, boolean z, int i4, Object obj) {
        if ((i4 & 16) != 0) {
            z = false;
        }
        return m1484s(str, i, str2, i2, i3, z);
    }

    @NotNull
    /* renamed from: u */
    public static String m1482u(@NotNull CharSequence repeat, int i) {
        Intrinsics.m1830e(repeat, "$this$repeat");
        int i2 = 1;
        if (i >= 0) {
            String str = "";
            if (i != 0) {
                if (i != 1) {
                    int length = repeat.length();
                    str = "";
                    if (length != 0) {
                        if (length != 1) {
                            StringBuilder sb = new StringBuilder(repeat.length() * i);
                            if (1 <= i) {
                                while (true) {
                                    sb.append(repeat);
                                    if (i2 == i) {
                                        break;
                                    }
                                    i2++;
                                }
                            }
                            str = sb.toString();
                            Intrinsics.m1831d(str, "sb.toString()");
                        } else {
                            char charAt = repeat.charAt(0);
                            char[] cArr = new char[i];
                            for (int i3 = 0; i3 < i; i3++) {
                                cArr[i3] = charAt;
                            }
                            str = new String(cArr);
                        }
                    }
                } else {
                    str = repeat.toString();
                }
            }
            return str;
        }
        throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i + '.').toString());
    }

    @NotNull
    /* renamed from: v */
    public static final String m1481v(@NotNull String replace, char c, char c2, boolean z) {
        String m;
        Intrinsics.m1830e(replace, "$this$replace");
        if (!z) {
            String replace2 = replace.replace(c, c2);
            Intrinsics.m1831d(replace2, "(this as java.lang.Strin…replace(oldChar, newChar)");
            return replace2;
        }
        m = SequencesKt___SequencesKt.m1617m(StringsKt__StringsKt.m1429s0(replace, new char[]{c}, z, 0, 4, null), String.valueOf(c2), null, null, 0, null, null, 62, null);
        return m;
    }

    @NotNull
    /* renamed from: w */
    public static final String m1480w(@NotNull String replace, @NotNull String oldValue, @NotNull String newValue, boolean z) {
        String m;
        Intrinsics.m1830e(replace, "$this$replace");
        Intrinsics.m1830e(oldValue, "oldValue");
        Intrinsics.m1830e(newValue, "newValue");
        m = SequencesKt___SequencesKt.m1617m(StringsKt__StringsKt.m1428t0(replace, new String[]{oldValue}, z, 0, 4, null), newValue, null, null, 0, null, null, 62, null);
        return m;
    }

    /* renamed from: x */
    public static /* synthetic */ String m1479x(String str, char c, char c2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return m1481v(str, c, c2, z);
    }

    /* renamed from: y */
    public static /* synthetic */ String m1478y(String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return m1480w(str, str2, str3, z);
    }

    /* renamed from: z */
    public static boolean m1477z(@NotNull String startsWith, @NotNull String prefix, int i, boolean z) {
        Intrinsics.m1830e(startsWith, "$this$startsWith");
        Intrinsics.m1830e(prefix, "prefix");
        return !z ? startsWith.startsWith(prefix, i) : m1484s(startsWith, i, prefix, 0, prefix.length(), z);
    }
}
