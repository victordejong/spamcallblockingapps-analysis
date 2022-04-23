package okhttp3;

import c.f;
import com.explorestack.protobuf.openrtb.LossReason;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.mopub.common.Constants;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.a.ab;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.f.a;
import kotlin.f.d;
import kotlin.h.l;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0010 \n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� J2\u00020\u0001:\u0002IJBa\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\n\u0012\u0010\u0010\u000b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003¢\u0006\u0002\u0010\u000eJ\u000f\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u0007¢\u0006\u0002\b!J\r\u0010\u0011\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\"J\r\u0010\u0012\u001a\u00020\u0003H\u0007¢\u0006\u0002\b#J\u0013\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\nH\u0007¢\u0006\u0002\b$J\u000f\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u0007¢\u0006\u0002\b%J\r\u0010\u0016\u001a\u00020\u0003H\u0007¢\u0006\u0002\b&J\u0013\u0010'\u001a\u00020\u00182\b\u0010(\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u000f\u0010\f\u001a\u0004\u0018\u00010\u0003H\u0007¢\u0006\u0002\b)J\b\u0010*\u001a\u00020\bH\u0016J\r\u0010\u0006\u001a\u00020\u0003H\u0007¢\u0006\u0002\b+J\u0006\u0010,\u001a\u00020-J\u0010\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010.\u001a\u00020\u0003J\r\u0010\u0005\u001a\u00020\u0003H\u0007¢\u0006\u0002\b/J\u0013\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\nH\u0007¢\u0006\u0002\b0J\r\u0010\u001a\u001a\u00020\bH\u0007¢\u0006\u0002\b1J\r\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\b2J\u000f\u0010\u001c\u001a\u0004\u0018\u00010\u0003H\u0007¢\u0006\u0002\b3J\u0010\u00104\u001a\u0004\u0018\u00010\u00032\u0006\u00105\u001a\u00020\u0003J\u000e\u00106\u001a\u00020\u00032\u0006\u00107\u001a\u00020\bJ\u0013\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\u001eH\u0007¢\u0006\u0002\b8J\u0010\u00109\u001a\u0004\u0018\u00010\u00032\u0006\u00107\u001a\u00020\bJ\u0016\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\n2\u0006\u00105\u001a\u00020\u0003J\r\u0010 \u001a\u00020\bH\u0007¢\u0006\u0002\b;J\u0006\u0010<\u001a\u00020\u0003J\u0010\u0010=\u001a\u0004\u0018\u00010��2\u0006\u0010.\u001a\u00020\u0003J\r\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\b>J\b\u0010?\u001a\u00020\u0003H\u0016J\r\u0010@\u001a\u00020AH\u0007¢\u0006\u0002\bBJ\r\u0010C\u001a\u00020DH\u0007¢\u0006\u0002\b\rJ\b\u0010E\u001a\u0004\u0018\u00010\u0003J\r\u0010B\u001a\u00020AH\u0007¢\u0006\u0002\bFJ\r\u0010\r\u001a\u00020DH\u0007¢\u0006\u0002\bGJ\r\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0002\bHR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00038G¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00038G¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\u0012\u001a\u00020\u00038G¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0010R\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\n8G¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00038G¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0010R\u0011\u0010\u0016\u001a\u00020\u00038G¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0010R\u0015\u0010\f\u001a\u0004\u0018\u00010\u00038\u0007¢\u0006\b\n��\u001a\u0004\b\f\u0010\u0010R\u0013\u0010\u0006\u001a\u00020\u00038\u0007¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0010R\u0011\u0010\u0017\u001a\u00020\u0018¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0019R\u0013\u0010\u0005\u001a\u00020\u00038\u0007¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0010R\u0019\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\n8\u0007¢\u0006\b\n��\u001a\u0004\b\t\u0010\u0014R\u0011\u0010\u001a\u001a\u00020\b8G¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\u0007\u001a\u00020\b8\u0007¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\u001bR\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u00038G¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0010R\u0018\u0010\u000b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n��R\u0017\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\u001e8G¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001fR\u0011\u0010 \u001a\u00020\b8G¢\u0006\u0006\u001a\u0004\b \u0010\u001bR\u0013\u0010\u0002\u001a\u00020\u00038\u0007¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0010R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0013\u0010\u0004\u001a\u00020\u00038\u0007¢\u0006\b\n��\u001a\u0004\b\u0004\u0010\u0010¨\u0006K"}, d2 = {"Lokhttp3/HttpUrl;", "", "scheme", "", "username", "password", "host", "port", "", "pathSegments", "", "queryNamesAndValues", "fragment", "url", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "encodedFragment", "()Ljava/lang/String;", "encodedPassword", "encodedPath", "encodedPathSegments", "()Ljava/util/List;", "encodedQuery", "encodedUsername", "isHttps", "", "()Z", "pathSize", "()I", "query", "queryParameterNames", "", "()Ljava/util/Set;", "querySize", "-deprecated_encodedFragment", "-deprecated_encodedPassword", "-deprecated_encodedPath", "-deprecated_encodedPathSegments", "-deprecated_encodedQuery", "-deprecated_encodedUsername", "equals", "other", "-deprecated_fragment", "hashCode", "-deprecated_host", "newBuilder", "Lokhttp3/HttpUrl$Builder;", "link", "-deprecated_password", "-deprecated_pathSegments", "-deprecated_pathSize", "-deprecated_port", "-deprecated_query", "queryParameter", "name", "queryParameterName", "index", "-deprecated_queryParameterNames", "queryParameterValue", "queryParameterValues", "-deprecated_querySize", "redact", "resolve", "-deprecated_scheme", "toString", "toUri", "Ljava/net/URI;", "uri", "toUrl", "Ljava/net/URL;", "topPrivateDomain", "-deprecated_uri", "-deprecated_url", "-deprecated_username", "Builder", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/HttpUrl.class */
public final class HttpUrl {
    public static final String FORM_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#&!$(),~";
    public static final String FRAGMENT_ENCODE_SET = "";
    public static final String FRAGMENT_ENCODE_SET_URI = " \"#<>\\^`{|}";
    public static final String PASSWORD_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    public static final String PATH_SEGMENT_ENCODE_SET = " \"<>^`{}|/\\?#";
    public static final String PATH_SEGMENT_ENCODE_SET_URI = "[]";
    public static final String QUERY_COMPONENT_ENCODE_SET = " !\"#$&'(),/:;<=>?@[]\\^`{|}~";
    public static final String QUERY_COMPONENT_ENCODE_SET_URI = "\\^`{|}";
    public static final String QUERY_COMPONENT_REENCODE_SET = " \"'<>#&=";
    public static final String QUERY_ENCODE_SET = " \"'<>#";
    public static final String USERNAME_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    private final String fragment;
    private final String host;
    private final boolean isHttps;
    private final String password;
    private final List<String> pathSegments;
    private final int port;
    private final List<String> queryNamesAndValues;
    private final String scheme;
    private final String url;
    private final String username;
    public static final Companion Companion = new Companion(null);
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    @Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0017\u0018�� V2\u00020\u0001:\u0001VB\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010#\u001a\u00020��2\u0006\u0010$\u001a\u00020\u0004J\u000e\u0010%\u001a\u00020��2\u0006\u0010\f\u001a\u00020\u0004J\u0018\u0010&\u001a\u00020��2\u0006\u0010'\u001a\u00020\u00042\b\u0010(\u001a\u0004\u0018\u00010\u0004J\u000e\u0010)\u001a\u00020��2\u0006\u0010*\u001a\u00020\u0004J\u000e\u0010+\u001a\u00020��2\u0006\u0010,\u001a\u00020\u0004J\u0018\u0010+\u001a\u00020��2\u0006\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020.H\u0002J\u0018\u0010/\u001a\u00020��2\u0006\u00100\u001a\u00020\u00042\b\u00101\u001a\u0004\u0018\u00010\u0004J\u0006\u00102\u001a\u000203J\b\u00104\u001a\u00020\u001bH\u0002J\u0010\u0010\u0003\u001a\u00020��2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\t\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0004J\u000e\u00105\u001a\u00020��2\u0006\u00105\u001a\u00020\u0004J\u0010\u00106\u001a\u00020��2\b\u00106\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0014\u001a\u00020��2\u0006\u0010\u0014\u001a\u00020\u0004J\u0010\u00107\u001a\u00020��2\b\u00107\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0017\u001a\u00020��2\u0006\u0010\u0017\u001a\u00020\u0004J\u0010\u00108\u001a\u00020.2\u0006\u00109\u001a\u00020\u0004H\u0002J\u0010\u0010:\u001a\u00020.2\u0006\u00109\u001a\u00020\u0004H\u0002J\u001f\u0010;\u001a\u00020��2\b\u0010<\u001a\u0004\u0018\u0001032\u0006\u00109\u001a\u00020\u0004H��¢\u0006\u0002\b=J\u000e\u0010>\u001a\u00020��2\u0006\u0010>\u001a\u00020\u0004J\b\u0010?\u001a\u00020@H\u0002J\u000e\u0010\u001a\u001a\u00020��2\u0006\u0010\u001a\u001a\u00020\u001bJ0\u0010A\u001a\u00020@2\u0006\u00109\u001a\u00020\u00042\u0006\u0010B\u001a\u00020\u001b2\u0006\u0010C\u001a\u00020\u001b2\u0006\u0010D\u001a\u00020.2\u0006\u0010-\u001a\u00020.H\u0002J\u0010\u0010E\u001a\u00020��2\b\u0010E\u001a\u0004\u0018\u00010\u0004J\r\u0010F\u001a\u00020��H��¢\u0006\u0002\bGJ\u0010\u0010H\u001a\u00020@2\u0006\u0010I\u001a\u00020\u0004H\u0002J\u000e\u0010J\u001a\u00020��2\u0006\u0010'\u001a\u00020\u0004J\u000e\u0010K\u001a\u00020��2\u0006\u00100\u001a\u00020\u0004J\u000e\u0010L\u001a\u00020��2\u0006\u0010M\u001a\u00020\u001bJ \u0010N\u001a\u00020@2\u0006\u00109\u001a\u00020\u00042\u0006\u0010O\u001a\u00020\u001b2\u0006\u0010C\u001a\u00020\u001bH\u0002J\u000e\u0010 \u001a\u00020��2\u0006\u0010 \u001a\u00020\u0004J\u0016\u0010P\u001a\u00020��2\u0006\u0010M\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020\u0004J\u0018\u0010Q\u001a\u00020��2\u0006\u0010'\u001a\u00020\u00042\b\u0010(\u001a\u0004\u0018\u00010\u0004J\u0016\u0010R\u001a\u00020��2\u0006\u0010M\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020\u0004J\u0018\u0010S\u001a\u00020��2\u0006\u00100\u001a\u00020\u00042\b\u00101\u001a\u0004\u0018\u00010\u0004J\b\u0010T\u001a\u00020\u0004H\u0016J\u000e\u0010U\u001a\u00020��2\u0006\u0010U\u001a\u00020\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\rX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR$\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\rX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u000f\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0004X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\u0006\"\u0004\b\u0016\u0010\bR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0004X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\u0006\"\u0004\b\u0019\u0010\bR\u001a\u0010\u001a\u001a\u00020\u001bX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010 \u001a\u0004\u0018\u00010\u0004X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b!\u0010\u0006\"\u0004\b\"\u0010\b¨\u0006W"}, d2 = {"Lokhttp3/HttpUrl$Builder;", "", "()V", "encodedFragment", "", "getEncodedFragment$okhttp", "()Ljava/lang/String;", "setEncodedFragment$okhttp", "(Ljava/lang/String;)V", "encodedPassword", "getEncodedPassword$okhttp", "setEncodedPassword$okhttp", "encodedPathSegments", "", "getEncodedPathSegments$okhttp", "()Ljava/util/List;", "encodedQueryNamesAndValues", "getEncodedQueryNamesAndValues$okhttp", "setEncodedQueryNamesAndValues$okhttp", "(Ljava/util/List;)V", "encodedUsername", "getEncodedUsername$okhttp", "setEncodedUsername$okhttp", "host", "getHost$okhttp", "setHost$okhttp", "port", "", "getPort$okhttp", "()I", "setPort$okhttp", "(I)V", "scheme", "getScheme$okhttp", "setScheme$okhttp", "addEncodedPathSegment", "encodedPathSegment", "addEncodedPathSegments", "addEncodedQueryParameter", "encodedName", "encodedValue", "addPathSegment", "pathSegment", "addPathSegments", "pathSegments", "alreadyEncoded", "", "addQueryParameter", "name", "value", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lokhttp3/HttpUrl;", "effectivePort", "encodedPath", "encodedQuery", "fragment", "isDot", "input", "isDotDot", "parse", "base", "parse$okhttp", "password", "pop", "", "push", "pos", "limit", "addTrailingSlash", "query", "reencodeForUri", "reencodeForUri$okhttp", "removeAllCanonicalQueryParameters", "canonicalName", "removeAllEncodedQueryParameters", "removeAllQueryParameters", "removePathSegment", "index", "resolvePath", "startPos", "setEncodedPathSegment", "setEncodedQueryParameter", "setPathSegment", "setQueryParameter", "toString", "username", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/HttpUrl$Builder.class */
    public static final class Builder {
        public static final Companion Companion = new Companion(null);
        public static final String INVALID_HOST = "Invalid URL host";
        private String encodedFragment;
        private final List<String> encodedPathSegments;
        private List<String> encodedQueryNamesAndValues;
        private String host;
        private String scheme;
        private String encodedUsername = "";
        private String encodedPassword = "";
        private int port = -1;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J \u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J \u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u001c\u0010\f\u001a\u00020\u0006*\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��¨\u0006\r"}, d2 = {"Lokhttp3/HttpUrl$Builder$Companion;", "", "()V", "INVALID_HOST", "", "parsePort", "", "input", "pos", "limit", "portColonOffset", "schemeDelimiterOffset", "slashCount", "okhttp"}, k = 1, mv = {1, 4, 0})
        /* loaded from: classes5-dex2jar.jar:okhttp3/HttpUrl$Builder$Companion.class */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int parsePort(String str, int i, int i2) {
                int i3;
                try {
                    int parseInt = Integer.parseInt(Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, i, i2, "", false, false, false, false, null, 248, null));
                    if (parseInt <= 0) {
                        i3 = -1;
                    } else {
                        i3 = -1;
                        if (65535 >= parseInt) {
                            i3 = parseInt;
                        }
                    }
                } catch (NumberFormatException e) {
                    i3 = -1;
                }
                return i3;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int portColonOffset(String str, int i, int i2) {
                while (i < i2) {
                    char charAt = str.charAt(i);
                    if (charAt == ':') {
                        return i;
                    }
                    int i3 = i;
                    if (charAt == '[') {
                        do {
                            i3++;
                            i = i3;
                            if (i3 < i2) {
                                i = i3;
                            }
                        } while (str.charAt(i3) != ']');
                    }
                    i++;
                }
                return i2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Code restructure failed: missing block: B:8:0x0024, code lost:
                if (kotlin.jvm.internal.p.a(r0, 122) > 0) goto L_0x0027;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final int schemeDelimiterOffset(java.lang.String r4, int r5, int r6) {
                /*
                    r3 = this;
                    r0 = r6
                    r1 = r5
                    int r0 = r0 - r1
                    r1 = 2
                    if (r0 >= r1) goto L_0x0009
                    r0 = -1
                    return r0
                L_0x0009:
                    r0 = r4
                    r1 = r5
                    char r0 = r0.charAt(r1)
                    r7 = r0
                    r0 = r7
                    r1 = 97
                    int r0 = kotlin.jvm.internal.p.a(r0, r1)
                    if (r0 < 0) goto L_0x0027
                    r0 = r5
                    r8 = r0
                    r0 = r7
                    r1 = 122(0x7a, float:1.71E-43)
                    int r0 = kotlin.jvm.internal.p.a(r0, r1)
                    if (r0 <= 0) goto L_0x0041
                L_0x0027:
                    r0 = r7
                    r1 = 65
                    int r0 = kotlin.jvm.internal.p.a(r0, r1)
                    if (r0 < 0) goto L_0x00b5
                    r0 = r5
                    r8 = r0
                    r0 = r7
                    r1 = 90
                    int r0 = kotlin.jvm.internal.p.a(r0, r1)
                    if (r0 <= 0) goto L_0x0041
                    goto L_0x00b5
                L_0x0041:
                    r0 = r8
                    r1 = 1
                    int r0 = r0 + r1
                    r5 = r0
                    r0 = r5
                    r1 = r6
                    if (r0 >= r1) goto L_0x00b5
                    r0 = r4
                    r1 = r5
                    char r0 = r0.charAt(r1)
                    r7 = r0
                    r0 = 97
                    r1 = r7
                    if (r0 <= r1) goto L_0x005c
                    goto L_0x0066
                L_0x005c:
                    r0 = r5
                    r8 = r0
                    r0 = 122(0x7a, float:1.71E-43)
                    r1 = r7
                    if (r0 >= r1) goto L_0x0041
                L_0x0066:
                    r0 = 65
                    r1 = r7
                    if (r0 <= r1) goto L_0x0070
                    goto L_0x007a
                L_0x0070:
                    r0 = r5
                    r8 = r0
                    r0 = 90
                    r1 = r7
                    if (r0 >= r1) goto L_0x0041
                L_0x007a:
                    r0 = 48
                    r1 = r7
                    if (r0 <= r1) goto L_0x0084
                    goto L_0x008e
                L_0x0084:
                    r0 = r5
                    r8 = r0
                    r0 = 57
                    r1 = r7
                    if (r0 >= r1) goto L_0x0041
                L_0x008e:
                    r0 = r5
                    r8 = r0
                    r0 = r7
                    r1 = 43
                    if (r0 == r1) goto L_0x0041
                    r0 = r5
                    r8 = r0
                    r0 = r7
                    r1 = 45
                    if (r0 == r1) goto L_0x0041
                    r0 = r5
                    r8 = r0
                    r0 = r7
                    r1 = 46
                    if (r0 == r1) goto L_0x0041
                    r0 = r7
                    r1 = 58
                    if (r0 != r1) goto L_0x00b5
                    r0 = r5
                    return r0
                L_0x00b5:
                    r0 = -1
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.Companion.schemeDelimiterOffset(java.lang.String, int, int):int");
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int slashCount(String str, int i, int i2) {
                char charAt;
                int i3 = 0;
                while (i < i2 && ((charAt = str.charAt(i)) == '\\' || charAt == '/')) {
                    i3++;
                    i++;
                }
                return i3;
            }
        }

        public Builder() {
            ArrayList arrayList = new ArrayList();
            this.encodedPathSegments = arrayList;
            arrayList.add("");
        }

        private final Builder addPathSegments(String str, boolean z) {
            int i;
            Builder builder = this;
            int i2 = 0;
            do {
                int delimiterOffset = Util.delimiterOffset(str, "/\\", i2, str.length());
                builder.push(str, i2, delimiterOffset, delimiterOffset < str.length(), z);
                i = delimiterOffset + 1;
                i2 = i;
            } while (i <= str.length());
            return builder;
        }

        private final int effectivePort() {
            int i = this.port;
            if (i != -1) {
                return i;
            }
            Companion companion = HttpUrl.Companion;
            String str = this.scheme;
            p.a((Object) str);
            return companion.defaultPort(str);
        }

        private final boolean isDot(String str) {
            return p.a((Object) str, (Object) ".") || kotlin.h.p.a(str, "%2e");
        }

        private final boolean isDotDot(String str) {
            return p.a((Object) str, (Object) "..") || kotlin.h.p.a(str, "%2e.") || kotlin.h.p.a(str, ".%2e") || kotlin.h.p.a(str, "%2e%2e");
        }

        private final void pop() {
            List<String> list = this.encodedPathSegments;
            if (!(list.remove(list.size() - 1).length() == 0) || !(!this.encodedPathSegments.isEmpty())) {
                this.encodedPathSegments.add("");
                return;
            }
            List<String> list2 = this.encodedPathSegments;
            list2.set(list2.size() - 1, "");
        }

        private final void push(String str, int i, int i2, boolean z, boolean z2) {
            String canonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, i, i2, HttpUrl.PATH_SEGMENT_ENCODE_SET, z2, false, false, false, null, 240, null);
            if (!isDot(canonicalize$okhttp$default)) {
                if (isDotDot(canonicalize$okhttp$default)) {
                    pop();
                    return;
                }
                List<String> list = this.encodedPathSegments;
                if (list.get(list.size() - 1).length() == 0) {
                    List<String> list2 = this.encodedPathSegments;
                    list2.set(list2.size() - 1, canonicalize$okhttp$default);
                } else {
                    this.encodedPathSegments.add(canonicalize$okhttp$default);
                }
                if (z) {
                    this.encodedPathSegments.add("");
                }
            }
        }

        private final void removeAllCanonicalQueryParameters(String str) {
            List<String> list = this.encodedQueryNamesAndValues;
            p.a(list);
            a a2 = d.a(d.a(list.size() - 2, 0), 2);
            int i = a2.f36664a;
            int i2 = a2.f36665b;
            int i3 = a2.f36666c;
            if (i3 >= 0) {
                if (i > i2) {
                    return;
                }
            } else if (i < i2) {
                return;
            }
            while (true) {
                List<String> list2 = this.encodedQueryNamesAndValues;
                p.a(list2);
                if (p.a((Object) str, (Object) list2.get(i))) {
                    List<String> list3 = this.encodedQueryNamesAndValues;
                    p.a(list3);
                    list3.remove(i + 1);
                    List<String> list4 = this.encodedQueryNamesAndValues;
                    p.a(list4);
                    list4.remove(i);
                    List<String> list5 = this.encodedQueryNamesAndValues;
                    p.a(list5);
                    if (list5.isEmpty()) {
                        this.encodedQueryNamesAndValues = null;
                        return;
                    }
                }
                if (i != i2) {
                    i += i3;
                } else {
                    return;
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0057  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0086 -> B:11:0x0052). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final void resolvePath(java.lang.String r8, int r9, int r10) {
            /*
                r7 = this;
                r0 = r9
                r1 = r10
                if (r0 != r1) goto L_0x0006
                return
            L_0x0006:
                r0 = r8
                r1 = r9
                char r0 = r0.charAt(r1)
                r11 = r0
                r0 = r11
                r1 = 47
                if (r0 == r1) goto L_0x003a
                r0 = r11
                r1 = 92
                if (r0 != r1) goto L_0x001e
                goto L_0x003a
            L_0x001e:
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.encodedPathSegments
                r12 = r0
                r0 = r12
                r1 = r12
                int r1 = r1.size()
                r2 = 1
                int r1 = r1 - r2
                java.lang.String r2 = ""
                java.lang.Object r0 = r0.set(r1, r2)
                goto L_0x0052
            L_0x003a:
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.encodedPathSegments
                r0.clear()
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.encodedPathSegments
                java.lang.String r1 = ""
                boolean r0 = r0.add(r1)
                goto L_0x0086
            L_0x0052:
                r0 = r9
                r1 = r10
                if (r0 >= r1) goto L_0x008c
                r0 = r8
                java.lang.String r1 = "/\\"
                r2 = r9
                r3 = r10
                int r0 = okhttp3.internal.Util.delimiterOffset(r0, r1, r2, r3)
                r11 = r0
                r0 = r11
                r1 = r10
                if (r0 >= r1) goto L_0x006d
                r0 = 1
                r13 = r0
                goto L_0x0070
            L_0x006d:
                r0 = 0
                r13 = r0
            L_0x0070:
                r0 = r7
                r1 = r8
                r2 = r9
                r3 = r11
                r4 = r13
                r5 = 1
                r0.push(r1, r2, r3, r4, r5)
                r0 = r11
                r9 = r0
                r0 = r13
                if (r0 == 0) goto L_0x0052
                r0 = r11
                r9 = r0
            L_0x0086:
                int r9 = r9 + 1
                goto L_0x0052
            L_0x008c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.resolvePath(java.lang.String, int, int):void");
        }

        public final Builder addEncodedPathSegment(String encodedPathSegment) {
            p.d(encodedPathSegment, "encodedPathSegment");
            Builder builder = this;
            builder.push(encodedPathSegment, 0, encodedPathSegment.length(), false, true);
            return builder;
        }

        public final Builder addEncodedPathSegments(String encodedPathSegments) {
            p.d(encodedPathSegments, "encodedPathSegments");
            return addPathSegments(encodedPathSegments, true);
        }

        public final Builder addEncodedQueryParameter(String encodedName, String str) {
            p.d(encodedName, "encodedName");
            Builder builder = this;
            if (builder.encodedQueryNamesAndValues == null) {
                builder.encodedQueryNamesAndValues = new ArrayList();
            }
            List<String> list = builder.encodedQueryNamesAndValues;
            p.a(list);
            list.add(Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedName, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, LossReason.LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE, null));
            List<String> list2 = builder.encodedQueryNamesAndValues;
            p.a(list2);
            list2.add(str != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, LossReason.LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE, null) : null);
            return builder;
        }

        public final Builder addPathSegment(String pathSegment) {
            p.d(pathSegment, "pathSegment");
            Builder builder = this;
            builder.push(pathSegment, 0, pathSegment.length(), false, false);
            return builder;
        }

        public final Builder addPathSegments(String pathSegments) {
            p.d(pathSegments, "pathSegments");
            return addPathSegments(pathSegments, false);
        }

        public final Builder addQueryParameter(String name, String str) {
            p.d(name, "name");
            Builder builder = this;
            if (builder.encodedQueryNamesAndValues == null) {
                builder.encodedQueryNamesAndValues = new ArrayList();
            }
            List<String> list = builder.encodedQueryNamesAndValues;
            p.a(list);
            list.add(Companion.canonicalize$okhttp$default(HttpUrl.Companion, name, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null));
            List<String> list2 = builder.encodedQueryNamesAndValues;
            p.a(list2);
            list2.add(str != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null) : null);
            return builder;
        }

        public final HttpUrl build() {
            ArrayList arrayList;
            String str = this.scheme;
            if (str != null) {
                String percentDecode$okhttp$default = Companion.percentDecode$okhttp$default(HttpUrl.Companion, this.encodedUsername, 0, 0, false, 7, null);
                String percentDecode$okhttp$default2 = Companion.percentDecode$okhttp$default(HttpUrl.Companion, this.encodedPassword, 0, 0, false, 7, null);
                String str2 = this.host;
                if (str2 != null) {
                    int effectivePort = effectivePort();
                    List<String> list = this.encodedPathSegments;
                    ArrayList arrayList2 = new ArrayList(n.a((Iterable) list, 10));
                    for (String str3 : list) {
                        arrayList2.add(Companion.percentDecode$okhttp$default(HttpUrl.Companion, str3, 0, 0, false, 7, null));
                    }
                    ArrayList arrayList3 = arrayList2;
                    List<String> list2 = this.encodedQueryNamesAndValues;
                    String str4 = null;
                    if (list2 != null) {
                        List<String> list3 = list2;
                        ArrayList arrayList4 = new ArrayList(n.a((Iterable) list3, 10));
                        for (String str5 : list3) {
                            arrayList4.add(str5 != null ? Companion.percentDecode$okhttp$default(HttpUrl.Companion, str5, 0, 0, true, 3, null) : null);
                        }
                        arrayList = arrayList4;
                    } else {
                        arrayList = null;
                    }
                    String str6 = this.encodedFragment;
                    if (str6 != null) {
                        str4 = Companion.percentDecode$okhttp$default(HttpUrl.Companion, str6, 0, 0, false, 7, null);
                    }
                    return new HttpUrl(str, percentDecode$okhttp$default, percentDecode$okhttp$default2, str2, effectivePort, arrayList3, arrayList, str4, toString());
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        public final Builder encodedFragment(String str) {
            Builder builder = this;
            builder.encodedFragment = str != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, "", true, false, false, true, null, 179, null) : null;
            return builder;
        }

        public final Builder encodedPassword(String encodedPassword) {
            p.d(encodedPassword, "encodedPassword");
            Builder builder = this;
            builder.encodedPassword = Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedPassword, 0, 0, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 243, null);
            return builder;
        }

        public final Builder encodedPath(String encodedPath) {
            p.d(encodedPath, "encodedPath");
            Builder builder = this;
            if (kotlin.h.p.a(encodedPath, "/", false)) {
                builder.resolvePath(encodedPath, 0, encodedPath.length());
                return builder;
            }
            throw new IllegalArgumentException("unexpected encodedPath: ".concat(String.valueOf(encodedPath)).toString());
        }

        public final Builder encodedQuery(String str) {
            String canonicalize$okhttp$default;
            Builder builder = this;
            builder.encodedQueryNamesAndValues = (str == null || (canonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.QUERY_ENCODE_SET, true, false, true, false, null, LossReason.LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE, null)) == null) ? null : HttpUrl.Companion.toQueryNamesAndValues$okhttp(canonicalize$okhttp$default);
            return builder;
        }

        public final Builder encodedUsername(String encodedUsername) {
            p.d(encodedUsername, "encodedUsername");
            Builder builder = this;
            builder.encodedUsername = Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedUsername, 0, 0, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 243, null);
            return builder;
        }

        public final Builder fragment(String str) {
            Builder builder = this;
            builder.encodedFragment = str != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, "", false, false, false, true, null, 187, null) : null;
            return builder;
        }

        public final String getEncodedFragment$okhttp() {
            return this.encodedFragment;
        }

        public final String getEncodedPassword$okhttp() {
            return this.encodedPassword;
        }

        public final List<String> getEncodedPathSegments$okhttp() {
            return this.encodedPathSegments;
        }

        public final List<String> getEncodedQueryNamesAndValues$okhttp() {
            return this.encodedQueryNamesAndValues;
        }

        public final String getEncodedUsername$okhttp() {
            return this.encodedUsername;
        }

        public final String getHost$okhttp() {
            return this.host;
        }

        public final int getPort$okhttp() {
            return this.port;
        }

        public final String getScheme$okhttp() {
            return this.scheme;
        }

        public final Builder host(String host) {
            p.d(host, "host");
            Builder builder = this;
            String canonicalHost = HostnamesKt.toCanonicalHost(Companion.percentDecode$okhttp$default(HttpUrl.Companion, host, 0, 0, false, 7, null));
            if (canonicalHost != null) {
                builder.host = canonicalHost;
                return builder;
            }
            throw new IllegalArgumentException("unexpected host: ".concat(String.valueOf(host)));
        }

        public final Builder parse$okhttp(HttpUrl httpUrl, String input) {
            int i;
            int i2;
            int delimiterOffset;
            p.d(input, "input");
            int indexOfFirstNonAsciiWhitespace$default = Util.indexOfFirstNonAsciiWhitespace$default(input, 0, 0, 3, null);
            int indexOfLastNonAsciiWhitespace$default = Util.indexOfLastNonAsciiWhitespace$default(input, indexOfFirstNonAsciiWhitespace$default, 0, 2, null);
            Companion companion = Companion;
            int schemeDelimiterOffset = companion.schemeDelimiterOffset(input, indexOfFirstNonAsciiWhitespace$default, indexOfLastNonAsciiWhitespace$default);
            if (schemeDelimiterOffset != -1) {
                if (kotlin.h.p.a(input, "https:", indexOfFirstNonAsciiWhitespace$default, true)) {
                    this.scheme = Constants.HTTPS;
                    indexOfFirstNonAsciiWhitespace$default += 6;
                } else if (kotlin.h.p.a(input, "http:", indexOfFirstNonAsciiWhitespace$default, true)) {
                    this.scheme = "http";
                    indexOfFirstNonAsciiWhitespace$default += 5;
                } else {
                    StringBuilder sb = new StringBuilder("Expected URL scheme 'http' or 'https' but was '");
                    String substring = input.substring(0, schemeDelimiterOffset);
                    p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    sb.append(substring);
                    sb.append("'");
                    throw new IllegalArgumentException(sb.toString());
                }
            } else if (httpUrl != null) {
                this.scheme = httpUrl.scheme();
            } else {
                throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no colon was found");
            }
            int slashCount = companion.slashCount(input, indexOfFirstNonAsciiWhitespace$default, indexOfLastNonAsciiWhitespace$default);
            if (slashCount >= 2 || httpUrl == null || (!p.a((Object) httpUrl.scheme(), (Object) this.scheme))) {
                int i3 = indexOfFirstNonAsciiWhitespace$default + slashCount;
                boolean z = false;
                boolean z2 = false;
                i2 = indexOfLastNonAsciiWhitespace$default;
                while (true) {
                    delimiterOffset = Util.delimiterOffset(input, "@/\\?#", i3, i2);
                    char charAt = delimiterOffset != i2 ? input.charAt(delimiterOffset) : (char) 65535;
                    if (charAt == 65535 || charAt == '#' || charAt == '/' || charAt == '\\' || charAt == '?') {
                        break;
                    } else if (charAt == '@') {
                        if (!z) {
                            int delimiterOffset2 = Util.delimiterOffset(input, ':', i3, delimiterOffset);
                            String canonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, input, i3, delimiterOffset2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                            String str = canonicalize$okhttp$default;
                            if (z2) {
                                str = this.encodedUsername + "%40" + canonicalize$okhttp$default;
                            }
                            this.encodedUsername = str;
                            if (delimiterOffset2 != delimiterOffset) {
                                this.encodedPassword = Companion.canonicalize$okhttp$default(HttpUrl.Companion, input, delimiterOffset2 + 1, delimiterOffset, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                                z = true;
                            }
                            z2 = true;
                        } else {
                            this.encodedPassword += "%40" + Companion.canonicalize$okhttp$default(HttpUrl.Companion, input, i3, delimiterOffset, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                        }
                        i3 = delimiterOffset + 1;
                    }
                }
                Companion companion2 = Companion;
                int portColonOffset = companion2.portColonOffset(input, i3, delimiterOffset);
                int i4 = portColonOffset + 1;
                if (i4 < delimiterOffset) {
                    this.host = HostnamesKt.toCanonicalHost(Companion.percentDecode$okhttp$default(HttpUrl.Companion, input, i3, portColonOffset, false, 4, null));
                    int parsePort = companion2.parsePort(input, i4, delimiterOffset);
                    this.port = parsePort;
                    if (!(parsePort != -1)) {
                        StringBuilder sb2 = new StringBuilder("Invalid URL port: \"");
                        String substring2 = input.substring(i4, delimiterOffset);
                        p.b(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        sb2.append(substring2);
                        sb2.append('\"');
                        throw new IllegalArgumentException(sb2.toString().toString());
                    }
                } else {
                    this.host = HostnamesKt.toCanonicalHost(Companion.percentDecode$okhttp$default(HttpUrl.Companion, input, i3, portColonOffset, false, 4, null));
                    Companion companion3 = HttpUrl.Companion;
                    String str2 = this.scheme;
                    p.a((Object) str2);
                    this.port = companion3.defaultPort(str2);
                }
                if (this.host != null) {
                    i = delimiterOffset;
                } else {
                    StringBuilder sb3 = new StringBuilder("Invalid URL host: \"");
                    String substring3 = input.substring(i3, portColonOffset);
                    p.b(substring3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    sb3.append(substring3);
                    sb3.append('\"');
                    throw new IllegalArgumentException(sb3.toString().toString());
                }
            } else {
                this.encodedUsername = httpUrl.encodedUsername();
                this.encodedPassword = httpUrl.encodedPassword();
                this.host = httpUrl.host();
                this.port = httpUrl.port();
                this.encodedPathSegments.clear();
                this.encodedPathSegments.addAll(httpUrl.encodedPathSegments());
                if (indexOfFirstNonAsciiWhitespace$default == indexOfLastNonAsciiWhitespace$default || input.charAt(indexOfFirstNonAsciiWhitespace$default) == '#') {
                    encodedQuery(httpUrl.encodedQuery());
                }
                i = indexOfFirstNonAsciiWhitespace$default;
                i2 = indexOfLastNonAsciiWhitespace$default;
            }
            int delimiterOffset3 = Util.delimiterOffset(input, "?#", i, i2);
            resolvePath(input, i, delimiterOffset3);
            int i5 = delimiterOffset3;
            if (delimiterOffset3 < i2) {
                i5 = delimiterOffset3;
                if (input.charAt(delimiterOffset3) == '?') {
                    i5 = Util.delimiterOffset(input, '#', delimiterOffset3, i2);
                    Companion companion4 = HttpUrl.Companion;
                    this.encodedQueryNamesAndValues = companion4.toQueryNamesAndValues$okhttp(Companion.canonicalize$okhttp$default(companion4, input, delimiterOffset3 + 1, i5, HttpUrl.QUERY_ENCODE_SET, true, false, true, false, null, LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE, null));
                }
            }
            if (i5 < i2 && input.charAt(i5) == '#') {
                this.encodedFragment = Companion.canonicalize$okhttp$default(HttpUrl.Companion, input, i5 + 1, i2, "", true, false, false, true, null, 176, null);
            }
            return this;
        }

        public final Builder password(String password) {
            p.d(password, "password");
            Builder builder = this;
            builder.encodedPassword = Companion.canonicalize$okhttp$default(HttpUrl.Companion, password, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null);
            return builder;
        }

        public final Builder port(int i) {
            Builder builder = this;
            if (i > 0 && 65535 >= i) {
                builder.port = i;
                return builder;
            }
            throw new IllegalArgumentException("unexpected port: ".concat(String.valueOf(i)).toString());
        }

        public final Builder query(String str) {
            String canonicalize$okhttp$default;
            Builder builder = this;
            builder.encodedQueryNamesAndValues = (str == null || (canonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.QUERY_ENCODE_SET, false, false, true, false, null, 219, null)) == null) ? null : HttpUrl.Companion.toQueryNamesAndValues$okhttp(canonicalize$okhttp$default);
            return builder;
        }

        public final Builder reencodeForUri$okhttp() {
            Builder builder = this;
            String str = builder.host;
            String str2 = null;
            builder.host = str != null ? new l("[\"<>^`{|}]").a(str, "") : null;
            int size = builder.encodedPathSegments.size();
            for (int i = 0; i < size; i++) {
                builder.encodedPathSegments.set(i, Companion.canonicalize$okhttp$default(HttpUrl.Companion, builder.encodedPathSegments.get(i), 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, true, true, false, false, null, 227, null));
            }
            List<String> list = builder.encodedQueryNamesAndValues;
            if (list != null) {
                int size2 = list.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str3 = list.get(i2);
                    list.set(i2, str3 != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str3, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, false, null, 195, null) : null);
                }
            }
            String str4 = builder.encodedFragment;
            if (str4 != null) {
                str2 = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str4, 0, 0, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, true, null, 163, null);
            }
            builder.encodedFragment = str2;
            return builder;
        }

        public final Builder removeAllEncodedQueryParameters(String encodedName) {
            p.d(encodedName, "encodedName");
            Builder builder = this;
            if (builder.encodedQueryNamesAndValues == null) {
                return builder;
            }
            builder.removeAllCanonicalQueryParameters(Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedName, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, LossReason.LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE, null));
            return builder;
        }

        public final Builder removeAllQueryParameters(String name) {
            p.d(name, "name");
            Builder builder = this;
            if (builder.encodedQueryNamesAndValues == null) {
                return builder;
            }
            builder.removeAllCanonicalQueryParameters(Companion.canonicalize$okhttp$default(HttpUrl.Companion, name, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null));
            return builder;
        }

        public final Builder removePathSegment(int i) {
            Builder builder = this;
            builder.encodedPathSegments.remove(i);
            if (builder.encodedPathSegments.isEmpty()) {
                builder.encodedPathSegments.add("");
            }
            return builder;
        }

        public final Builder scheme(String scheme) {
            p.d(scheme, "scheme");
            Builder builder = this;
            if (kotlin.h.p.a(scheme, "http")) {
                builder.scheme = "http";
            } else if (kotlin.h.p.a(scheme, Constants.HTTPS)) {
                builder.scheme = Constants.HTTPS;
            } else {
                throw new IllegalArgumentException("unexpected scheme: ".concat(String.valueOf(scheme)));
            }
            return builder;
        }

        public final void setEncodedFragment$okhttp(String str) {
            this.encodedFragment = str;
        }

        public final void setEncodedPassword$okhttp(String str) {
            p.d(str, "<set-?>");
            this.encodedPassword = str;
        }

        public final Builder setEncodedPathSegment(int i, String encodedPathSegment) {
            p.d(encodedPathSegment, "encodedPathSegment");
            Builder builder = this;
            String canonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedPathSegment, 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET, true, false, false, false, null, 243, null);
            builder.encodedPathSegments.set(i, canonicalize$okhttp$default);
            if (!builder.isDot(canonicalize$okhttp$default) && !builder.isDotDot(canonicalize$okhttp$default)) {
                return builder;
            }
            throw new IllegalArgumentException("unexpected path segment: ".concat(String.valueOf(encodedPathSegment)).toString());
        }

        public final void setEncodedQueryNamesAndValues$okhttp(List<String> list) {
            this.encodedQueryNamesAndValues = list;
        }

        public final Builder setEncodedQueryParameter(String encodedName, String str) {
            p.d(encodedName, "encodedName");
            Builder builder = this;
            builder.removeAllEncodedQueryParameters(encodedName);
            builder.addEncodedQueryParameter(encodedName, str);
            return builder;
        }

        public final void setEncodedUsername$okhttp(String str) {
            p.d(str, "<set-?>");
            this.encodedUsername = str;
        }

        public final void setHost$okhttp(String str) {
            this.host = str;
        }

        public final Builder setPathSegment(int i, String pathSegment) {
            p.d(pathSegment, "pathSegment");
            Builder builder = this;
            String canonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, pathSegment, 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET, false, false, false, false, null, 251, null);
            if (!builder.isDot(canonicalize$okhttp$default) && !builder.isDotDot(canonicalize$okhttp$default)) {
                builder.encodedPathSegments.set(i, canonicalize$okhttp$default);
                return builder;
            }
            throw new IllegalArgumentException("unexpected path segment: ".concat(String.valueOf(pathSegment)).toString());
        }

        public final void setPort$okhttp(int i) {
            this.port = i;
        }

        public final Builder setQueryParameter(String name, String str) {
            p.d(name, "name");
            Builder builder = this;
            builder.removeAllQueryParameters(name);
            builder.addQueryParameter(name, str);
            return builder;
        }

        public final void setScheme$okhttp(String str) {
            this.scheme = str;
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0060, code lost:
            if ((r4.encodedPassword.length() > 0) != false) goto L_0x0063;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x010a, code lost:
            if (r0 != r0.defaultPort(r0)) goto L_0x010d;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String toString() {
            /*
                Method dump skipped, instructions count: 366
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.toString():java.lang.String");
        }

        public final Builder username(String username) {
            p.d(username, "username");
            Builder builder = this;
            builder.encodedUsername = Companion.canonicalize$okhttp$default(HttpUrl.Companion, username, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null);
            return builder;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0019\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004H\u0007J\u0017\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0007¢\u0006\u0002\b\u0018J\u0017\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0019\u001a\u00020\u001aH\u0007¢\u0006\u0002\b\u0018J\u0015\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0004H\u0007¢\u0006\u0002\b\u0018J\u0017\u0010\u001b\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0019\u001a\u00020\u0004H\u0007¢\u0006\u0002\b\u001cJa\u0010\u001d\u001a\u00020\u0004*\u00020\u00042\b\b\u0002\u0010\u001e\u001a\u00020\u00122\b\b\u0002\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u00042\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020\"2\b\b\u0002\u0010$\u001a\u00020\"2\b\b\u0002\u0010%\u001a\u00020\"2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010'H��¢\u0006\u0002\b(J\u001c\u0010)\u001a\u00020\"*\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u0012H\u0002J/\u0010*\u001a\u00020\u0004*\u00020\u00042\b\b\u0002\u0010\u001e\u001a\u00020\u00122\b\b\u0002\u0010\u001f\u001a\u00020\u00122\b\b\u0002\u0010$\u001a\u00020\"H��¢\u0006\u0002\b+J\u0011\u0010,\u001a\u00020\u0015*\u00020\u0004H\u0007¢\u0006\u0002\b\u0014J\u0013\u0010-\u001a\u0004\u0018\u00010\u0015*\u00020\u0017H\u0007¢\u0006\u0002\b\u0014J\u0013\u0010-\u001a\u0004\u0018\u00010\u0015*\u00020\u001aH\u0007¢\u0006\u0002\b\u0014J\u0013\u0010-\u001a\u0004\u0018\u00010\u0015*\u00020\u0004H\u0007¢\u0006\u0002\b\u001bJ#\u0010.\u001a\u00020/*\b\u0012\u0004\u0012\u00020\u0004002\n\u00101\u001a\u000602j\u0002`3H��¢\u0006\u0002\b4J\u0019\u00105\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000406*\u00020\u0004H��¢\u0006\u0002\b7J%\u00108\u001a\u00020/*\n\u0012\u0006\u0012\u0004\u0018\u00010\u0004002\n\u00101\u001a\u000602j\u0002`3H��¢\u0006\u0002\b9JV\u0010:\u001a\u00020/*\u00020;2\u0006\u0010<\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020\"2\b\u0010&\u001a\u0004\u0018\u00010'H\u0002J,\u0010=\u001a\u00020/*\u00020;2\u0006\u0010>\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\"H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��¨\u0006?"}, d2 = {"Lokhttp3/HttpUrl$Companion;", "", "()V", "FORM_ENCODE_SET", "", "FRAGMENT_ENCODE_SET", "FRAGMENT_ENCODE_SET_URI", "HEX_DIGITS", "", "PASSWORD_ENCODE_SET", "PATH_SEGMENT_ENCODE_SET", "PATH_SEGMENT_ENCODE_SET_URI", "QUERY_COMPONENT_ENCODE_SET", "QUERY_COMPONENT_ENCODE_SET_URI", "QUERY_COMPONENT_REENCODE_SET", "QUERY_ENCODE_SET", "USERNAME_ENCODE_SET", "defaultPort", "", "scheme", "get", "Lokhttp3/HttpUrl;", "uri", "Ljava/net/URI;", "-deprecated_get", "url", "Ljava/net/URL;", "parse", "-deprecated_parse", "canonicalize", "pos", "limit", "encodeSet", "alreadyEncoded", "", "strict", "plusIsSpace", "unicodeAllowed", "charset", "Ljava/nio/charset/Charset;", "canonicalize$okhttp", "isPercentEncoded", "percentDecode", "percentDecode$okhttp", "toHttpUrl", "toHttpUrlOrNull", "toPathString", "", "", "out", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "toPathString$okhttp", "toQueryNamesAndValues", "", "toQueryNamesAndValues$okhttp", "toQueryString", "toQueryString$okhttp", "writeCanonicalized", "Lokio/Buffer;", "input", "writePercentDecoded", "encoded", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/HttpUrl$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ String canonicalize$okhttp$default(Companion companion, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = str.length();
            }
            if ((i3 & 8) != 0) {
                z = false;
            }
            if ((i3 & 16) != 0) {
                z2 = false;
            }
            if ((i3 & 32) != 0) {
                z3 = false;
            }
            if ((i3 & 64) != 0) {
                z4 = false;
            }
            if ((i3 & 128) != 0) {
                charset = null;
            }
            return companion.canonicalize$okhttp(str, i, i2, str2, z, z2, z3, z4, charset);
        }

        private final boolean isPercentEncoded(String str, int i, int i2) {
            int i3 = i + 2;
            return i3 < i2 && str.charAt(i) == '%' && Util.parseHexDigit(str.charAt(i + 1)) != -1 && Util.parseHexDigit(str.charAt(i3)) != -1;
        }

        public static /* synthetic */ String percentDecode$okhttp$default(Companion companion, String str, int i, int i2, boolean z, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = str.length();
            }
            if ((i3 & 4) != 0) {
                z = false;
            }
            return companion.percentDecode$okhttp(str, i, i2, z);
        }

        private final void writeCanonicalized(f fVar, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
            boolean b2;
            f fVar2 = null;
            while (i < i2) {
                Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                int codePointAt = str.codePointAt(i);
                if (z) {
                    fVar2 = fVar2;
                    if (codePointAt != 9) {
                        fVar2 = fVar2;
                        if (codePointAt != 10) {
                            fVar2 = fVar2;
                            if (codePointAt != 12) {
                                fVar2 = fVar2;
                                if (codePointAt == 13) {
                                }
                            }
                        }
                    }
                    i += Character.charCount(codePointAt);
                }
                if (codePointAt != 43 || !z3) {
                    if (codePointAt >= 32 && codePointAt != 127 && (codePointAt < 128 || z4)) {
                        b2 = kotlin.h.p.b(str2, (char) codePointAt, false);
                        if (!b2 && (codePointAt != 37 || (z && (!z2 || isPercentEncoded(str, i, i2))))) {
                            fVar.a(codePointAt);
                            fVar2 = fVar2;
                        }
                    }
                    f fVar3 = fVar2;
                    if (fVar2 == null) {
                        fVar3 = new f();
                    }
                    if (charset == null || p.a(charset, StandardCharsets.UTF_8)) {
                        fVar3.a(codePointAt);
                    } else {
                        fVar3.a(str, i, Character.charCount(codePointAt) + i, charset);
                    }
                    while (true) {
                        fVar2 = fVar3;
                        if (!fVar3.e()) {
                            int i3 = fVar3.i() & 255;
                            fVar.c(37);
                            fVar.c((int) HttpUrl.HEX_DIGITS[(i3 >> 4) & 15]);
                            fVar.c((int) HttpUrl.HEX_DIGITS[i3 & 15]);
                        }
                    }
                } else {
                    fVar.b(z ? "+" : "%2B");
                    fVar2 = fVar2;
                }
                i += Character.charCount(codePointAt);
            }
        }

        private final void writePercentDecoded(f fVar, String str, int i, int i2, boolean z) {
            int i3;
            while (i < i2) {
                Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                int codePointAt = str.codePointAt(i);
                if (codePointAt != 37 || (i3 = i + 2) >= i2) {
                    if (codePointAt == 43 && z) {
                        fVar.c(32);
                        i++;
                    }
                    fVar.a(codePointAt);
                    i += Character.charCount(codePointAt);
                } else {
                    int parseHexDigit = Util.parseHexDigit(str.charAt(i + 1));
                    int parseHexDigit2 = Util.parseHexDigit(str.charAt(i3));
                    if (!(parseHexDigit == -1 || parseHexDigit2 == -1)) {
                        fVar.c((parseHexDigit << 4) + parseHexDigit2);
                        i = Character.charCount(codePointAt) + i3;
                    }
                    fVar.a(codePointAt);
                    i += Character.charCount(codePointAt);
                }
            }
        }

        /* renamed from: -deprecated_get  reason: not valid java name */
        public final HttpUrl m7883deprecated_get(String url) {
            p.d(url, "url");
            return get(url);
        }

        /* renamed from: -deprecated_get  reason: not valid java name */
        public final HttpUrl m7884deprecated_get(URI uri) {
            p.d(uri, "uri");
            return get(uri);
        }

        /* renamed from: -deprecated_get  reason: not valid java name */
        public final HttpUrl m7885deprecated_get(URL url) {
            p.d(url, "url");
            return get(url);
        }

        /* renamed from: -deprecated_parse  reason: not valid java name */
        public final HttpUrl m7886deprecated_parse(String url) {
            p.d(url, "url");
            return parse(url);
        }

        public final String canonicalize$okhttp(String canonicalize, int i, int i2, String encodeSet, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
            p.d(canonicalize, "$this$canonicalize");
            p.d(encodeSet, "encodeSet");
            int i3 = i;
            while (i3 < i2) {
                int codePointAt = canonicalize.codePointAt(i3);
                if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && !z4) || kotlin.h.p.b((CharSequence) encodeSet, (char) codePointAt, false) || ((codePointAt == 37 && (!z || (z2 && !isPercentEncoded(canonicalize, i3, i2)))) || (codePointAt == 43 && z3)))) {
                    f fVar = new f();
                    fVar.a(canonicalize, i, i3);
                    writeCanonicalized(fVar, canonicalize, i3, i2, encodeSet, z, z2, z3, z4, charset);
                    return fVar.r();
                }
                i3 += Character.charCount(codePointAt);
            }
            String substring = canonicalize.substring(i, i2);
            p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }

        public final int defaultPort(String scheme) {
            p.d(scheme, "scheme");
            int hashCode = scheme.hashCode();
            return hashCode != 3213448 ? (hashCode == 99617003 && scheme.equals(Constants.HTTPS)) ? 443 : -1 : scheme.equals("http") ? 80 : -1;
        }

        public final HttpUrl get(String toHttpUrl) {
            p.d(toHttpUrl, "$this$toHttpUrl");
            return new Builder().parse$okhttp(null, toHttpUrl).build();
        }

        public final HttpUrl get(URI toHttpUrlOrNull) {
            p.d(toHttpUrlOrNull, "$this$toHttpUrlOrNull");
            String uri = toHttpUrlOrNull.toString();
            p.b(uri, "toString()");
            return parse(uri);
        }

        public final HttpUrl get(URL toHttpUrlOrNull) {
            p.d(toHttpUrlOrNull, "$this$toHttpUrlOrNull");
            String url = toHttpUrlOrNull.toString();
            p.b(url, "toString()");
            return parse(url);
        }

        public final HttpUrl parse(String toHttpUrlOrNull) {
            HttpUrl httpUrl;
            p.d(toHttpUrlOrNull, "$this$toHttpUrlOrNull");
            try {
                httpUrl = get(toHttpUrlOrNull);
            } catch (IllegalArgumentException e) {
                httpUrl = null;
            }
            return httpUrl;
        }

        public final String percentDecode$okhttp(String percentDecode, int i, int i2, boolean z) {
            p.d(percentDecode, "$this$percentDecode");
            for (int i3 = i; i3 < i2; i3++) {
                char charAt = percentDecode.charAt(i3);
                if (charAt == '%' || (charAt == '+' && z)) {
                    f fVar = new f();
                    fVar.a(percentDecode, i, i3);
                    writePercentDecoded(fVar, percentDecode, i3, i2, z);
                    return fVar.r();
                }
            }
            String substring = percentDecode.substring(i, i2);
            p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }

        public final void toPathString$okhttp(List<String> toPathString, StringBuilder out) {
            p.d(toPathString, "$this$toPathString");
            p.d(out, "out");
            int size = toPathString.size();
            for (int i = 0; i < size; i++) {
                out.append('/');
                out.append(toPathString.get(i));
            }
        }

        public final List<String> toQueryNamesAndValues$okhttp(String toQueryNamesAndValues) {
            p.d(toQueryNamesAndValues, "$this$toQueryNamesAndValues");
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i <= toQueryNamesAndValues.length()) {
                String str = toQueryNamesAndValues;
                int a2 = kotlin.h.p.a((CharSequence) str, '&', i, false, 4);
                int i2 = a2;
                if (a2 == -1) {
                    i2 = toQueryNamesAndValues.length();
                }
                int a3 = kotlin.h.p.a((CharSequence) str, '=', i, false, 4);
                if (a3 == -1 || a3 > i2) {
                    String substring = toQueryNamesAndValues.substring(i, i2);
                    p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(substring);
                    arrayList.add(null);
                } else {
                    String substring2 = toQueryNamesAndValues.substring(i, a3);
                    p.b(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(substring2);
                    String substring3 = toQueryNamesAndValues.substring(a3 + 1, i2);
                    p.b(substring3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(substring3);
                }
                i = i2 + 1;
            }
            return arrayList;
        }

        public final void toQueryString$okhttp(List<String> toQueryString, StringBuilder out) {
            p.d(toQueryString, "$this$toQueryString");
            p.d(out, "out");
            a a2 = d.a(d.b(0, toQueryString.size()), 2);
            int i = a2.f36664a;
            int i2 = a2.f36665b;
            int i3 = a2.f36666c;
            if (i3 >= 0) {
                if (i > i2) {
                    return;
                }
            } else if (i < i2) {
                return;
            }
            while (true) {
                String str = toQueryString.get(i);
                String str2 = toQueryString.get(i + 1);
                if (i > 0) {
                    out.append('&');
                }
                out.append(str);
                if (str2 != null) {
                    out.append('=');
                    out.append(str2);
                }
                if (i != i2) {
                    i += i3;
                } else {
                    return;
                }
            }
        }
    }

    public HttpUrl(String scheme, String username, String password, String host, int i, List<String> pathSegments, List<String> list, String str, String url) {
        p.d(scheme, "scheme");
        p.d(username, "username");
        p.d(password, "password");
        p.d(host, "host");
        p.d(pathSegments, "pathSegments");
        p.d(url, "url");
        this.scheme = scheme;
        this.username = username;
        this.password = password;
        this.host = host;
        this.port = i;
        this.pathSegments = pathSegments;
        this.queryNamesAndValues = list;
        this.fragment = str;
        this.url = url;
        this.isHttps = p.a((Object) scheme, (Object) Constants.HTTPS);
    }

    public static final int defaultPort(String str) {
        return Companion.defaultPort(str);
    }

    public static final HttpUrl get(String str) {
        return Companion.get(str);
    }

    public static final HttpUrl get(URI uri) {
        return Companion.get(uri);
    }

    public static final HttpUrl get(URL url) {
        return Companion.get(url);
    }

    public static final HttpUrl parse(String str) {
        return Companion.parse(str);
    }

    /* renamed from: -deprecated_encodedFragment  reason: not valid java name */
    public final String m7863deprecated_encodedFragment() {
        return encodedFragment();
    }

    /* renamed from: -deprecated_encodedPassword  reason: not valid java name */
    public final String m7864deprecated_encodedPassword() {
        return encodedPassword();
    }

    /* renamed from: -deprecated_encodedPath  reason: not valid java name */
    public final String m7865deprecated_encodedPath() {
        return encodedPath();
    }

    /* renamed from: -deprecated_encodedPathSegments  reason: not valid java name */
    public final List<String> m7866deprecated_encodedPathSegments() {
        return encodedPathSegments();
    }

    /* renamed from: -deprecated_encodedQuery  reason: not valid java name */
    public final String m7867deprecated_encodedQuery() {
        return encodedQuery();
    }

    /* renamed from: -deprecated_encodedUsername  reason: not valid java name */
    public final String m7868deprecated_encodedUsername() {
        return encodedUsername();
    }

    /* renamed from: -deprecated_fragment  reason: not valid java name */
    public final String m7869deprecated_fragment() {
        return this.fragment;
    }

    /* renamed from: -deprecated_host  reason: not valid java name */
    public final String m7870deprecated_host() {
        return this.host;
    }

    /* renamed from: -deprecated_password  reason: not valid java name */
    public final String m7871deprecated_password() {
        return this.password;
    }

    /* renamed from: -deprecated_pathSegments  reason: not valid java name */
    public final List<String> m7872deprecated_pathSegments() {
        return this.pathSegments;
    }

    /* renamed from: -deprecated_pathSize  reason: not valid java name */
    public final int m7873deprecated_pathSize() {
        return pathSize();
    }

    /* renamed from: -deprecated_port  reason: not valid java name */
    public final int m7874deprecated_port() {
        return this.port;
    }

    /* renamed from: -deprecated_query  reason: not valid java name */
    public final String m7875deprecated_query() {
        return query();
    }

    /* renamed from: -deprecated_queryParameterNames  reason: not valid java name */
    public final Set<String> m7876deprecated_queryParameterNames() {
        return queryParameterNames();
    }

    /* renamed from: -deprecated_querySize  reason: not valid java name */
    public final int m7877deprecated_querySize() {
        return querySize();
    }

    /* renamed from: -deprecated_scheme  reason: not valid java name */
    public final String m7878deprecated_scheme() {
        return this.scheme;
    }

    /* renamed from: -deprecated_uri  reason: not valid java name */
    public final URI m7879deprecated_uri() {
        return uri();
    }

    /* renamed from: -deprecated_url  reason: not valid java name */
    public final URL m7880deprecated_url() {
        return url();
    }

    /* renamed from: -deprecated_username  reason: not valid java name */
    public final String m7881deprecated_username() {
        return this.username;
    }

    public final String encodedFragment() {
        if (this.fragment == null) {
            return null;
        }
        int a2 = kotlin.h.p.a((CharSequence) this.url, '#', 0, false, 6);
        String str = this.url;
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(a2 + 1);
        p.b(substring, "(this as java.lang.String).substring(startIndex)");
        return substring;
    }

    public final String encodedPassword() {
        if (this.password.length() == 0) {
            return "";
        }
        int a2 = kotlin.h.p.a((CharSequence) this.url, ':', this.scheme.length() + 3, false, 4);
        int a3 = kotlin.h.p.a((CharSequence) this.url, '@', 0, false, 6);
        String str = this.url;
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(a2 + 1, a3);
        p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public final String encodedPath() {
        int a2 = kotlin.h.p.a((CharSequence) this.url, '/', this.scheme.length() + 3, false, 4);
        String str = this.url;
        int delimiterOffset = Util.delimiterOffset(str, "?#", a2, str.length());
        String str2 = this.url;
        Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
        String substring = str2.substring(a2, delimiterOffset);
        p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public final List<String> encodedPathSegments() {
        int a2 = kotlin.h.p.a((CharSequence) this.url, '/', this.scheme.length() + 3, false, 4);
        String str = this.url;
        int delimiterOffset = Util.delimiterOffset(str, "?#", a2, str.length());
        ArrayList arrayList = new ArrayList();
        while (a2 < delimiterOffset) {
            int i = a2 + 1;
            a2 = Util.delimiterOffset(this.url, '/', i, delimiterOffset);
            String str2 = this.url;
            Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
            String substring = str2.substring(i, a2);
            p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            arrayList.add(substring);
        }
        return arrayList;
    }

    public final String encodedQuery() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int a2 = kotlin.h.p.a((CharSequence) this.url, '?', 0, false, 6) + 1;
        String str = this.url;
        int delimiterOffset = Util.delimiterOffset(str, '#', a2, str.length());
        String str2 = this.url;
        Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
        String substring = str2.substring(a2, delimiterOffset);
        p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public final String encodedUsername() {
        if (this.username.length() == 0) {
            return "";
        }
        int length = this.scheme.length() + 3;
        String str = this.url;
        int delimiterOffset = Util.delimiterOffset(str, ":@", length, str.length());
        String str2 = this.url;
        Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
        String substring = str2.substring(length, delimiterOffset);
        p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof HttpUrl) && p.a((Object) ((HttpUrl) obj).url, (Object) this.url);
    }

    public final String fragment() {
        return this.fragment;
    }

    public final int hashCode() {
        return this.url.hashCode();
    }

    public final String host() {
        return this.host;
    }

    public final boolean isHttps() {
        return this.isHttps;
    }

    public final Builder newBuilder() {
        Builder builder = new Builder();
        builder.setScheme$okhttp(this.scheme);
        builder.setEncodedUsername$okhttp(encodedUsername());
        builder.setEncodedPassword$okhttp(encodedPassword());
        builder.setHost$okhttp(this.host);
        builder.setPort$okhttp(this.port != Companion.defaultPort(this.scheme) ? this.port : -1);
        builder.getEncodedPathSegments$okhttp().clear();
        builder.getEncodedPathSegments$okhttp().addAll(encodedPathSegments());
        builder.encodedQuery(encodedQuery());
        builder.setEncodedFragment$okhttp(encodedFragment());
        return builder;
    }

    public final Builder newBuilder(String link) {
        Builder builder;
        p.d(link, "link");
        try {
            builder = new Builder().parse$okhttp(this, link);
        } catch (IllegalArgumentException e) {
            builder = null;
        }
        return builder;
    }

    public final String password() {
        return this.password;
    }

    public final List<String> pathSegments() {
        return this.pathSegments;
    }

    public final int pathSize() {
        return this.pathSegments.size();
    }

    public final int port() {
        return this.port;
    }

    public final String query() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Companion.toQueryString$okhttp(this.queryNamesAndValues, sb);
        return sb.toString();
    }

    public final String queryParameter(String name) {
        p.d(name, "name");
        List<String> list = this.queryNamesAndValues;
        if (list == null) {
            return null;
        }
        a a2 = d.a(d.b(0, list.size()), 2);
        int i = a2.f36664a;
        int i2 = a2.f36665b;
        int i3 = a2.f36666c;
        if (i3 >= 0) {
            if (i > i2) {
                return null;
            }
        } else if (i < i2) {
            return null;
        }
        while (!p.a((Object) name, (Object) this.queryNamesAndValues.get(i))) {
            if (i == i2) {
                return null;
            }
            i += i3;
        }
        return this.queryNamesAndValues.get(i + 1);
    }

    public final String queryParameterName(int i) {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            String str = list.get(i * 2);
            p.a((Object) str);
            return str;
        }
        throw new IndexOutOfBoundsException();
    }

    public final Set<String> queryParameterNames() {
        if (this.queryNamesAndValues == null) {
            return ab.f36567a;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        a a2 = d.a(d.b(0, this.queryNamesAndValues.size()), 2);
        int i = a2.f36664a;
        int i2 = a2.f36665b;
        int i3 = a2.f36666c;
        if (i3 < 0 ? i >= i2 : i <= i2) {
            while (true) {
                String str = this.queryNamesAndValues.get(i);
                p.a((Object) str);
                linkedHashSet.add(str);
                if (i == i2) {
                    break;
                }
                i += i3;
            }
        }
        Set<String> unmodifiableSet = Collections.unmodifiableSet(linkedHashSet);
        p.b(unmodifiableSet, "Collections.unmodifiableSet(result)");
        return unmodifiableSet;
    }

    public final String queryParameterValue(int i) {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            return list.get((i * 2) + 1);
        }
        throw new IndexOutOfBoundsException();
    }

    public final List<String> queryParameterValues(String name) {
        p.d(name, "name");
        if (this.queryNamesAndValues == null) {
            return z.f36608a;
        }
        ArrayList arrayList = new ArrayList();
        a a2 = d.a(d.b(0, this.queryNamesAndValues.size()), 2);
        int i = a2.f36664a;
        int i2 = a2.f36665b;
        int i3 = a2.f36666c;
        if (i3 < 0 ? i >= i2 : i <= i2) {
            while (true) {
                if (p.a((Object) name, (Object) this.queryNamesAndValues.get(i))) {
                    arrayList.add(this.queryNamesAndValues.get(i + 1));
                }
                if (i == i2) {
                    break;
                }
                i += i3;
            }
        }
        List<String> unmodifiableList = Collections.unmodifiableList(arrayList);
        p.b(unmodifiableList, "Collections.unmodifiableList(result)");
        return unmodifiableList;
    }

    public final int querySize() {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            return list.size() / 2;
        }
        return 0;
    }

    public final String redact() {
        Builder newBuilder = newBuilder("/...");
        p.a(newBuilder);
        return newBuilder.username("").password("").build().toString();
    }

    public final HttpUrl resolve(String link) {
        p.d(link, "link");
        Builder newBuilder = newBuilder(link);
        if (newBuilder != null) {
            return newBuilder.build();
        }
        return null;
    }

    public final String scheme() {
        return this.scheme;
    }

    public final String toString() {
        return this.url;
    }

    public final String topPrivateDomain() {
        if (Util.canParseAsIpAddress(this.host)) {
            return null;
        }
        return PublicSuffixDatabase.Companion.get().getEffectiveTldPlusOne(this.host);
    }

    public final URI uri() {
        URI uri;
        String builder = newBuilder().reencodeForUri$okhttp().toString();
        try {
            uri = new URI(builder);
        } catch (URISyntaxException e) {
            try {
                uri = URI.create(new l("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]").a(builder, ""));
                p.b(uri, "try {\n        val stripp…e) // Unexpected!\n      }");
            } catch (Exception e2) {
                throw new RuntimeException(e);
            }
        }
        return uri;
    }

    public final URL url() {
        try {
            return new URL(this.url);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    public final String username() {
        return this.username;
    }
}
