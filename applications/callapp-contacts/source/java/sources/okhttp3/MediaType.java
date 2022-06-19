package okhttp3;

import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
import kotlin.p530f.C18358a;
import kotlin.p530f.C18361c;
import kotlin.p530f.C18363d;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\u0018�� \u00182\u00020\u0001:\u0001\u0018B-\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\u0002\u0010\bJ\u0016\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fH\u0007J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0014\u001a\u00020\u0003J\r\u0010\u0005\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u0015J\b\u0010\u0016\u001a\u00020\u0003H\u0016J\r\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\tR\u0013\u0010\u0005\u001a\u00020\u00038\u0007¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\nR\u0013\u0010\u0004\u001a\u00020\u00038\u0007¢\u0006\b\n��\u001a\u0004\b\u0004\u0010\n¨\u0006\u0019"}, m4298d2 = {"Lokhttp3/MediaType;", "", "mediaType", "", "type", "subtype", "parameterNamesAndValues", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V", "[Ljava/lang/String;", "()Ljava/lang/String;", "charset", "Ljava/nio/charset/Charset;", "defaultValue", "equals", "", "other", "hashCode", "", MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, "name", "-deprecated_subtype", "toString", "-deprecated_type", "Companion", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/MediaType.class */
public final class MediaType {
    private static final String QUOTED = "\"([^\"]*)\"";
    private static final String TOKEN = "([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)";
    private final String mediaType;
    private final String[] parameterNamesAndValues;
    private final String subtype;
    private final String type;
    public static final Companion Companion = new Companion(null);
    private static final Pattern TYPE_SUBTYPE = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    private static final Pattern PARAMETER = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0007H\u0007¢\u0006\u0002\b\rJ\u0017\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\u0007H\u0007¢\u0006\u0002\b\u000fJ\u0011\u0010\u0010\u001a\u00020\u000b*\u00020\u0007H\u0007¢\u0006\u0002\b\nJ\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u000b*\u00020\u0007H\u0007¢\u0006\u0002\b\u000eR\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u0016\u0010\t\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, m4298d2 = {"Lokhttp3/MediaType$Companion;", "", "()V", "PARAMETER", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "QUOTED", "", "TOKEN", "TYPE_SUBTYPE", "get", "Lokhttp3/MediaType;", "mediaType", "-deprecated_get", "parse", "-deprecated_parse", "toMediaType", "toMediaTypeOrNull", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/MediaType$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: -deprecated_get */
        public final MediaType m54273deprecated_get(String mediaType) {
            C18524p.m3840d(mediaType, "mediaType");
            return get(mediaType);
        }

        /* renamed from: -deprecated_parse */
        public final MediaType m54274deprecated_parse(String mediaType) {
            C18524p.m3840d(mediaType, "mediaType");
            return parse(mediaType);
        }

        public final MediaType get(String toMediaType) {
            String str;
            C18524p.m3840d(toMediaType, "$this$toMediaType");
            String str2 = toMediaType;
            Matcher matcher = MediaType.TYPE_SUBTYPE.matcher(str2);
            if (!matcher.lookingAt()) {
                throw new IllegalArgumentException(("No subtype found for: \"" + toMediaType + '\"').toString());
            }
            String group = matcher.group(1);
            C18524p.m3843b(group, "typeSubtype.group(1)");
            Locale locale = Locale.US;
            C18524p.m3843b(locale, "Locale.US");
            Objects.requireNonNull(group, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = group.toLowerCase(locale);
            C18524p.m3843b(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            String group2 = matcher.group(2);
            C18524p.m3843b(group2, "typeSubtype.group(2)");
            Locale locale2 = Locale.US;
            C18524p.m3843b(locale2, "Locale.US");
            Objects.requireNonNull(group2, "null cannot be cast to non-null type java.lang.String");
            String lowerCase2 = group2.toLowerCase(locale2);
            C18524p.m3843b(lowerCase2, "(this as java.lang.String).toLowerCase(locale)");
            ArrayList arrayList = new ArrayList();
            Matcher matcher2 = MediaType.PARAMETER.matcher(str2);
            int end = matcher.end();
            while (true) {
                int i = end;
                if (i >= toMediaType.length()) {
                    Object[] array = arrayList.toArray(new String[0]);
                    Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                    return new MediaType(toMediaType, lowerCase, lowerCase2, (String[]) array, null);
                }
                matcher2.region(i, toMediaType.length());
                if (!matcher2.lookingAt()) {
                    StringBuilder sb = new StringBuilder("Parameter is not formatted correctly: \"");
                    String substring = toMediaType.substring(i);
                    C18524p.m3843b(substring, "(this as java.lang.String).substring(startIndex)");
                    sb.append(substring);
                    sb.append("\" for: \"");
                    sb.append(toMediaType);
                    sb.append('\"');
                    throw new IllegalArgumentException(sb.toString().toString());
                }
                String group3 = matcher2.group(1);
                if (group3 == null) {
                    end = matcher2.end();
                } else {
                    String group4 = matcher2.group(2);
                    if (group4 == null) {
                        str = matcher2.group(3);
                    } else {
                        str = group4;
                        if (C18425p.m3957a(group4, "'", false)) {
                            str = group4;
                            if (C18425p.m3954b(group4, "'", false)) {
                                str = group4;
                                if (group4.length() > 2) {
                                    str = group4.substring(1, group4.length() - 1);
                                    C18524p.m3843b(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                                }
                            }
                        }
                    }
                    ArrayList arrayList2 = arrayList;
                    arrayList2.add(group3);
                    arrayList2.add(str);
                    end = matcher2.end();
                }
            }
        }

        public final MediaType parse(String toMediaTypeOrNull) {
            MediaType mediaType;
            C18524p.m3840d(toMediaTypeOrNull, "$this$toMediaTypeOrNull");
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

    public static final MediaType get(String str) {
        return Companion.get(str);
    }

    public static final MediaType parse(String str) {
        return Companion.parse(str);
    }

    /* renamed from: -deprecated_subtype */
    public final String m54271deprecated_subtype() {
        return this.subtype;
    }

    /* renamed from: -deprecated_type */
    public final String m54272deprecated_type() {
        return this.type;
    }

    public final Charset charset() {
        return charset$default(this, null, 1, null);
    }

    public final Charset charset(Charset charset) {
        String parameter = parameter("charset");
        if (parameter == null) {
            return charset;
        }
        try {
            charset = Charset.forName(parameter);
        } catch (IllegalArgumentException e) {
        }
        return charset;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof MediaType) && C18524p.m3850a((Object) ((MediaType) obj).mediaType, (Object) this.mediaType);
    }

    public final int hashCode() {
        return this.mediaType.hashCode();
    }

    public final String parameter(String name) {
        C18524p.m3840d(name, "name");
        String[] indices = this.parameterNamesAndValues;
        C18524p.m3840d(indices, "$this$indices");
        C18358a a = C18363d.m4053a(new C18361c(0, C18273i.m4184h(indices)), 2);
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
        while (!C18425p.m3961a(this.parameterNamesAndValues[i], name)) {
            if (i == i2) {
                return null;
            }
            i += i3;
        }
        return this.parameterNamesAndValues[i + 1];
    }

    public final String subtype() {
        return this.subtype;
    }

    public final String toString() {
        return this.mediaType;
    }

    public final String type() {
        return this.type;
    }
}
