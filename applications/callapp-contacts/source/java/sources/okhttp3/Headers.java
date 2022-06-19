package okhttp3;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import kotlin.C18538n;
import kotlin.C20126t;
import kotlin.Metadata;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18508b;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p534a.AbstractC18481a;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p530f.C18358a;
import kotlin.p530f.C18363d;
import kotlin.p532h.C18425p;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import org.apache.commons.lang3.StringUtils;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\"\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010 \n\u0002\b\u0006\u0018�� '2\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0002&'B\u0015\b\u0002\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u000b\u001a\u00020\fJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0012\u001a\u00020\u0003H\u0086\u0002J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0012\u001a\u00020\u0003J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0012\u001a\u00020\u0003H\u0007J\b\u0010\u0017\u001a\u00020\tH\u0016J\u001b\u0010\u0018\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0019H\u0096\u0002J\u000e\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\tJ\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00030\u001cJ\u0006\u0010\u001d\u001a\u00020\u001eJ\r\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b\u001fJ\u0018\u0010 \u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\"0!J\b\u0010#\u001a\u00020\u0003H\u0016J\u000e\u0010$\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\tJ\u0014\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00030\"2\u0006\u0010\u0012\u001a\u00020\u0003R\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u0011\u0010\b\u001a\u00020\t8G¢\u0006\u0006\u001a\u0004\b\b\u0010\n¨\u0006("}, m4298d2 = {"Lokhttp3/Headers;", "", "Lkotlin/Pair;", "", "namesAndValues", "", "([Ljava/lang/String;)V", "[Ljava/lang/String;", "size", "", "()I", "byteCount", "", "equals", "", "other", "", "get", "name", "getDate", "Ljava/util/Date;", "getInstant", "Ljava/time/Instant;", "hashCode", "iterator", "", "index", "names", "", "newBuilder", "Lokhttp3/Headers$Builder;", "-deprecated_size", "toMultimap", "", "", "toString", "value", "values", "Builder", "Companion", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/Headers.class */
public final class Headers implements Iterable<C18538n<? extends String, ? extends String>>, AbstractC18481a {
    public static final Companion Companion = new Companion(null);
    private final String[] namesAndValues;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0005J\u0018\u0010\b\u001a\u00020��2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0016\u0010\b\u001a\u00020��2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\rJ\u0016\u0010\b\u001a\u00020��2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020��2\u0006\u0010\u000f\u001a\u00020\u0010J\u0015\u0010\u0011\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0005H��¢\u0006\u0002\b\u0012J\u001d\u0010\u0011\u001a\u00020��2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H��¢\u0006\u0002\b\u0012J\u0016\u0010\u0013\u001a\u00020��2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005J\u0006\u0010\u0014\u001a\u00020\u0010J\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0086\u0002J\u000e\u0010\u0016\u001a\u00020��2\u0006\u0010\n\u001a\u00020\u0005J\u0019\u0010\u0017\u001a\u00020��2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fH\u0087\u0002J\u0019\u0010\u0017\u001a\u00020��2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\rH\u0086\u0002J\u0019\u0010\u0017\u001a\u00020��2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0086\u0002R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0018"}, m4298d2 = {"Lokhttp3/Headers$Builder;", "", "()V", "namesAndValues", "", "", "getNamesAndValues$okhttp", "()Ljava/util/List;", "add", "line", "name", "value", "Ljava/time/Instant;", "Ljava/util/Date;", "addAll", "headers", "Lokhttp3/Headers;", "addLenient", "addLenient$okhttp", "addUnsafeNonAscii", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "get", "removeAll", "set", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/Headers$Builder.class */
    public static final class Builder {
        private final List<String> namesAndValues = new ArrayList(20);

        public final Builder add(String line) {
            C18524p.m3840d(line, "line");
            Builder builder = this;
            int a = C18425p.m3949a((CharSequence) line, ':', 0, false, 6);
            if (a != -1) {
                String substring = line.substring(0, a);
                C18524p.m3843b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                Objects.requireNonNull(substring, "null cannot be cast to non-null type kotlin.CharSequence");
                String obj = C18425p.m3930b((CharSequence) substring).toString();
                String substring2 = line.substring(a + 1);
                C18524p.m3843b(substring2, "(this as java.lang.String).substring(startIndex)");
                builder.add(obj, substring2);
                return builder;
            }
            throw new IllegalArgumentException("Unexpected header: ".concat(String.valueOf(line)).toString());
        }

        public final Builder add(String name, String value) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(value, "value");
            Builder builder = this;
            Headers.Companion.checkName(name);
            Headers.Companion.checkValue(value, name);
            builder.addLenient$okhttp(name, value);
            return builder;
        }

        public final Builder add(String name, Instant value) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(value, "value");
            Builder builder = this;
            builder.add(name, new Date(value.toEpochMilli()));
            return builder;
        }

        public final Builder add(String name, Date value) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(value, "value");
            Builder builder = this;
            builder.add(name, DatesKt.toHttpDateString(value));
            return builder;
        }

        public final Builder addAll(Headers headers) {
            C18524p.m3840d(headers, "headers");
            Builder builder = this;
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                builder.addLenient$okhttp(headers.name(i), headers.value(i));
            }
            return builder;
        }

        public final Builder addLenient$okhttp(String line) {
            C18524p.m3840d(line, "line");
            Builder builder = this;
            int a = C18425p.m3949a((CharSequence) line, ':', 1, false, 4);
            if (a != -1) {
                String substring = line.substring(0, a);
                C18524p.m3843b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                String substring2 = line.substring(a + 1);
                C18524p.m3843b(substring2, "(this as java.lang.String).substring(startIndex)");
                builder.addLenient$okhttp(substring, substring2);
            } else if (line.charAt(0) == ':') {
                String substring3 = line.substring(1);
                C18524p.m3843b(substring3, "(this as java.lang.String).substring(startIndex)");
                builder.addLenient$okhttp("", substring3);
            } else {
                builder.addLenient$okhttp("", line);
            }
            return builder;
        }

        public final Builder addLenient$okhttp(String name, String value) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(value, "value");
            Builder builder = this;
            builder.namesAndValues.add(name);
            builder.namesAndValues.add(C18425p.m3930b((CharSequence) value).toString());
            return builder;
        }

        public final Builder addUnsafeNonAscii(String name, String value) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(value, "value");
            Builder builder = this;
            Headers.Companion.checkName(name);
            builder.addLenient$okhttp(name, value);
            return builder;
        }

        public final Headers build() {
            Object[] array = this.namesAndValues.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            return new Headers((String[]) array, null);
        }

        public final String get(String name) {
            C18524p.m3840d(name, "name");
            C18358a a = C18363d.m4053a(C18363d.m4056a(this.namesAndValues.size() - 2, 0), 2);
            int i = a.f63459a;
            int i2 = a.f63460b;
            int i3 = a.f63461c;
            if (i3 >= 0) {
                if (i > i2) {
                    return null;
                }
            } else if (i < i2) {
                return null;
            }
            while (!C18425p.m3961a(name, this.namesAndValues.get(i))) {
                if (i == i2) {
                    return null;
                }
                i += i3;
            }
            return this.namesAndValues.get(i + 1);
        }

        public final List<String> getNamesAndValues$okhttp() {
            return this.namesAndValues;
        }

        public final Builder removeAll(String name) {
            C18524p.m3840d(name, "name");
            Builder builder = this;
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < builder.namesAndValues.size()) {
                    int i3 = i2;
                    if (C18425p.m3961a(name, builder.namesAndValues.get(i2))) {
                        builder.namesAndValues.remove(i2);
                        builder.namesAndValues.remove(i2);
                        i3 = i2 - 2;
                    }
                    i = i3 + 2;
                } else {
                    return builder;
                }
            }
        }

        public final Builder set(String name, String value) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(value, "value");
            Builder builder = this;
            Headers.Companion.checkName(name);
            Headers.Companion.checkValue(value, name);
            builder.removeAll(name);
            builder.addLenient$okhttp(name, value);
            return builder;
        }

        public final Builder set(String name, Instant value) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(value, "value");
            return set(name, new Date(value.toEpochMilli()));
        }

        public final Builder set(String name, Date value) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(value, "value");
            Builder builder = this;
            builder.set(name, DatesKt.toHttpDateString(value));
            return builder;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J%\u0010\t\u001a\u0004\u0018\u00010\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¢\u0006\u0002\u0010\fJ#\u0010\r\u001a\u00020\u000e2\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u000b\"\u00020\u0006H\u0007¢\u0006\u0004\b\u000f\u0010\u0010J#\u0010\u000f\u001a\u00020\u000e2\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u000b\"\u00020\u0006H\u0007¢\u0006\u0004\b\u0011\u0010\u0010J!\u0010\u000f\u001a\u00020\u000e2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0013H\u0007¢\u0006\u0002\b\u0011J\u001d\u0010\u0014\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0013H\u0007¢\u0006\u0002\b\u000f¨\u0006\u0015"}, m4298d2 = {"Lokhttp3/Headers$Companion;", "", "()V", "checkName", "", "name", "", "checkValue", "value", "get", "namesAndValues", "", "([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "headersOf", "Lokhttp3/Headers;", "of", "([Ljava/lang/String;)Lokhttp3/Headers;", "-deprecated_of", "headers", "", "toHeaders", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/Headers$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

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

        public final void checkValue(String str, String str2) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (!(charAt == '\t' || (' ' <= charAt && '~' >= charAt))) {
                    throw new IllegalArgumentException(Util.format("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt), Integer.valueOf(i), str2, str).toString());
                }
            }
        }

        public final String get(String[] strArr, String str) {
            C18358a a = C18363d.m4053a(C18363d.m4056a(strArr.length - 2, 0), 2);
            int i = a.f63459a;
            int i2 = a.f63460b;
            int i3 = a.f63461c;
            if (i3 >= 0) {
                if (i > i2) {
                    return null;
                }
            } else if (i < i2) {
                return null;
            }
            while (!C18425p.m3961a(str, strArr[i])) {
                if (i == i2) {
                    return null;
                }
                i += i3;
            }
            return strArr[i + 1];
        }

        /* renamed from: -deprecated_of */
        public final Headers m54241deprecated_of(Map<String, String> headers) {
            C18524p.m3840d(headers, "headers");
            return m616of(headers);
        }

        /* renamed from: -deprecated_of */
        public final Headers m54242deprecated_of(String... namesAndValues) {
            C18524p.m3840d(namesAndValues, "namesAndValues");
            return m615of((String[]) Arrays.copyOf(namesAndValues, namesAndValues.length));
        }

        /* renamed from: of */
        public final Headers m616of(Map<String, String> toHeaders) {
            C18524p.m3840d(toHeaders, "$this$toHeaders");
            String[] strArr = new String[toHeaders.size() * 2];
            int i = 0;
            for (Map.Entry<String, String> entry : toHeaders.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                Objects.requireNonNull(key, "null cannot be cast to non-null type kotlin.CharSequence");
                String obj = C18425p.m3930b((CharSequence) key).toString();
                Objects.requireNonNull(value, "null cannot be cast to non-null type kotlin.CharSequence");
                String obj2 = C18425p.m3930b((CharSequence) value).toString();
                Companion companion = this;
                companion.checkName(obj);
                companion.checkValue(obj2, obj);
                strArr[i] = obj;
                strArr[i + 1] = obj2;
                i += 2;
            }
            return new Headers(strArr, null);
        }

        /* renamed from: of */
        public final Headers m615of(String... namesAndValues) {
            C18524p.m3840d(namesAndValues, "namesAndValues");
            if (namesAndValues.length % 2 == 0) {
                Object clone = namesAndValues.clone();
                Objects.requireNonNull(clone, "null cannot be cast to non-null type kotlin.Array<kotlin.String>");
                String[] strArr = (String[]) clone;
                int length = strArr.length;
                for (int i = 0; i < length; i++) {
                    if (!(strArr[i] != null)) {
                        throw new IllegalArgumentException("Headers cannot be null".toString());
                    }
                    String str = strArr[i];
                    Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
                    strArr[i] = C18425p.m3930b((CharSequence) str).toString();
                }
                C18358a a = C18363d.m4053a(C18363d.m4052b(0, strArr.length), 2);
                int i2 = a.f63459a;
                int i3 = a.f63460b;
                int i4 = a.f63461c;
                if (i4 < 0 ? i2 >= i3 : i2 <= i3) {
                    while (true) {
                        String str2 = strArr[i2];
                        String str3 = strArr[i2 + 1];
                        Companion companion = this;
                        companion.checkName(str2);
                        companion.checkValue(str3, str2);
                        if (i2 == i3) {
                            break;
                        }
                        i2 += i4;
                    }
                }
                return new Headers(strArr, null);
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

    /* renamed from: of */
    public static final Headers m618of(Map<String, String> map) {
        return Companion.m616of(map);
    }

    /* renamed from: of */
    public static final Headers m617of(String... strArr) {
        return Companion.m615of(strArr);
    }

    /* renamed from: -deprecated_size */
    public final int m54240deprecated_size() {
        return size();
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    public final long byteCount() {
        String[] strArr = this.namesAndValues;
        char length = strArr.length * 2;
        for (int i = 0; i < strArr.length; i++) {
            length += this.namesAndValues[i].length();
        }
        return length;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof Headers) && Arrays.equals(this.namesAndValues, ((Headers) obj).namesAndValues);
    }

    public final String get(String name) {
        C18524p.m3840d(name, "name");
        return Companion.get(this.namesAndValues, name);
    }

    public final Date getDate(String name) {
        C18524p.m3840d(name, "name");
        String str = get(name);
        if (str != null) {
            return DatesKt.toHttpDateOrNull(str);
        }
        return null;
    }

    public final Instant getInstant(String name) {
        C18524p.m3840d(name, "name");
        Date date = getDate(name);
        if (date != null) {
            return date.toInstant();
        }
        return null;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.namesAndValues);
    }

    @Override // java.lang.Iterable
    public final Iterator<C18538n<? extends String, ? extends String>> iterator() {
        int size = size();
        C18538n[] c18538nArr = new C18538n[size];
        for (int i = 0; i < size; i++) {
            c18538nArr[i] = C20126t.m1103a(name(i), value(i));
        }
        return C18508b.m3860a(c18538nArr);
    }

    public final String name(int i) {
        return this.namesAndValues[i * 2];
    }

    public final Set<String> names() {
        TreeSet treeSet = new TreeSet(C18425p.m3955a(C18500ag.f63594a));
        int size = size();
        for (int i = 0; i < size; i++) {
            treeSet.add(name(i));
        }
        Set<String> unmodifiableSet = Collections.unmodifiableSet(treeSet);
        C18524p.m3843b(unmodifiableSet, "Collections.unmodifiableSet(result)");
        return unmodifiableSet;
    }

    public final Builder newBuilder() {
        Builder builder = new Builder();
        C18282n.m4157a((Collection) builder.getNamesAndValues$okhttp(), (Object[]) this.namesAndValues);
        return builder;
    }

    public final int size() {
        return this.namesAndValues.length / 2;
    }

    public final Map<String, List<String>> toMultimap() {
        TreeMap treeMap = new TreeMap(C18425p.m3955a(C18500ag.f63594a));
        int size = size();
        for (int i = 0; i < size; i++) {
            String name = name(i);
            Locale locale = Locale.US;
            C18524p.m3843b(locale, "Locale.US");
            Objects.requireNonNull(name, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = name.toLowerCase(locale);
            C18524p.m3843b(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            List list = (List) treeMap.get(lowerCase);
            ArrayList arrayList = list;
            if (list == null) {
                arrayList = new ArrayList(2);
                treeMap.put(lowerCase, arrayList);
            }
            arrayList.add(value(i));
        }
        return treeMap;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i = 0; i < size; i++) {
            sb.append(name(i));
            sb.append(": ");
            sb.append(value(i));
            sb.append(StringUtils.f67179LF);
        }
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    public final String value(int i) {
        return this.namesAndValues[(i * 2) + 1];
    }

    public final List<String> values(String name) {
        C18524p.m3840d(name, "name");
        int size = size();
        ArrayList arrayList = null;
        int i = 0;
        while (i < size) {
            ArrayList arrayList2 = arrayList;
            if (C18425p.m3961a(name, name(i))) {
                arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList(2);
                }
                arrayList2.add(value(i));
            }
            i++;
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            List<String> unmodifiableList = Collections.unmodifiableList(arrayList);
            C18524p.m3843b(unmodifiableList, "Collections.unmodifiableList(result)");
            return unmodifiableList;
        }
        return C18297z.f63400a;
    }
}
