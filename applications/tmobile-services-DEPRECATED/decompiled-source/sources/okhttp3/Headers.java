package okhttp3;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0007\u0018�� 42\u00020\u00012\u00020\u0002:\u000254B\u0017\b\u0002\u0012\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u000b0/¢\u0006\u0004\b2\u00103J\r\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0086\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\"\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00190\u0018H\u0096\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u0015¢\u0006\u0004\b\f\u0010\u001dJ\u0013\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001e¢\u0006\u0004\b\u001f\u0010 J\r\u0010\"\u001a\u00020!¢\u0006\u0004\b\"\u0010#J\u000f\u0010%\u001a\u00020\u0015H\u0007¢\u0006\u0004\b$\u0010\u0017J\u001f\u0010(\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0'0&¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u000bH\u0016¢\u0006\u0004\b*\u0010+J\u0015\u0010,\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u0015¢\u0006\u0004\b,\u0010\u001dJ\u001b\u0010-\u001a\b\u0012\u0004\u0012\u00020\u000b0'2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b-\u0010.R\u001c\u00100\u001a\b\u0012\u0004\u0012\u00020\u000b0/8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0013\u0010%\u001a\u00020\u00158G@\u0006¢\u0006\u0006\u001a\u0004\b%\u0010\u0017¨\u00066"}, d2 = {"Lokhttp3/Headers;", "Ljava/lang/Iterable;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "byteCount", "()J", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "name", "get", "(Ljava/lang/String;)Ljava/lang/String;", "Ljava/util/Date;", "getDate", "(Ljava/lang/String;)Ljava/util/Date;", "Ljava/time/Instant;", "getInstant", "(Ljava/lang/String;)Ljava/time/Instant;", "", "hashCode", "()I", "", "Lkotlin/Pair;", "iterator", "()Ljava/util/Iterator;", FirebaseAnalytics.Param.INDEX, "(I)Ljava/lang/String;", "", "names", "()Ljava/util/Set;", "Lokhttp3/Headers$Builder;", "newBuilder", "()Lokhttp3/Headers$Builder;", "-deprecated_size", "size", "", "", "toMultimap", "()Ljava/util/Map;", "toString", "()Ljava/lang/String;", FirebaseAnalytics.Param.VALUE, "values", "(Ljava/lang/String;)Ljava/util/List;", "", "namesAndValues", "[Ljava/lang/String;", "<init>", "([Ljava/lang/String;)V", "Companion", "Builder", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/Headers.class */
public final class Headers implements Iterable<Pair<? extends String, ? extends String>>, KMappedMarker {
    public static final Companion Companion = new Companion(null);
    private final String[] namesAndValues;

    @Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010!\n\u0002\b\u0007\u0018��B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010\u0003\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\u0003\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0003\u0010\bJ\u001d\u0010\u0003\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\t¢\u0006\u0004\b\u0003\u0010\nJ\u001d\u0010\u0003\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020��2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0001H��¢\u0006\u0004\b\u0010\u0010\u0004J\u001f\u0010\u0011\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H��¢\u0006\u0004\b\u0010\u0010\u000bJ\u001d\u0010\u0012\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001¢\u0006\u0004\b\u0012\u0010\u000bJ\r\u0010\u0013\u001a\u00020\f¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0086\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u0001¢\u0006\u0004\b\u0017\u0010\u0004J \u0010\u0018\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0004\b\u0018\u0010\bJ \u0010\u0018\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\tH\u0086\u0002¢\u0006\u0004\b\u0018\u0010\nJ \u0010\u0018\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0086\u0002¢\u0006\u0004\b\u0018\u0010\u000bR\"\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00010\u00198��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"Lokhttp3/Headers$Builder;", "", "line", "add", "(Ljava/lang/String;)Lokhttp3/Headers$Builder;", "name", "Ljava/time/Instant;", FirebaseAnalytics.Param.VALUE, "(Ljava/lang/String;Ljava/time/Instant;)Lokhttp3/Headers$Builder;", "Ljava/util/Date;", "(Ljava/lang/String;Ljava/util/Date;)Lokhttp3/Headers$Builder;", "(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;", "Lokhttp3/Headers;", "headers", "addAll", "(Lokhttp3/Headers;)Lokhttp3/Headers$Builder;", "addLenient$okhttp", "addLenient", "addUnsafeNonAscii", "build", "()Lokhttp3/Headers;", "get", "(Ljava/lang/String;)Ljava/lang/String;", "removeAll", "set", "", "namesAndValues", "Ljava/util/List;", "getNamesAndValues$okhttp", "()Ljava/util/List;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/Headers$Builder.class */
    public static final class Builder {
        @NotNull
        private final List<String> namesAndValues = new ArrayList(20);

        @NotNull
        public final Builder add(@NotNull String line) {
            int T;
            CharSequence F0;
            Intrinsics.m1830e(line, "line");
            T = StringsKt__StringsKt.m1454T(line, ':', 0, false, 6, null);
            if (T != -1) {
                String substring = line.substring(0, T);
                Intrinsics.m1831d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                if (substring != null) {
                    F0 = StringsKt__StringsKt.m1468F0(substring);
                    String obj = F0.toString();
                    String substring2 = line.substring(T + 1);
                    Intrinsics.m1831d(substring2, "(this as java.lang.String).substring(startIndex)");
                    add(obj, substring2);
                    return this;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
            }
            throw new IllegalArgumentException(("Unexpected header: " + line).toString());
        }

        @NotNull
        public final Builder add(@NotNull String name, @NotNull String value) {
            Intrinsics.m1830e(name, "name");
            Intrinsics.m1830e(value, "value");
            Headers.Companion.checkName(name);
            Headers.Companion.checkValue(value, name);
            addLenient$okhttp(name, value);
            return this;
        }

        @IgnoreJRERequirement
        @NotNull
        public final Builder add(@NotNull String name, @NotNull Instant value) {
            Intrinsics.m1830e(name, "name");
            Intrinsics.m1830e(value, "value");
            add(name, new Date(value.toEpochMilli()));
            return this;
        }

        @NotNull
        public final Builder add(@NotNull String name, @NotNull Date value) {
            Intrinsics.m1830e(name, "name");
            Intrinsics.m1830e(value, "value");
            add(name, DatesKt.toHttpDateString(value));
            return this;
        }

        @NotNull
        public final Builder addAll(@NotNull Headers headers) {
            Intrinsics.m1830e(headers, "headers");
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                addLenient$okhttp(headers.name(i), headers.value(i));
            }
            return this;
        }

        @NotNull
        public final Builder addLenient$okhttp(@NotNull String line) {
            int T;
            Intrinsics.m1830e(line, "line");
            T = StringsKt__StringsKt.m1454T(line, ':', 1, false, 4, null);
            if (T != -1) {
                String substring = line.substring(0, T);
                Intrinsics.m1831d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                String substring2 = line.substring(T + 1);
                Intrinsics.m1831d(substring2, "(this as java.lang.String).substring(startIndex)");
                addLenient$okhttp(substring, substring2);
            } else if (line.charAt(0) == ':') {
                String substring3 = line.substring(1);
                Intrinsics.m1831d(substring3, "(this as java.lang.String).substring(startIndex)");
                addLenient$okhttp("", substring3);
            } else {
                addLenient$okhttp("", line);
            }
            return this;
        }

        @NotNull
        public final Builder addLenient$okhttp(@NotNull String name, @NotNull String value) {
            CharSequence F0;
            Intrinsics.m1830e(name, "name");
            Intrinsics.m1830e(value, "value");
            this.namesAndValues.add(name);
            List<String> list = this.namesAndValues;
            F0 = StringsKt__StringsKt.m1468F0(value);
            list.add(F0.toString());
            return this;
        }

        @NotNull
        public final Builder addUnsafeNonAscii(@NotNull String name, @NotNull String value) {
            Intrinsics.m1830e(name, "name");
            Intrinsics.m1830e(value, "value");
            Headers.Companion.checkName(name);
            addLenient$okhttp(name, value);
            return this;
        }

        @NotNull
        public final Headers build() {
            Object[] array = this.namesAndValues.toArray(new String[0]);
            if (array != null) {
                return new Headers((String[]) array, null);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }

        /* JADX WARN: Incorrect condition in loop: B:9:0x0051 */
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String get(@org.jetbrains.annotations.NotNull java.lang.String r5) {
            /*
                r4 = this;
                r0 = r5
                java.lang.String r1 = "name"
                kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
                r0 = r4
                java.util.List<java.lang.String> r0 = r0.namesAndValues
                int r0 = r0.size()
                r1 = 2
                int r0 = r0 - r1
                r1 = 0
                kotlin.ranges.IntProgression r0 = kotlin.ranges.RangesKt.m1717g(r0, r1)
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
                if (r0 < 0) goto L_0x0039
                r0 = r7
                r1 = r8
                if (r0 > r1) goto L_0x0072
                goto L_0x003f
            L_0x0039:
                r0 = r7
                r1 = r8
                if (r0 < r1) goto L_0x0072
            L_0x003f:
                r0 = r5
                r1 = r4
                java.util.List<java.lang.String> r1 = r1.namesAndValues
                r2 = r7
                java.lang.Object r1 = r1.get(r2)
                java.lang.String r1 = (java.lang.String) r1
                r2 = 1
                boolean r0 = kotlin.text.StringsKt.m1518p(r0, r1, r2)
                if (r0 == 0) goto L_0x0064
                r0 = r4
                java.util.List<java.lang.String> r0 = r0.namesAndValues
                r1 = r7
                r2 = 1
                int r1 = r1 + r2
                java.lang.Object r0 = r0.get(r1)
                java.lang.String r0 = (java.lang.String) r0
                return r0
            L_0x0064:
                r0 = r7
                r1 = r8
                if (r0 == r1) goto L_0x0072
                r0 = r7
                r1 = r9
                int r0 = r0 + r1
                r7 = r0
                goto L_0x003f
            L_0x0072:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Headers.Builder.get(java.lang.String):java.lang.String");
        }

        @NotNull
        public final List<String> getNamesAndValues$okhttp() {
            return this.namesAndValues;
        }

        @NotNull
        public final Builder removeAll(@NotNull String name) {
            boolean p;
            Intrinsics.m1830e(name, "name");
            int i = 0;
            while (i < this.namesAndValues.size()) {
                int i2 = i;
                p = StringsKt__StringsJVMKt.m1487p(name, this.namesAndValues.get(i), true);
                if (p) {
                    this.namesAndValues.remove(i);
                    this.namesAndValues.remove(i);
                    i2 = i - 2;
                }
                i = i2 + 2;
            }
            return this;
        }

        @NotNull
        public final Builder set(@NotNull String name, @NotNull String value) {
            Intrinsics.m1830e(name, "name");
            Intrinsics.m1830e(value, "value");
            Headers.Companion.checkName(name);
            Headers.Companion.checkValue(value, name);
            removeAll(name);
            addLenient$okhttp(name, value);
            return this;
        }

        @IgnoreJRERequirement
        @NotNull
        public final Builder set(@NotNull String name, @NotNull Instant value) {
            Intrinsics.m1830e(name, "name");
            Intrinsics.m1830e(value, "value");
            return set(name, new Date(value.toEpochMilli()));
        }

        @NotNull
        public final Builder set(@NotNull String name, @NotNull Date value) {
            Intrinsics.m1830e(name, "name");
            Intrinsics.m1830e(value, "value");
            set(name, DatesKt.toHttpDateString(value));
            return this;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0006\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0007\u0010\bJ'\u0010\u000b\u001a\u0004\u0018\u00010\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\t2\u0006\u0010\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u0010\u001a\u00020\r2\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\t\"\u00020\u0001H\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ#\u0010\u000e\u001a\u00020\r2\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\t\"\u00020\u0001H\u0007¢\u0006\u0004\b\u0011\u0010\u000fJ#\u0010\u000e\u001a\u00020\r2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0012H\u0007¢\u0006\u0004\b\u0011\u0010\u0014J\u001f\u0010\u0015\u001a\u00020\r*\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0012H\u0007¢\u0006\u0004\b\u000e\u0010\u0014¨\u0006\u0018"}, d2 = {"Lokhttp3/Headers$Companion;", "", "name", "", "checkName", "(Ljava/lang/String;)V", FirebaseAnalytics.Param.VALUE, "checkValue", "(Ljava/lang/String;Ljava/lang/String;)V", "", "namesAndValues", "get", "([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "Lokhttp3/Headers;", "of", "([Ljava/lang/String;)Lokhttp3/Headers;", "headersOf", "-deprecated_of", "", "headers", "(Ljava/util/Map;)Lokhttp3/Headers;", "toHeaders", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/Headers$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkName(String str) {
            if (str.length() > 0) {
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    char charAt = str.charAt(i);
                    if (!('!' <= charAt && '~' >= charAt)) {
                        throw new IllegalArgumentException(Util.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str).toString());
                    }
                }
                return;
            }
            throw new IllegalArgumentException("name is empty".toString());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkValue(String str, String str2) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (!(charAt == '\t' || (' ' <= charAt && '~' >= charAt))) {
                    throw new IllegalArgumentException(Util.format("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt), Integer.valueOf(i), str2, str).toString());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Incorrect condition in loop: B:9:0x003e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String get(java.lang.String[] r5, java.lang.String r6) {
            /*
                r4 = this;
                r0 = r5
                int r0 = r0.length
                r1 = 2
                int r0 = r0 - r1
                r1 = 0
                kotlin.ranges.IntProgression r0 = kotlin.ranges.RangesKt.m1717g(r0, r1)
                r1 = 2
                kotlin.ranges.IntProgression r0 = kotlin.ranges.RangesKt.m1716h(r0, r1)
                r7 = r0
                r0 = r7
                int r0 = r0.m1738f()
                r8 = r0
                r0 = r7
                int r0 = r0.m1737g()
                r9 = r0
                r0 = r7
                int r0 = r0.m1736h()
                r10 = r0
                r0 = r10
                if (r0 < 0) goto L_0x002e
                r0 = r8
                r1 = r9
                if (r0 > r1) goto L_0x0059
                goto L_0x0035
            L_0x002e:
                r0 = r8
                r1 = r9
                if (r0 < r1) goto L_0x0059
            L_0x0035:
                r0 = r6
                r1 = r5
                r2 = r8
                r1 = r1[r2]
                r2 = 1
                boolean r0 = kotlin.text.StringsKt.m1518p(r0, r1, r2)
                if (r0 == 0) goto L_0x0048
                r0 = r5
                r1 = r8
                r2 = 1
                int r1 = r1 + r2
                r0 = r0[r1]
                return r0
            L_0x0048:
                r0 = r8
                r1 = r9
                if (r0 == r1) goto L_0x0059
                r0 = r8
                r1 = r10
                int r0 = r0 + r1
                r8 = r0
                goto L_0x0035
            L_0x0059:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Headers.Companion.get(java.lang.String[], java.lang.String):java.lang.String");
        }

        @Deprecated
        @JvmName
        @NotNull
        /* renamed from: -deprecated_of  reason: not valid java name */
        public final Headers m24646deprecated_of(@NotNull Map<String, String> headers) {
            Intrinsics.m1830e(headers, "headers");
            return m234of(headers);
        }

        @Deprecated
        @JvmName
        @NotNull
        /* renamed from: -deprecated_of  reason: not valid java name */
        public final Headers m24647deprecated_of(@NotNull String... namesAndValues) {
            Intrinsics.m1830e(namesAndValues, "namesAndValues");
            return m233of((String[]) Arrays.copyOf(namesAndValues, namesAndValues.length));
        }

        @JvmStatic
        @JvmName
        @NotNull
        /* renamed from: of */
        public final Headers m234of(@NotNull Map<String, String> toHeaders) {
            CharSequence F0;
            CharSequence F02;
            Intrinsics.m1830e(toHeaders, "$this$toHeaders");
            String[] strArr = new String[toHeaders.size() * 2];
            int i = 0;
            for (Map.Entry<String, String> entry : toHeaders.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (key != null) {
                    F0 = StringsKt__StringsKt.m1468F0(key);
                    String obj = F0.toString();
                    if (value != null) {
                        F02 = StringsKt__StringsKt.m1468F0(value);
                        String obj2 = F02.toString();
                        checkName(obj);
                        checkValue(obj2, obj);
                        strArr[i] = obj;
                        strArr[i + 1] = obj2;
                        i += 2;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                    }
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                }
            }
            return new Headers(strArr, null);
        }

        @JvmStatic
        @JvmName
        @NotNull
        /* renamed from: of */
        public final Headers m233of(@NotNull String... namesAndValues) {
            IntRange i;
            IntProgression h;
            CharSequence F0;
            Intrinsics.m1830e(namesAndValues, "namesAndValues");
            if (namesAndValues.length % 2 == 0) {
                Object clone = namesAndValues.clone();
                if (clone != null) {
                    String[] strArr = (String[]) clone;
                    int length = strArr.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        if (strArr[i2] != null) {
                            String str = strArr[i2];
                            if (str != null) {
                                F0 = StringsKt__StringsKt.m1468F0(str);
                                strArr[i2] = F0.toString();
                            } else {
                                throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                            }
                        } else {
                            throw new IllegalArgumentException("Headers cannot be null".toString());
                        }
                    }
                    i = RangesKt___RangesKt.m1706i(0, strArr.length);
                    h = RangesKt___RangesKt.m1707h(i, 2);
                    int f = h.m1738f();
                    int g = h.m1737g();
                    int h2 = h.m1736h();
                    if (h2 < 0 ? f >= g : f <= g) {
                        while (true) {
                            String str2 = strArr[f];
                            String str3 = strArr[f + 1];
                            checkName(str2);
                            checkValue(str3, str2);
                            if (f == g) {
                                break;
                            }
                            f += h2;
                        }
                    }
                    return new Headers(strArr, null);
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
            }
            throw new IllegalArgumentException("Expected alternating header names and values".toString());
        }
    }

    private Headers(String[] strArr) {
        this.namesAndValues = strArr;
    }

    public /* synthetic */ Headers(String[] strArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(strArr);
    }

    @JvmStatic
    @JvmName
    @NotNull
    /* renamed from: of */
    public static final Headers m236of(@NotNull Map<String, String> map) {
        return Companion.m234of(map);
    }

    @JvmStatic
    @JvmName
    @NotNull
    /* renamed from: of */
    public static final Headers m235of(@NotNull String... strArr) {
        return Companion.m233of(strArr);
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_size  reason: not valid java name */
    public final int m24645deprecated_size() {
        return size();
    }

    public final long byteCount() {
        String[] strArr = this.namesAndValues;
        long length = strArr.length * 2;
        for (int i = 0; i < strArr.length; i++) {
            length += this.namesAndValues[i].length();
        }
        return length;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof Headers) && Arrays.equals(this.namesAndValues, ((Headers) obj).namesAndValues);
    }

    @Nullable
    public final String get(@NotNull String name) {
        Intrinsics.m1830e(name, "name");
        return Companion.get(this.namesAndValues, name);
    }

    @Nullable
    public final Date getDate(@NotNull String name) {
        Intrinsics.m1830e(name, "name");
        String str = get(name);
        return str != null ? DatesKt.toHttpDateOrNull(str) : null;
    }

    @IgnoreJRERequirement
    @Nullable
    public final Instant getInstant(@NotNull String name) {
        Intrinsics.m1830e(name, "name");
        Date date = getDate(name);
        return date != null ? date.toInstant() : null;
    }

    public int hashCode() {
        return Arrays.hashCode(this.namesAndValues);
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<Pair<? extends String, ? extends String>> iterator() {
        int size = size();
        Pair[] pairArr = new Pair[size];
        for (int i = 0; i < size; i++) {
            pairArr[i] = TuplesKt.m2469a(name(i), value(i));
        }
        return ArrayIteratorKt.m1860a(pairArr);
    }

    @NotNull
    public final String name(int i) {
        return this.namesAndValues[i * 2];
    }

    @NotNull
    public final Set<String> names() {
        Comparator<String> q;
        q = StringsKt__StringsJVMKt.m1486q(StringCompanionObject.f20754a);
        TreeSet treeSet = new TreeSet(q);
        int size = size();
        for (int i = 0; i < size; i++) {
            treeSet.add(name(i));
        }
        Set<String> unmodifiableSet = Collections.unmodifiableSet(treeSet);
        Intrinsics.m1831d(unmodifiableSet, "Collections.unmodifiableSet(result)");
        return unmodifiableSet;
    }

    @NotNull
    public final Builder newBuilder() {
        Builder builder = new Builder();
        CollectionsKt__MutableCollectionsKt.m2158v(builder.getNamesAndValues$okhttp(), this.namesAndValues);
        return builder;
    }

    @JvmName
    public final int size() {
        return this.namesAndValues.length / 2;
    }

    @NotNull
    public final Map<String, List<String>> toMultimap() {
        Comparator<String> q;
        q = StringsKt__StringsJVMKt.m1486q(StringCompanionObject.f20754a);
        TreeMap treeMap = new TreeMap(q);
        int size = size();
        for (int i = 0; i < size; i++) {
            String name = name(i);
            Locale locale = Locale.US;
            Intrinsics.m1831d(locale, "Locale.US");
            if (name != null) {
                String lowerCase = name.toLowerCase(locale);
                Intrinsics.m1831d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                List list = (List) treeMap.get(lowerCase);
                List list2 = list;
                if (list == null) {
                    list2 = new ArrayList(2);
                    treeMap.put(lowerCase, list2);
                }
                list2.add(value(i));
            } else {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
        }
        return treeMap;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i = 0; i < size; i++) {
            sb.append(name(i));
            sb.append(": ");
            sb.append(value(i));
            sb.append("\n");
        }
        String sb2 = sb.toString();
        Intrinsics.m1831d(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    @NotNull
    public final String value(int i) {
        return this.namesAndValues[(i * 2) + 1];
    }

    @NotNull
    public final List<String> values(@NotNull String name) {
        List<String> list;
        boolean p;
        Intrinsics.m1830e(name, "name");
        int size = size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            arrayList = arrayList;
            p = StringsKt__StringsJVMKt.m1487p(name, name(i), true);
            if (p) {
                arrayList = arrayList;
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(value(i));
            }
        }
        if (arrayList != null) {
            list = Collections.unmodifiableList(arrayList);
            Intrinsics.m1831d(list, "Collections.unmodifiableList(result)");
        } else {
            list = CollectionsKt__CollectionsKt.m2175f();
        }
        return list;
    }
}
