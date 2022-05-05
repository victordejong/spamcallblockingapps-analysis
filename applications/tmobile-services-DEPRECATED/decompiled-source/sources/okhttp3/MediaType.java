package okhttp3;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u0011\n\u0002\b\u0006\u0018�� \u001e:\u0001\u001eB/\b\u0002\u0012\u0006\u0010\u0017\u001a\u00020\r\u0012\u0006\u0010\u0016\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\r\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\r0\u0019¢\u0006\u0004\b\u001c\u0010\u001dJ\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u000f\u0010\u0016\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0015\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001c\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\r0\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0019\u0010\u0013\u001a\u00020\r8\u0007@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0018\u001a\u0004\b\u0013\u0010\u0012R\u0019\u0010\u0016\u001a\u00020\r8\u0007@\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0018\u001a\u0004\b\u0016\u0010\u0012¨\u0006\u001f"}, d2 = {"Lokhttp3/MediaType;", "Ljava/nio/charset/Charset;", "defaultValue", "charset", "(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "name", "parameter", "(Ljava/lang/String;)Ljava/lang/String;", "-deprecated_subtype", "()Ljava/lang/String;", "subtype", "toString", "-deprecated_type", "type", "mediaType", "Ljava/lang/String;", "", "parameterNamesAndValues", "[Ljava/lang/String;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V", "Companion", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/MediaType.class */
public final class MediaType {
    private static final String QUOTED = "\"([^\"]*)\"";
    private static final String TOKEN = "([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)";
    private final String mediaType;
    private final String[] parameterNamesAndValues;
    @NotNull
    private final String subtype;
    @NotNull
    private final String type;
    public static final Companion Companion = new Companion(null);
    private static final Pattern TYPE_SUBTYPE = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    private static final Pattern PARAMETER = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\b\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0007\u0010\u0005J\u0013\u0010\t\u001a\u00020\u0003*\u00020\u0001H\u0007¢\u0006\u0004\b\u0006\u0010\u0005J\u0015\u0010\n\u001a\u0004\u0018\u00010\u0003*\u00020\u0001H\u0007¢\u0006\u0004\b\b\u0010\u0005R\u001e\u0010\r\u001a\n \f*\u0004\u0018\u00010\u000b0\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u000f\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0010R\u001e\u0010\u0012\u001a\n \f*\u0004\u0018\u00010\u000b0\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u000e¨\u0006\u0015"}, d2 = {"Lokhttp3/MediaType$Companion;", "", "mediaType", "Lokhttp3/MediaType;", "-deprecated_get", "(Ljava/lang/String;)Lokhttp3/MediaType;", "get", "-deprecated_parse", "parse", "toMediaType", "toMediaTypeOrNull", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "PARAMETER", "Ljava/util/regex/Pattern;", "QUOTED", "Ljava/lang/String;", "TOKEN", "TYPE_SUBTYPE", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/MediaType$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Deprecated
        @JvmName
        @NotNull
        /* renamed from: -deprecated_get  reason: not valid java name */
        public final MediaType m24678deprecated_get(@NotNull String mediaType) {
            Intrinsics.m1830e(mediaType, "mediaType");
            return get(mediaType);
        }

        @Deprecated
        @JvmName
        @Nullable
        /* renamed from: -deprecated_parse  reason: not valid java name */
        public final MediaType m24679deprecated_parse(@NotNull String mediaType) {
            Intrinsics.m1830e(mediaType, "mediaType");
            return parse(mediaType);
        }

        @JvmStatic
        @JvmName
        @NotNull
        public final MediaType get(@NotNull String toMediaType) {
            String str;
            boolean C;
            boolean o;
            Intrinsics.m1830e(toMediaType, "$this$toMediaType");
            Matcher matcher = MediaType.TYPE_SUBTYPE.matcher(toMediaType);
            if (matcher.lookingAt()) {
                String group = matcher.group(1);
                Intrinsics.m1831d(group, "typeSubtype.group(1)");
                Locale locale = Locale.US;
                Intrinsics.m1831d(locale, "Locale.US");
                if (group != null) {
                    String lowerCase = group.toLowerCase(locale);
                    Intrinsics.m1831d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                    String group2 = matcher.group(2);
                    Intrinsics.m1831d(group2, "typeSubtype.group(2)");
                    Locale locale2 = Locale.US;
                    Intrinsics.m1831d(locale2, "Locale.US");
                    if (group2 != null) {
                        String lowerCase2 = group2.toLowerCase(locale2);
                        Intrinsics.m1831d(lowerCase2, "(this as java.lang.String).toLowerCase(locale)");
                        ArrayList arrayList = new ArrayList();
                        Matcher matcher2 = MediaType.PARAMETER.matcher(toMediaType);
                        int end = matcher.end();
                        while (end < toMediaType.length()) {
                            matcher2.region(end, toMediaType.length());
                            if (matcher2.lookingAt()) {
                                String group3 = matcher2.group(1);
                                if (group3 == null) {
                                    end = matcher2.end();
                                } else {
                                    String group4 = matcher2.group(2);
                                    if (group4 == null) {
                                        str = matcher2.group(3);
                                    } else {
                                        str = group4;
                                        C = StringsKt__StringsJVMKt.m1491C(group4, "'", false, 2, null);
                                        if (C) {
                                            str = group4;
                                            o = StringsKt__StringsJVMKt.m1488o(group4, "'", false, 2, null);
                                            if (o) {
                                                str = group4;
                                                if (group4.length() > 2) {
                                                    str = group4.substring(1, group4.length() - 1);
                                                    Intrinsics.m1831d(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                                                }
                                            }
                                        }
                                    }
                                    arrayList.add(group3);
                                    arrayList.add(str);
                                    end = matcher2.end();
                                }
                            } else {
                                StringBuilder sb = new StringBuilder();
                                sb.append("Parameter is not formatted correctly: \"");
                                String substring = toMediaType.substring(end);
                                Intrinsics.m1831d(substring, "(this as java.lang.String).substring(startIndex)");
                                sb.append(substring);
                                sb.append("\" for: \"");
                                sb.append(toMediaType);
                                sb.append('\"');
                                throw new IllegalArgumentException(sb.toString().toString());
                            }
                        }
                        Object[] array = arrayList.toArray(new String[0]);
                        if (array != null) {
                            return new MediaType(toMediaType, lowerCase, lowerCase2, (String[]) array, null);
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            throw new IllegalArgumentException(("No subtype found for: \"" + toMediaType + '\"').toString());
        }

        @JvmStatic
        @JvmName
        @Nullable
        public final MediaType parse(@NotNull String toMediaTypeOrNull) {
            MediaType mediaType;
            Intrinsics.m1830e(toMediaTypeOrNull, "$this$toMediaTypeOrNull");
            try {
                mediaType = get(toMediaTypeOrNull);
            } catch (IllegalArgumentException e) {
                mediaType = null;
            }
            return mediaType;
        }
    }

    private MediaType(String str, String str2, String str3, String[] strArr) {
        this.mediaType = str;
        this.type = str2;
        this.subtype = str3;
        this.parameterNamesAndValues = strArr;
    }

    public /* synthetic */ MediaType(String str, String str2, String str3, String[] strArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, strArr);
    }

    public static /* synthetic */ Charset charset$default(MediaType mediaType, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = null;
        }
        return mediaType.charset(charset);
    }

    @JvmStatic
    @JvmName
    @NotNull
    public static final MediaType get(@NotNull String str) {
        return Companion.get(str);
    }

    @JvmStatic
    @JvmName
    @Nullable
    public static final MediaType parse(@NotNull String str) {
        return Companion.parse(str);
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_subtype  reason: not valid java name */
    public final String m24676deprecated_subtype() {
        return this.subtype;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_type  reason: not valid java name */
    public final String m24677deprecated_type() {
        return this.type;
    }

    @JvmOverloads
    @Nullable
    public final Charset charset() {
        return charset$default(this, null, 1, null);
    }

    @JvmOverloads
    @Nullable
    public final Charset charset(@Nullable Charset charset) {
        String parameter = parameter("charset");
        Charset charset2 = charset;
        if (parameter != null) {
            try {
                charset2 = Charset.forName(parameter);
            } catch (IllegalArgumentException e) {
                charset2 = charset;
            }
        }
        return charset2;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof MediaType) && Intrinsics.m1834a(((MediaType) obj).mediaType, this.mediaType);
    }

    public int hashCode() {
        return this.mediaType.hashCode();
    }

    /* JADX WARN: Incorrect condition in loop: B:9:0x0042 */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String parameter(@org.jetbrains.annotations.NotNull java.lang.String r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "name"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = r4
            java.lang.String[] r0 = r0.parameterNamesAndValues
            kotlin.ranges.IntRange r0 = kotlin.collections.ArraysKt.m2308w(r0)
            r1 = 2
            kotlin.ranges.IntProgression r0 = kotlin.ranges.RangesKt.m1716h(r0, r1)
            r6 = r0
            r0 = r6
            int r0 = r0.m1738f()
            r7 = r0
            r0 = r6
            int r0 = r0.m1737g()
            r8 = r0
            r0 = r6
            int r0 = r0.m1736h()
            r9 = r0
            r0 = r9
            if (r0 < 0) goto L_0x0031
            r0 = r7
            r1 = r8
            if (r0 > r1) goto L_0x005c
            goto L_0x0037
        L_0x0031:
            r0 = r7
            r1 = r8
            if (r0 < r1) goto L_0x005c
        L_0x0037:
            r0 = r4
            java.lang.String[] r0 = r0.parameterNamesAndValues
            r1 = r7
            r0 = r0[r1]
            r1 = r5
            r2 = 1
            boolean r0 = kotlin.text.StringsKt.m1518p(r0, r1, r2)
            if (r0 == 0) goto L_0x004e
            r0 = r4
            java.lang.String[] r0 = r0.parameterNamesAndValues
            r1 = r7
            r2 = 1
            int r1 = r1 + r2
            r0 = r0[r1]
            return r0
        L_0x004e:
            r0 = r7
            r1 = r8
            if (r0 == r1) goto L_0x005c
            r0 = r7
            r1 = r9
            int r0 = r0 + r1
            r7 = r0
            goto L_0x0037
        L_0x005c:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.MediaType.parameter(java.lang.String):java.lang.String");
    }

    @JvmName
    @NotNull
    public final String subtype() {
        return this.subtype;
    }

    @NotNull
    public String toString() {
        return this.mediaType;
    }

    @JvmName
    @NotNull
    public final String type() {
        return this.type;
    }
}
