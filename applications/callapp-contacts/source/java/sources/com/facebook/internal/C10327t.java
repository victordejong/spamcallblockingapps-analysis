package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import com.appsflyer.internal.referrer.Payload;
import com.facebook.AccessToken;
import com.facebook.C10181g;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0011\u0018�� \u00192\u00020\u0001:\u0003\u0017\u0018\u0019B1\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0001¢\u0006\u0002\u0010\u000bR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0001¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\r¨\u0006\u001a"}, m4298d2 = {"Lcom/facebook/internal/ImageRequest;", "", "context", "Landroid/content/Context;", "imageUri", "Landroid/net/Uri;", "callback", "Lcom/facebook/internal/ImageRequest$Callback;", "allowCachedRedirects", "", "callerTag", "(Landroid/content/Context;Landroid/net/Uri;Lcom/facebook/internal/ImageRequest$Callback;ZLjava/lang/Object;)V", "getAllowCachedRedirects", "()Z", "getCallback", "()Lcom/facebook/internal/ImageRequest$Callback;", "getCallerTag", "()Ljava/lang/Object;", "getContext", "()Landroid/content/Context;", "getImageUri", "()Landroid/net/Uri;", "isCachedRedirectAllowed", "Builder", "Callback", "Companion", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.t */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/t.class */
public final class C10327t {

    /* renamed from: a */
    public static final C10329b f33914a = new C10329b(null);

    /* renamed from: b */
    private final Context f33915b;

    /* renamed from: c */
    private final Uri f33916c;

    /* renamed from: d */
    private final AbstractC10328a f33917d;

    /* renamed from: e */
    private final boolean f33918e;

    /* renamed from: f */
    private final Object f33919f;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, m4298d2 = {"Lcom/facebook/internal/ImageRequest$Callback;", "", "onCompleted", "", Payload.RESPONSE, "Lcom/facebook/internal/ImageResponse;", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.t$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/t$a.class */
    public interface AbstractC10328a {
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\nH\u0007J,\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0012"}, m4298d2 = {"Lcom/facebook/internal/ImageRequest$Companion;", "", "()V", "ACCESS_TOKEN_PARAM", "", "HEIGHT_PARAM", "MIGRATION_PARAM", "MIGRATION_VALUE", "PATH", "UNSPECIFIED_DIMENSION", "", "WIDTH_PARAM", "getProfilePictureUri", "Landroid/net/Uri;", "userId", "width", "height", "accessToken", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.t$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/t$b.class */
    public static final class C10329b {
        private C10329b() {
        }

        public /* synthetic */ C10329b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private C10327t(Context context, Uri uri, AbstractC10328a abstractC10328a, boolean z, Object obj) {
        this.f33915b = context;
        this.f33916c = uri;
        this.f33917d = abstractC10328a;
        this.f33918e = z;
        this.f33919f = obj;
    }

    public /* synthetic */ C10327t(Context context, Uri uri, AbstractC10328a abstractC10328a, boolean z, Object obj, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, uri, abstractC10328a, z, obj);
    }

    /* renamed from: a */
    public static final Uri m23001a(String str, int i, int i2, String str2) {
        C10218af.m23178a(str, "userId");
        int max = Math.max(i, 0);
        int max2 = Math.max(i2, 0);
        if ((max == 0 && max2 == 0) ? false : true) {
            Uri.Builder buildUpon = Uri.parse(C10210ac.m23253f()).buildUpon();
            C18500ag c18500ag = C18500ag.f63594a;
            String format = String.format(Locale.US, "%s/%s/picture", Arrays.copyOf(new Object[]{C10181g.m23289j(), str}, 2));
            C18524p.m3843b(format, "java.lang.String.format(locale, format, *args)");
            Uri.Builder path = buildUpon.path(format);
            if (max2 != 0) {
                path.appendQueryParameter("height", String.valueOf(max2));
            }
            if (max != 0) {
                path.appendQueryParameter("width", String.valueOf(max));
            }
            path.appendQueryParameter("migration_overrides", "{october_2012:true}");
            if (!C10213ae.m23230a(str2)) {
                path.appendQueryParameter(AccessToken.ACCESS_TOKEN_KEY, str2);
            } else if (!C10213ae.m23230a(C10181g.m23284o()) && !C10213ae.m23230a(C10181g.m23286m())) {
                path.appendQueryParameter(AccessToken.ACCESS_TOKEN_KEY, C10181g.m23286m() + "|" + C10181g.m23284o());
            }
            Uri build = path.build();
            C18524p.m3843b(build, "builder.build()");
            return build;
        }
        throw new IllegalArgumentException("Either width or height must be greater than 0".toString());
    }
}
