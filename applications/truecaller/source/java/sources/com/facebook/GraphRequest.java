package com.facebook;

import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.GraphRequest;
import com.facebook.internal.C1143k0;
import com.facebook.internal.C1161o0;
import com.facebook.internal.C1168q0;
import com.facebook.internal.C1172r0;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ContentFormat;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Pattern;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1538j.AbstractC23261t0;
import p193e.p1538j.AsyncTaskC23238j0;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23228f0;
import p193e.p1538j.C23236i0;
import p193e.p1538j.C23240k0;
import p193e.p1538j.C23244l0;
import p193e.p1538j.C23257r0;
import p193e.p1538j.EnumC23246m0;
import p193e.p1538j.EnumC23248n0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.f0.b;
import s1.f0.r;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��j\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018�� `2\u00020\u0001:\t^_`abcdefBO\b\u0017\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\rB\u0019\b\u0010\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010J\b\u0010F\u001a\u00020GH\u0002J\u0018\u0010H\u001a\u00020\u00052\u0006\u0010I\u001a\u00020\u00052\u0006\u0010J\u001a\u00020\u001eH\u0002J\u0006\u0010K\u001a\u00020LJ\u0006\u0010M\u001a\u00020NJ\n\u0010O\u001a\u0004\u0018\u00010\u0005H\u0002J\n\u0010P\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010Q\u001a\u00020\u00052\u0006\u0010I\u001a\u00020\u0005H\u0002J\b\u0010R\u001a\u00020\u001eH\u0002J\b\u0010S\u001a\u00020\u001eH\u0002J$\u0010T\u001a\u00020G2\u0006\u0010U\u001a\u00020V2\u0012\u0010W\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020Y0XH\u0002J\u000e\u0010Z\u001a\u00020G2\u0006\u0010[\u001a\u00020\u001eJ\b\u0010\\\u001a\u00020\u001eH\u0002J\b\u0010]\u001a\u00020\u0005H\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u0017\"\u0004\b\u001c\u0010\u0019R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R(\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u000b@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u000e\u0010'\u001a\u00020\u001eX\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010(\u001a\u0004\u0018\u00010)X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b.\u0010\u0017\"\u0004\b/\u0010\u0019R\u0016\u00100\u001a\u0004\u0018\u00010\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b1\u0010\u0017R(\u0010\b\u001a\u0004\u0018\u00010\t2\b\u00102\u001a\u0004\u0018\u00010\t@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\u0011\u0010;\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b<\u0010\u0017R\u001c\u0010=\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\u0011\u0010B\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\bC\u0010\u0017R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bD\u0010\u0017\"\u0004\bE\u0010\u0019¨\u0006g"}, d2 = {"Lcom/facebook/GraphRequest;", "", "accessToken", "Lcom/facebook/AccessToken;", "graphPath", "", "parameters", "Landroid/os/Bundle;", "httpMethod", "Lcom/facebook/HttpMethod;", "callback", "Lcom/facebook/GraphRequest$Callback;", "version", "(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;)V", "overriddenURL", "Ljava/net/URL;", "(Lcom/facebook/AccessToken;Ljava/net/URL;)V", "getAccessToken", "()Lcom/facebook/AccessToken;", "setAccessToken", "(Lcom/facebook/AccessToken;)V", "batchEntryDependsOn", "getBatchEntryDependsOn", "()Ljava/lang/String;", "setBatchEntryDependsOn", "(Ljava/lang/String;)V", "batchEntryName", "getBatchEntryName", "setBatchEntryName", "batchEntryOmitResultOnSuccess", "", "getBatchEntryOmitResultOnSuccess", "()Z", "setBatchEntryOmitResultOnSuccess", "(Z)V", "getCallback", "()Lcom/facebook/GraphRequest$Callback;", "setCallback", "(Lcom/facebook/GraphRequest$Callback;)V", "forceApplicationRequest", "graphObject", "Lorg/json/JSONObject;", "getGraphObject", "()Lorg/json/JSONObject;", "setGraphObject", "(Lorg/json/JSONObject;)V", "getGraphPath", "setGraphPath", "graphPathWithVersion", "getGraphPathWithVersion", "value", "getHttpMethod", "()Lcom/facebook/HttpMethod;", "setHttpMethod", "(Lcom/facebook/HttpMethod;)V", "getParameters", "()Landroid/os/Bundle;", "setParameters", "(Landroid/os/Bundle;)V", "relativeUrlForBatchedRequest", "getRelativeUrlForBatchedRequest", RemoteMessageConst.Notification.TAG, "getTag", "()Ljava/lang/Object;", "setTag", "(Ljava/lang/Object;)V", "urlForSingleRequest", "getUrlForSingleRequest", "getVersion", "setVersion", "addCommonParameters", "", "appendParametersToBaseUrl", "baseUrl", "isBatch", "executeAndWait", "Lcom/facebook/GraphResponse;", "executeAsync", "Lcom/facebook/GraphRequestAsyncTask;", "getAccessTokenToUseForRequest", "getClientTokenForRequest", "getUrlWithGraphPath", "isApplicationRequest", "isValidGraphRequestForDomain", "serializeToBatch", "batch", "Lorg/json/JSONArray;", "attachments", "", "Lcom/facebook/GraphRequest$Attachment;", "setForceApplicationRequest", "forceOverride", "shouldForceClientTokenForRequest", "toString", "Attachment", "Callback", "Companion", "GraphJSONArrayCallback", "GraphJSONObjectCallback", "KeyValueSerializer", "OnProgressCallback", "ParcelableResourceWithMimeType", "Serializer", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2-dex2jar.jar:com/facebook/GraphRequest.class */
public final class GraphRequest {

    /* renamed from: k */
    public static final C0923c f2543k = new C0923c(null);

    /* renamed from: l */
    public static final String f2544l;

    /* renamed from: m */
    public static final String f2545m;

    /* renamed from: n */
    public static final Pattern f2546n;

    /* renamed from: o */
    public static volatile String f2547o;

    /* renamed from: a */
    public AccessToken f2548a;

    /* renamed from: b */
    public String f2549b;

    /* renamed from: c */
    public JSONObject f2550c;

    /* renamed from: d */
    public boolean f2551d;

    /* renamed from: e */
    public Bundle f2552e;

    /* renamed from: f */
    public Object f2553f;

    /* renamed from: g */
    public String f2554g;

    /* renamed from: h */
    public AbstractC0922b f2555h;

    /* renamed from: i */
    public EnumC23246m0 f2556i;

    /* renamed from: j */
    public boolean f2557j;

    @Metadata(d1 = {"��,\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018�� \u0015*\n\b��\u0010\u0001*\u0004\u0018\u00010\u00022\u00020\u0002:\u0001\u0015B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00028��\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006B\u000f\b\u0012\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0010H\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0015\u0010\u0003\u001a\u0004\u0018\u00018��¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\r¨\u0006\u0016"}, d2 = {"Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;", "RESOURCE", "Landroid/os/Parcelable;", Constants.VAST_RESOURCE, "mimeType", "", "(Landroid/os/Parcelable;Ljava/lang/String;)V", "source", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "getMimeType", "()Ljava/lang/String;", "getResource", "()Landroid/os/Parcelable;", "Landroid/os/Parcelable;", "describeContents", "", "writeToParcel", "", "out", "flags", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes2-dex2jar.jar:com/facebook/GraphRequest$ParcelableResourceWithMimeType.class */
    public static final class ParcelableResourceWithMimeType<RESOURCE extends Parcelable> implements Parcelable {
        public static final Parcelable.Creator<ParcelableResourceWithMimeType<?>> CREATOR = new C0920a();

        /* renamed from: a */
        public final String f2558a;

        /* renamed from: b */
        public final RESOURCE f2559b;

        @Metadata(d1 = {"��%\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u000e\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00020\u0001J\u0014\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J!\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"com/facebook/GraphRequest$ParcelableResourceWithMimeType$Companion$CREATOR$1", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;", "createFromParcel", "source", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* renamed from: com.facebook.GraphRequest$ParcelableResourceWithMimeType$a */
        /* loaded from: classes2-dex2jar.jar:com/facebook/GraphRequest$ParcelableResourceWithMimeType$a.class */
        public static final class C0920a implements Parcelable.Creator<ParcelableResourceWithMimeType<?>> {
            @Override // android.os.Parcelable.Creator
            public ParcelableResourceWithMimeType<?> createFromParcel(Parcel parcel) {
                l.e(parcel, "source");
                return new ParcelableResourceWithMimeType<>(parcel, (f) null);
            }

            @Override // android.os.Parcelable.Creator
            public ParcelableResourceWithMimeType<?>[] newArray(int i) {
                return new ParcelableResourceWithMimeType[i];
            }
        }

        public ParcelableResourceWithMimeType(Parcel parcel, f fVar) {
            this.f2558a = parcel.readString();
            C23228f0 c23228f0 = C23228f0.f64291a;
            this.f2559b = (RESOURCE) parcel.readParcelable(C23228f0.m7354a().getClassLoader());
        }

        public ParcelableResourceWithMimeType(RESOURCE resource, String str) {
            this.f2558a = str;
            this.f2559b = resource;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "out");
            parcel.writeString(this.f2558a);
            parcel.writeParcelable(this.f2559b, i);
        }
    }

    @Metadata(d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n��\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/facebook/GraphRequest$Attachment;", "", "request", "Lcom/facebook/GraphRequest;", "value", "(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V", "getRequest", "()Lcom/facebook/GraphRequest;", "getValue", "()Ljava/lang/Object;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.GraphRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/GraphRequest$a.class */
    public static final class C0921a {

        /* renamed from: a */
        public final GraphRequest f2560a;

        /* renamed from: b */
        public final Object f2561b;

        public C0921a(GraphRequest graphRequest, Object obj) {
            l.e(graphRequest, "request");
            this.f2560a = graphRequest;
            this.f2561b = obj;
        }
    }

    @Metadata(d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bæ\u0080\u0001\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/facebook/GraphRequest$Callback;", "", "onCompleted", "", "response", "Lcom/facebook/GraphResponse;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.GraphRequest$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/GraphRequest$b.class */
    public interface AbstractC0922b {
        /* renamed from: a */
        void mo7325a(C23244l0 c23244l0);
    }

    @Metadata(d1 = {"��î\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001b\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n��\n\u0002\u0010\u001e\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\t\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0002J\u0010\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>H\u0007J\u0016\u0010?\u001a\b\u0012\u0004\u0012\u00020<0@2\u0006\u0010A\u001a\u00020BH\u0007J'\u0010?\u001a\b\u0012\u0004\u0012\u00020<0@2\u0012\u0010A\u001a\n\u0012\u0006\b\u0001\u0012\u00020>0C\"\u00020>H\u0007¢\u0006\u0002\u0010DJ\u001c\u0010?\u001a\b\u0012\u0004\u0012\u00020<0@2\f\u0010A\u001a\b\u0012\u0004\u0012\u00020>0EH\u0007J\u0010\u0010F\u001a\u00020G2\u0006\u0010A\u001a\u00020BH\u0007J!\u0010F\u001a\u00020G2\u0012\u0010A\u001a\n\u0012\u0006\b\u0001\u0012\u00020>0C\"\u00020>H\u0007¢\u0006\u0002\u0010HJ\u0016\u0010F\u001a\u00020G2\f\u0010A\u001a\b\u0012\u0004\u0012\u00020>0EH\u0007J\u001e\u0010I\u001a\b\u0012\u0004\u0012\u00020<0@2\u0006\u0010J\u001a\u0002082\u0006\u0010A\u001a\u00020BH\u0007J$\u0010I\u001a\b\u0012\u0004\u0012\u00020<0@2\u0006\u0010J\u001a\u0002082\f\u0010A\u001a\b\u0012\u0004\u0012\u00020>0EH\u0007J\"\u0010K\u001a\u00020G2\b\u0010L\u001a\u0004\u0018\u00010M2\u0006\u0010J\u001a\u0002082\u0006\u0010A\u001a\u00020BH\u0007J\u0018\u0010K\u001a\u00020G2\u0006\u0010J\u001a\u0002082\u0006\u0010A\u001a\u00020BH\u0007J\u0010\u0010N\u001a\u00020\u00042\u0006\u0010O\u001a\u00020BH\u0002J\n\u0010P\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010Q\u001a\u00020\u00042\b\u0010R\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010S\u001a\u00020T2\u0006\u0010A\u001a\u00020BH\u0002J\u0010\u0010U\u001a\u00020T2\u0006\u0010A\u001a\u00020BH\u0002J\u0010\u0010V\u001a\u00020T2\u0006\u0010W\u001a\u00020\u0004H\u0002J\u0012\u0010X\u001a\u00020T2\b\u0010Y\u001a\u0004\u0018\u00010\u0001H\u0002J\u0012\u0010Z\u001a\u00020T2\b\u0010Y\u001a\u0004\u0018\u00010\u0001H\u0002J$\u0010[\u001a\u00020>2\b\u0010\\\u001a\u0004\u0018\u00010]2\u0006\u0010^\u001a\u00020_2\b\u0010`\u001a\u0004\u0018\u00010aH\u0007J.\u0010[\u001a\u00020>2\b\u0010\\\u001a\u0004\u0018\u00010]2\u0006\u0010^\u001a\u00020_2\b\u0010b\u001a\u0004\u0018\u00010\u00042\b\u0010`\u001a\u0004\u0018\u00010aH\u0007J&\u0010c\u001a\u00020>2\b\u0010\\\u001a\u0004\u0018\u00010]2\b\u0010d\u001a\u0004\u0018\u00010\u00042\b\u0010`\u001a\u0004\u0018\u00010aH\u0007J&\u0010e\u001a\u00020>2\b\u0010\\\u001a\u0004\u0018\u00010]2\b\u0010R\u001a\u0004\u0018\u00010\u00042\b\u0010`\u001a\u0004\u0018\u00010aH\u0007J\u001c\u0010f\u001a\u00020>2\b\u0010\\\u001a\u0004\u0018\u00010]2\b\u0010`\u001a\u0004\u0018\u00010gH\u0007J\u001c\u0010h\u001a\u00020>2\b\u0010\\\u001a\u0004\u0018\u00010]2\b\u0010`\u001a\u0004\u0018\u00010iH\u0007J@\u0010j\u001a\u00020>2\b\u0010\\\u001a\u0004\u0018\u00010]2\b\u0010k\u001a\u0004\u0018\u00010l2\u0006\u0010m\u001a\u00020 2\u0006\u0010n\u001a\u00020 2\b\u0010o\u001a\u0004\u0018\u00010\u00042\b\u0010`\u001a\u0004\u0018\u00010iH\u0007J0\u0010p\u001a\u00020>2\b\u0010\\\u001a\u0004\u0018\u00010]2\b\u0010R\u001a\u0004\u0018\u00010\u00042\b\u0010q\u001a\u0004\u0018\u00010r2\b\u0010`\u001a\u0004\u0018\u00010aH\u0007JB\u0010s\u001a\u00020>2\b\u0010\\\u001a\u0004\u0018\u00010]2\b\u0010R\u001a\u0004\u0018\u00010\u00042\u0006\u0010t\u001a\u00020u2\b\u0010v\u001a\u0004\u0018\u00010\u00042\b\u0010w\u001a\u0004\u0018\u00010x2\b\u0010`\u001a\u0004\u0018\u00010aH\u0007JB\u0010s\u001a\u00020>2\b\u0010\\\u001a\u0004\u0018\u00010]2\b\u0010R\u001a\u0004\u0018\u00010\u00042\u0006\u0010y\u001a\u00020z2\b\u0010v\u001a\u0004\u0018\u00010\u00042\b\u0010w\u001a\u0004\u0018\u00010x2\b\u0010`\u001a\u0004\u0018\u00010aH\u0007JB\u0010s\u001a\u00020>2\b\u0010\\\u001a\u0004\u0018\u00010]2\b\u0010R\u001a\u0004\u0018\u00010\u00042\u0006\u0010{\u001a\u00020|2\b\u0010v\u001a\u0004\u0018\u00010\u00042\b\u0010w\u001a\u0004\u0018\u00010x2\b\u0010`\u001a\u0004\u0018\u00010aH\u0007J\u0012\u0010}\u001a\u00020\u00042\b\u0010Y\u001a\u0004\u0018\u00010\u0001H\u0002J\"\u0010~\u001a\u00020\u007f2\u0006\u0010q\u001a\u00020r2\u0006\u0010W\u001a\u00020\u00042\b\u0010\u0080\u0001\u001a\u00030\u0081\u0001H\u0002J-\u0010\u0082\u0001\u001a\u00020\u007f2\u0007\u0010\u0083\u0001\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020\u00012\b\u0010\u0080\u0001\u001a\u00030\u0081\u00012\u0007\u0010\u0084\u0001\u001a\u00020TH\u0002JA\u0010\u0085\u0001\u001a\u00020\u007f2\u0006\u0010A\u001a\u00020B2\n\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0087\u00012\u0007\u0010\u0088\u0001\u001a\u00020 2\u0006\u00109\u001a\u00020:2\b\u0010\u0089\u0001\u001a\u00030\u008a\u00012\u0007\u0010\u008b\u0001\u001a\u00020TH\u0002J&\u0010\u008c\u0001\u001a\u00020\u007f2\u0006\u0010A\u001a\u00020B2\r\u0010\u008d\u0001\u001a\b\u0012\u0004\u0012\u00020<0@H\u0001¢\u0006\u0003\b\u008e\u0001J*\u0010\u008f\u0001\u001a\u00020\u007f2\u0015\u0010\u0090\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0005\u0012\u00030\u0092\u00010\u0091\u00012\b\u0010\u0080\u0001\u001a\u00030\u0093\u0001H\u0002J$\u0010\u0094\u0001\u001a\u00020\u007f2\u0007\u0010\u0095\u0001\u001a\u00020x2\b\u0010\u0080\u0001\u001a\u00030\u0093\u00012\u0006\u0010=\u001a\u00020>H\u0002J8\u0010\u0096\u0001\u001a\u00020\u007f2\b\u0010\u0080\u0001\u001a\u00030\u0093\u00012\f\u0010A\u001a\b\u0012\u0004\u0012\u00020>0E2\u0015\u0010\u0090\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0005\u0012\u00030\u0092\u00010\u0097\u0001H\u0002J\u001f\u0010\u0098\u0001\u001a\u00020\u007f2\u0006\u0010A\u001a\u00020B2\u0006\u0010J\u001a\u000208H\u0001¢\u0006\u0003\b\u0099\u0001J\u001a\u0010\u009a\u0001\u001a\u00020\u007f2\u0006\u0010J\u001a\u0002082\u0007\u0010\u008b\u0001\u001a\u00020TH\u0002J\u0013\u0010\u009b\u0001\u001a\u00020\u007f2\b\u0010b\u001a\u0004\u0018\u00010\u0004H\u0007J\u0011\u0010\u009c\u0001\u001a\u0002082\u0006\u0010A\u001a\u00020BH\u0007J#\u0010\u009c\u0001\u001a\u0002082\u0012\u0010A\u001a\n\u0012\u0006\b\u0001\u0012\u00020>0C\"\u00020>H\u0007¢\u0006\u0003\u0010\u009d\u0001J\u0017\u0010\u009c\u0001\u001a\u0002082\f\u0010A\u001a\b\u0012\u0004\u0012\u00020>0EH\u0007J\u0017\u0010\u009e\u0001\u001a\u00020\u007f2\u0006\u0010A\u001a\u00020BH\u0001¢\u0006\u0003\b\u009f\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020 X\u0086T¢\u0006\u0002\n��R\u000e\u0010!\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\"\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010#\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010$\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010%\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010&\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010'\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010(\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0016\u0010)\u001a\u00020\u00048��X\u0081\u0004¢\u0006\b\n��\u0012\u0004\b*\u0010\u0002R\u000e\u0010+\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010,\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010-\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010.\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010/\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b0\u00101R\u0018\u00102\u001a\u0004\u0018\u00010\u00048BX\u0082\u000e¢\u0006\b\n��\u001a\u0004\b3\u00101R\u0016\u00104\u001a\n 6*\u0004\u0018\u00010505X\u0082\u0004¢\u0006\u0002\n��¨\u0006 \u0001"}, d2 = {"Lcom/facebook/GraphRequest$Companion;", "", "()V", "ACCEPT_LANGUAGE_HEADER", "", "ACCESS_TOKEN_PARAM", "ATTACHED_FILES_PARAM", "ATTACHMENT_FILENAME_PREFIX", "BATCH_APP_ID_PARAM", "BATCH_BODY_PARAM", "BATCH_ENTRY_DEPENDS_ON_PARAM", "BATCH_ENTRY_NAME_PARAM", "BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM", "BATCH_METHOD_PARAM", "BATCH_PARAM", "BATCH_RELATIVE_URL_PARAM", "CAPTION_PARAM", "CONTENT_ENCODING_HEADER", "CONTENT_TYPE_HEADER", "DEBUG_KEY", "DEBUG_MESSAGES_KEY", "DEBUG_MESSAGE_KEY", "DEBUG_MESSAGE_LINK_KEY", "DEBUG_MESSAGE_TYPE_KEY", "DEBUG_PARAM", "DEBUG_SEVERITY_INFO", "DEBUG_SEVERITY_WARNING", "FIELDS_PARAM", "FORMAT_JSON", "FORMAT_PARAM", "ISO_8601_FORMAT_STRING", "MAXIMUM_BATCH_SIZE", "", "ME", "MIME_BOUNDARY", "MY_FRIENDS", "MY_PHOTOS", "PICTURE_PARAM", "SDK_ANDROID", "SDK_PARAM", "SEARCH", "TAG", "getTAG$facebook_core_release$annotations", "USER_AGENT_BASE", "USER_AGENT_HEADER", "VIDEOS_SUFFIX", "defaultBatchApplicationId", "mimeContentType", "getMimeContentType", "()Ljava/lang/String;", "userAgent", "getUserAgent", "versionPattern", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "createConnection", "Ljava/net/HttpURLConnection;", "url", "Ljava/net/URL;", "executeAndWait", "Lcom/facebook/GraphResponse;", "request", "Lcom/facebook/GraphRequest;", "executeBatchAndWait", "", "requests", "Lcom/facebook/GraphRequestBatch;", "", "([Lcom/facebook/GraphRequest;)Ljava/util/List;", "", "executeBatchAsync", "Lcom/facebook/GraphRequestAsyncTask;", "([Lcom/facebook/GraphRequest;)Lcom/facebook/GraphRequestAsyncTask;", "executeConnectionAndWait", "connection", "executeConnectionAsync", "callbackHandler", "Landroid/os/Handler;", "getBatchAppId", "batch", "getDefaultBatchApplicationId", "getDefaultPhotoPathIfNull", "graphPath", "hasOnProgressCallbacks", "", "isGzipCompressible", "isMeRequest", "path", "isSupportedAttachmentType", "value", "isSupportedParameterType", "newCustomAudienceThirdPartyIdRequest", "accessToken", "Lcom/facebook/AccessToken;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "callback", "Lcom/facebook/GraphRequest$Callback;", "applicationId", "newDeleteObjectRequest", "id", "newGraphPathRequest", "newMeRequest", "Lcom/facebook/GraphRequest$GraphJSONObjectCallback;", "newMyFriendsRequest", "Lcom/facebook/GraphRequest$GraphJSONArrayCallback;", "newPlacesSearchRequest", "location", "Landroid/location/Location;", "radiusInMeters", "resultsLimit", "searchText", "newPostRequest", "graphObject", "Lorg/json/JSONObject;", "newUploadPhotoRequest", "image", "Landroid/graphics/Bitmap;", "caption", "params", "Landroid/os/Bundle;", "photoUri", "Landroid/net/Uri;", "file", "Ljava/io/File;", "parameterToString", "processGraphObject", "", "serializer", "Lcom/facebook/GraphRequest$KeyValueSerializer;", "processGraphObjectProperty", AnalyticsConstants.KEY, "passByValue", "processRequest", "logger", "Lcom/facebook/internal/Logger;", "numRequests", "outputStream", "Ljava/io/OutputStream;", "shouldUseGzip", "runCallbacks", "responses", "runCallbacks$facebook_core_release", "serializeAttachments", "attachments", "", "Lcom/facebook/GraphRequest$Attachment;", "Lcom/facebook/GraphRequest$Serializer;", "serializeParameters", "bundle", "serializeRequestsAsJSON", "", "serializeToUrlConnection", "serializeToUrlConnection$facebook_core_release", "setConnectionContentType", "setDefaultBatchApplicationId", "toHttpConnection", "([Lcom/facebook/GraphRequest;)Ljava/net/HttpURLConnection;", "validateFieldsParamForGetRequests", "validateFieldsParamForGetRequests$facebook_core_release", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.GraphRequest$c */
    /* loaded from: classes2-dex2jar.jar:com/facebook/GraphRequest$c.class */
    public static final class C0923c {
        public C0923c(f fVar) {
        }

        /* renamed from: a */
        public static final String m42007a(C0923c c0923c, Object obj) {
            String str;
            if (obj instanceof String) {
                str = (String) obj;
            } else if ((obj instanceof Boolean) || (obj instanceof Number)) {
                str = obj.toString();
            } else if (!(obj instanceof Date)) {
                throw new IllegalArgumentException("Unsupported parameter type.");
            } else {
                str = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj);
                l.d(str, "iso8601DateFormat.format(value)");
            }
            return str;
        }

        /* renamed from: b */
        public final HttpURLConnection m42006b(URL url) throws IOException {
            URLConnection openConnection = url.openConnection();
            Objects.requireNonNull(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            if (GraphRequest.f2547o == null) {
                GraphRequest.f2547o = C22128a.m8562v(new Object[]{"FBAndroidSDK", "13.0.0"}, 2, "%s.%s", "java.lang.String.format(format, *args)");
                if (!C1168q0.m41700B(null)) {
                    String format = String.format(Locale.ROOT, "%s/%s", Arrays.copyOf(new Object[]{GraphRequest.f2547o, null}, 2));
                    l.d(format, "java.lang.String.format(locale, format, *args)");
                    GraphRequest.f2547o = format;
                }
            }
            httpURLConnection.setRequestProperty("User-Agent", GraphRequest.f2547o);
            httpURLConnection.setRequestProperty("Accept-Language", Locale.getDefault().toString());
            httpURLConnection.setChunkedStreamingMode(0);
            return httpURLConnection;
        }

        /* renamed from: c */
        public final List<C23244l0> m42005c(C23240k0 c23240k0) {
            Throwable th;
            Exception e;
            List<C23244l0> list;
            l.e(c23240k0, "requests");
            C1172r0 c1172r0 = C1172r0.f3203a;
            C1172r0.m41652c(c23240k0, "requests");
            HttpURLConnection httpURLConnection = null;
            try {
                httpURLConnection = m41992p(c23240k0);
                e = null;
            } catch (Exception e2) {
                e = e2;
                httpURLConnection = null;
            } catch (Throwable th2) {
                th = th2;
                C1168q0.m41672k(httpURLConnection);
                throw th;
            }
            try {
                if (httpURLConnection != null) {
                    list = m42003e(httpURLConnection, c23240k0);
                } else {
                    List<C23244l0> m7330a = C23244l0.m7330a(c23240k0.f64327c, null, new C23222c0(e));
                    m41995m(c23240k0, m7330a);
                    list = m7330a;
                }
                C1168q0.m41672k(httpURLConnection);
                return list;
            } catch (Throwable th3) {
                th = th3;
                C1168q0.m41672k(httpURLConnection);
                throw th;
            }
        }

        /* renamed from: d */
        public final AsyncTaskC23238j0 m42004d(C23240k0 c23240k0) {
            l.e(c23240k0, "requests");
            C1172r0 c1172r0 = C1172r0.f3203a;
            C1172r0.m41652c(c23240k0, "requests");
            AsyncTaskC23238j0 asyncTaskC23238j0 = new AsyncTaskC23238j0(c23240k0);
            C23228f0 c23228f0 = C23228f0.f64291a;
            asyncTaskC23238j0.executeOnExecutor(C23228f0.m7350e(), new Void[0]);
            return asyncTaskC23238j0;
        }

        /* JADX WARN: Code restructure failed: missing block: B:47:0x0163, code lost:
            if ((r0 - r0.f2471g.getTime()) > com.amazon.device.ads.DtbConstants.SIS_CHECKIN_INTERVAL) goto L49;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:40:0x011b  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x01a2  */
        /* JADX WARN: Type inference failed for: r0v7, types: [java.io.Closeable] */
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.List<p193e.p1538j.C23244l0> m42003e(java.net.HttpURLConnection r10, p193e.p1538j.C23240k0 r11) {
            /*
                Method dump skipped, instructions count: 483
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.C0923c.m42003e(java.net.HttpURLConnection, e.j.k0):java.util.List");
        }

        /* renamed from: f */
        public final boolean m42002f(Object obj) {
            return (obj instanceof Bitmap) || (obj instanceof byte[]) || (obj instanceof Uri) || (obj instanceof ParcelFileDescriptor) || (obj instanceof ParcelableResourceWithMimeType);
        }

        /* renamed from: g */
        public final boolean m42001g(Object obj) {
            return (obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Number) || (obj instanceof Date);
        }

        /* renamed from: h */
        public final GraphRequest m42000h(AccessToken accessToken, String str, AbstractC0922b abstractC0922b) {
            return new GraphRequest(accessToken, str, null, null, abstractC0922b, null, 32);
        }

        /* renamed from: i */
        public final GraphRequest m41999i(AccessToken accessToken, String str, JSONObject jSONObject, AbstractC0922b abstractC0922b) {
            GraphRequest graphRequest = new GraphRequest(accessToken, str, null, EnumC23246m0.POST, abstractC0922b, null, 32);
            graphRequest.f2550c = jSONObject;
            return graphRequest;
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0098  */
        /* renamed from: j */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m41998j(org.json.JSONObject r7, java.lang.String r8, com.facebook.GraphRequest.AbstractC0925e r9) {
            /*
                Method dump skipped, instructions count: 226
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.C0923c.m41998j(org.json.JSONObject, java.lang.String, com.facebook.GraphRequest$e):void");
        }

        /* renamed from: k */
        public final void m41997k(String str, Object obj, AbstractC0925e abstractC0925e, boolean z) {
            Class<?> cls = obj.getClass();
            if (JSONObject.class.isAssignableFrom(cls)) {
                JSONObject jSONObject = (JSONObject) obj;
                if (z) {
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        String m8562v = C22128a.m8562v(new Object[]{str, next}, 2, "%s[%s]", "java.lang.String.format(format, *args)");
                        Object opt = jSONObject.opt(next);
                        l.d(opt, "jsonObject.opt(propertyName)");
                        m41997k(m8562v, opt, abstractC0925e, z);
                    }
                } else if (jSONObject.has("id")) {
                    String optString = jSONObject.optString("id");
                    l.d(optString, "jsonObject.optString(\"id\")");
                    m41997k(str, optString, abstractC0925e, z);
                } else if (jSONObject.has("url")) {
                    String optString2 = jSONObject.optString("url");
                    l.d(optString2, "jsonObject.optString(\"url\")");
                    m41997k(str, optString2, abstractC0925e, z);
                } else if (!jSONObject.has("fbsdk:create_object")) {
                } else {
                    String jSONObject2 = jSONObject.toString();
                    l.d(jSONObject2, "jsonObject.toString()");
                    m41997k(str, jSONObject2, abstractC0925e, z);
                }
            } else if (!JSONArray.class.isAssignableFrom(cls)) {
                if (String.class.isAssignableFrom(cls) || Number.class.isAssignableFrom(cls) || Boolean.TYPE.isAssignableFrom(cls)) {
                    abstractC0925e.mo7336a(str, obj.toString());
                } else if (!Date.class.isAssignableFrom(cls)) {
                } else {
                    String format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj);
                    l.d(format, "iso8601DateFormat.format(date)");
                    abstractC0925e.mo7336a(str, format);
                }
            } else {
                JSONArray jSONArray = (JSONArray) obj;
                int length = jSONArray.length();
                if (length <= 0) {
                    return;
                }
                int i = 0;
                while (true) {
                    int i2 = i;
                    int i3 = i2 + 1;
                    String format2 = String.format(Locale.ROOT, "%s[%d]", Arrays.copyOf(new Object[]{str, Integer.valueOf(i2)}, 2));
                    l.d(format2, "java.lang.String.format(locale, format, *args)");
                    Object opt2 = jSONArray.opt(i2);
                    l.d(opt2, "jsonArray.opt(i)");
                    m41997k(format2, opt2, abstractC0925e, z);
                    if (i3 >= length) {
                        return;
                    }
                    i = i3;
                }
            }
        }

        /* renamed from: l */
        public final void m41996l(C23240k0 c23240k0, C1143k0 c1143k0, int i, URL url, OutputStream outputStream, boolean z) {
            String m7353b;
            C0927g c0927g = new C0927g(outputStream, c1143k0, z);
            if (i == 1) {
                GraphRequest m7334a = c23240k0.m7334a(0);
                HashMap hashMap = new HashMap();
                for (String str : m7334a.f2552e.keySet()) {
                    Object obj = m7334a.f2552e.get(str);
                    if (m42002f(obj)) {
                        l.d(str, AnalyticsConstants.KEY);
                        hashMap.put(str, new C0921a(m7334a, obj));
                    }
                }
                if (c1143k0 != null) {
                    c1143k0.m41733a("  Parameters:\n");
                }
                Bundle bundle = m7334a.f2552e;
                for (String str2 : bundle.keySet()) {
                    Object obj2 = bundle.get(str2);
                    if (m42001g(obj2)) {
                        l.d(str2, AnalyticsConstants.KEY);
                        c0927g.m41984g(str2, obj2, m7334a);
                    }
                }
                if (c1143k0 != null) {
                    c1143k0.m41733a("  Attachments:\n");
                }
                m41994n(hashMap, c0927g);
                JSONObject jSONObject = m7334a.f2550c;
                if (jSONObject == null) {
                    return;
                }
                String path = url.getPath();
                l.d(path, "url.path");
                m41998j(jSONObject, path, c0927g);
                return;
            }
            Iterator<GraphRequest> it = c23240k0.iterator();
            while (true) {
                if (!it.hasNext()) {
                    C0923c c0923c = GraphRequest.f2543k;
                    C23228f0 c23228f0 = C23228f0.f64291a;
                    m7353b = C23228f0.m7353b();
                    break;
                }
                AccessToken accessToken = it.next().f2548a;
                if (accessToken != null) {
                    m7353b = accessToken.f2472h;
                    break;
                }
            }
            if (m7353b.length() == 0) {
                throw new C23222c0("App ID was not specified at the request or Settings.");
            }
            c0927g.mo7336a("batch_app_id", m7353b);
            HashMap hashMap2 = new HashMap();
            JSONArray jSONArray = new JSONArray();
            Iterator<GraphRequest> it2 = c23240k0.iterator();
            while (it2.hasNext()) {
                GraphRequest next = it2.next();
                Objects.requireNonNull(next);
                JSONObject jSONObject2 = new JSONObject();
                C1161o0 c1161o0 = C1161o0.f3173a;
                String m42012h = next.m42012h(C1161o0.m41707b());
                next.m42019a();
                Uri parse = Uri.parse(next.m42018b(m42012h, true));
                String format = String.format("%s?%s", Arrays.copyOf(new Object[]{parse.getPath(), parse.getQuery()}, 2));
                l.d(format, "java.lang.String.format(format, *args)");
                jSONObject2.put("relative_url", format);
                jSONObject2.put(AnalyticsConstants.METHOD, next.f2556i);
                AccessToken accessToken2 = next.f2548a;
                if (accessToken2 != null) {
                    C1143k0.f3139e.m41727d(accessToken2.f2469e);
                }
                ArrayList arrayList = new ArrayList();
                for (String str3 : next.f2552e.keySet()) {
                    Object obj3 = next.f2552e.get(str3);
                    if ((obj3 instanceof Bitmap) || (obj3 instanceof byte[]) || (obj3 instanceof Uri) || (obj3 instanceof ParcelFileDescriptor) || (obj3 instanceof ParcelableResourceWithMimeType)) {
                        String format2 = String.format(Locale.ROOT, "%s%d", Arrays.copyOf(new Object[]{"file", Integer.valueOf(hashMap2.size())}, 2));
                        l.d(format2, "java.lang.String.format(locale, format, *args)");
                        arrayList.add(format2);
                        hashMap2.put(format2, new C0921a(next, obj3));
                    }
                }
                if (!arrayList.isEmpty()) {
                    jSONObject2.put("attached_files", TextUtils.join(",", arrayList));
                }
                JSONObject jSONObject3 = next.f2550c;
                if (jSONObject3 != null) {
                    ArrayList arrayList2 = new ArrayList();
                    GraphRequest.f2543k.m41998j(jSONObject3, format, new C23236i0(arrayList2));
                    jSONObject2.put("body", TextUtils.join(ContainerUtils.FIELD_DELIMITER, arrayList2));
                }
                jSONArray.put(jSONObject2);
            }
            l.e("batch", AnalyticsConstants.KEY);
            l.e(jSONArray, "requestJsonArray");
            l.e(c23240k0, "requests");
            OutputStream outputStream2 = c0927g.f2562a;
            if (!(outputStream2 instanceof AbstractC23261t0)) {
                String jSONArray2 = jSONArray.toString();
                l.d(jSONArray2, "requestJsonArray.toString()");
                c0927g.mo7336a("batch", jSONArray2);
            } else {
                AbstractC23261t0 abstractC23261t0 = (AbstractC23261t0) outputStream2;
                c0927g.m41988c("batch", null, null);
                c0927g.m41989b("[", new Object[0]);
                Iterator<GraphRequest> it3 = c23240k0.iterator();
                int i2 = 0;
                while (it3.hasNext()) {
                    GraphRequest next2 = it3.next();
                    JSONObject jSONObject4 = jSONArray.getJSONObject(i2);
                    abstractC23261t0.mo7319b(next2);
                    if (i2 > 0) {
                        c0927g.m41989b(",%s", jSONObject4.toString());
                    } else {
                        c0927g.m41989b("%s", jSONObject4.toString());
                    }
                    i2++;
                }
                c0927g.m41989b("]", new Object[0]);
                C1143k0 c1143k02 = c0927g.f2563b;
                if (c1143k02 != null) {
                    String j = l.j("    ", "batch");
                    String jSONArray3 = jSONArray.toString();
                    l.d(jSONArray3, "requestJsonArray.toString()");
                    c1143k02.m41732b(j, jSONArray3);
                }
            }
            if (c1143k0 != null) {
                c1143k0.m41733a("  Attachments:\n");
            }
            m41994n(hashMap2, c0927g);
        }

        /* renamed from: m */
        public final void m41995m(final C23240k0 c23240k0, List<C23244l0> list) {
            l.e(c23240k0, "requests");
            l.e(list, "responses");
            int size = c23240k0.size();
            final ArrayList arrayList = new ArrayList();
            if (size > 0) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    int i3 = i2 + 1;
                    GraphRequest m7334a = c23240k0.m7334a(i2);
                    if (m7334a.f2555h != null) {
                        arrayList.add(new Pair(m7334a.f2555h, list.get(i2)));
                    }
                    if (i3 >= size) {
                        break;
                    }
                    i = i3;
                }
            }
            if (arrayList.size() > 0) {
                Runnable runnable = new Runnable() { // from class: e.j.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        ArrayList arrayList2 = arrayList;
                        C23240k0 c23240k02 = c23240k0;
                        l.e(arrayList2, "$callbacks");
                        l.e(c23240k02, "$requests");
                        Iterator it = arrayList2.iterator();
                        while (it.hasNext()) {
                            Pair pair = (Pair) it.next();
                            GraphRequest.AbstractC0922b abstractC0922b = (GraphRequest.AbstractC0922b) pair.first;
                            Object obj = pair.second;
                            l.d(obj, "pair.second");
                            abstractC0922b.mo7325a((C23244l0) obj);
                        }
                        for (C23240k0.AbstractC23241a abstractC23241a : c23240k02.f64328d) {
                            abstractC23241a.mo7333a(c23240k02);
                        }
                    }
                };
                Handler handler = c23240k0.f64325a;
                if ((handler == null ? null : Boolean.valueOf(handler.post(runnable))) != null) {
                    return;
                }
                runnable.run();
            }
        }

        /* renamed from: n */
        public final void m41994n(Map<String, C0921a> map, C0927g c0927g) {
            for (Map.Entry<String, C0921a> entry : map.entrySet()) {
                if (GraphRequest.f2543k.m42002f(entry.getValue().f2561b)) {
                    c0927g.m41984g(entry.getKey(), entry.getValue().f2561b, entry.getValue().f2560a);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:90:0x02ba  */
        /* renamed from: o */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m41993o(p193e.p1538j.C23240k0 r9, java.net.HttpURLConnection r10) throws java.io.IOException, org.json.JSONException {
            /*
                Method dump skipped, instructions count: 704
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.C0923c.m41993o(e.j.k0, java.net.HttpURLConnection):void");
        }

        /* renamed from: p */
        public final HttpURLConnection m41992p(C23240k0 c23240k0) {
            URL url;
            l.e(c23240k0, "requests");
            l.e(c23240k0, "requests");
            Iterator<GraphRequest> it = c23240k0.iterator();
            while (it.hasNext()) {
                GraphRequest next = it.next();
                if (EnumC23246m0.GET == next.f2556i && C1168q0.m41700B(next.f2552e.getString("fields"))) {
                    C1143k0.C1144a c1144a = C1143k0.f3139e;
                    EnumC23248n0 enumC23248n0 = EnumC23248n0.DEVELOPER_ERRORS;
                    StringBuilder m8728C = C22128a.m8728C("GET requests for /");
                    String str = next.f2549b;
                    String str2 = str;
                    if (str == null) {
                        str2 = "";
                    }
                    c1144a.m41730a(enumC23248n0, 5, "Request", C22128a.m8618h(m8728C, str2, " should contain an explicit \"fields\" parameter."));
                }
            }
            try {
                if (c23240k0.size() == 1) {
                    url = new URL(c23240k0.m7334a(0).m42013g());
                } else {
                    C1161o0 c1161o0 = C1161o0.f3173a;
                    url = new URL(C1161o0.m41707b());
                }
                HttpURLConnection httpURLConnection = null;
                HttpURLConnection httpURLConnection2 = null;
                try {
                    HttpURLConnection m42006b = m42006b(url);
                    httpURLConnection2 = m42006b;
                    httpURLConnection = m42006b;
                    m41993o(c23240k0, m42006b);
                    return m42006b;
                } catch (IOException e) {
                    C1168q0.m41672k(httpURLConnection);
                    throw new C23222c0("could not construct request body", e);
                } catch (JSONException e2) {
                    C1168q0.m41672k(httpURLConnection2);
                    throw new C23222c0("could not construct request body", e2);
                }
            } catch (MalformedURLException e3) {
                throw new C23222c0("could not construct URL for request", e3);
            }
        }
    }

    @Metadata(d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\bæ\u0080\u0001\u0018��2\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&¨\u0006\b"}, d2 = {"Lcom/facebook/GraphRequest$GraphJSONObjectCallback;", "", "onCompleted", "", "obj", "Lorg/json/JSONObject;", "response", "Lcom/facebook/GraphResponse;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.GraphRequest$d */
    /* loaded from: classes2-dex2jar.jar:com/facebook/GraphRequest$d.class */
    public interface AbstractC0924d {
        /* renamed from: a */
        void m41991a(JSONObject jSONObject, C23244l0 c23244l0);
    }

    @Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\bâ\u0080\u0001\u0018��2\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&¨\u0006\u0007"}, d2 = {"Lcom/facebook/GraphRequest$KeyValueSerializer;", "", "writeString", "", AnalyticsConstants.KEY, "", "value", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.GraphRequest$e */
    /* loaded from: classes2-dex2jar.jar:com/facebook/GraphRequest$e.class */
    public interface AbstractC0925e {
        /* renamed from: a */
        void mo7336a(String str, String str2);
    }

    @Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&¨\u0006\u0007"}, d2 = {"Lcom/facebook/GraphRequest$OnProgressCallback;", "Lcom/facebook/GraphRequest$Callback;", "onProgress", "", "current", "", "max", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.GraphRequest$f */
    /* loaded from: classes2-dex2jar.jar:com/facebook/GraphRequest$f.class */
    public interface AbstractC0926f extends AbstractC0922b {
        /* renamed from: b */
        void m41990b(long j, long j2);
    }

    @Metadata(d1 = {"��x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001e\n\u0002\b\u0002\b\u0002\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ+\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0016\u0010\u0013\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00150\u0014\"\u0004\u0018\u00010\u0015¢\u0006\u0002\u0010\u0016J\u0016\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aJ\u0016\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001dJ$\u0010\u001e\u001a\u00020\u00102\b\u0010\u001f\u001a\u0004\u0018\u00010\u00122\b\u0010 \u001a\u0004\u0018\u00010\u00122\b\u0010!\u001a\u0004\u0018\u00010\u0012J \u0010\"\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00122\u0006\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0012J \u0010&\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00122\u0006\u0010'\u001a\u00020(2\b\u0010%\u001a\u0004\u0018\u00010\u0012J+\u0010)\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0016\u0010\u0013\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00150\u0014\"\u0004\u0018\u00010\u0015¢\u0006\u0002\u0010\u0016J\"\u0010*\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00122\b\u0010+\u001a\u0004\u0018\u00010\u00152\b\u0010,\u001a\u0004\u0018\u00010-J\u0006\u0010.\u001a\u00020\u0010J$\u0010/\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00122\u0006\u00100\u001a\u0002012\f\u00102\u001a\b\u0012\u0004\u0012\u00020-03J\u0018\u00104\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u0012H\u0016R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0018\u0010\n\u001a\u00060\u000bj\u0002`\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u00065"}, d2 = {"Lcom/facebook/GraphRequest$Serializer;", "Lcom/facebook/GraphRequest$KeyValueSerializer;", "outputStream", "Ljava/io/OutputStream;", "logger", "Lcom/facebook/internal/Logger;", "useUrlEncode", "", "(Ljava/io/OutputStream;Lcom/facebook/internal/Logger;Z)V", "firstWrite", "invalidTypeError", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "getInvalidTypeError", "()Ljava/lang/RuntimeException;", "write", "", "format", "", "args", "", "", "(Ljava/lang/String;[Ljava/lang/Object;)V", "writeBitmap", AnalyticsConstants.KEY, "bitmap", "Landroid/graphics/Bitmap;", "writeBytes", "bytes", "", "writeContentDisposition", AnalyticsConstants.NAME, "filename", "contentType", "writeContentUri", "contentUri", "Landroid/net/Uri;", "mimeType", "writeFile", "descriptor", "Landroid/os/ParcelFileDescriptor;", "writeLine", "writeObject", "value", "request", "Lcom/facebook/GraphRequest;", "writeRecordBoundary", "writeRequestsAsJson", "requestJsonArray", "Lorg/json/JSONArray;", "requests", "", "writeString", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.GraphRequest$g */
    /* loaded from: classes2-dex2jar.jar:com/facebook/GraphRequest$g.class */
    public static final class C0927g implements AbstractC0925e {

        /* renamed from: a */
        public final OutputStream f2562a;

        /* renamed from: b */
        public final C1143k0 f2563b;

        /* renamed from: c */
        public boolean f2564c = true;

        /* renamed from: d */
        public final boolean f2565d;

        public C0927g(OutputStream outputStream, C1143k0 c1143k0, boolean z) {
            l.e(outputStream, "outputStream");
            this.f2562a = outputStream;
            this.f2563b = c1143k0;
            this.f2565d = z;
        }

        @Override // com.facebook.GraphRequest.AbstractC0925e
        /* renamed from: a */
        public void mo7336a(String str, String str2) {
            l.e(str, AnalyticsConstants.KEY);
            l.e(str2, "value");
            m41988c(str, null, null);
            m41985f("%s", str2);
            m41983h();
            C1143k0 c1143k0 = this.f2563b;
            if (c1143k0 == null) {
                return;
            }
            c1143k0.m41732b(l.j("    ", str), str2);
        }

        /* renamed from: b */
        public final void m41989b(String str, Object... objArr) {
            l.e(str, "format");
            l.e(objArr, "args");
            if (this.f2565d) {
                OutputStream outputStream = this.f2562a;
                Locale locale = Locale.US;
                Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
                String format = String.format(locale, str, Arrays.copyOf(copyOf, copyOf.length));
                l.d(format, "java.lang.String.format(locale, format, *args)");
                String encode = URLEncoder.encode(format, StringConstant.UTF8);
                l.d(encode, "encode(String.format(Locale.US, format, *args), \"UTF-8\")");
                byte[] bytes = encode.getBytes(b.a);
                l.d(bytes, "(this as java.lang.String).getBytes(charset)");
                outputStream.write(bytes);
                return;
            }
            if (this.f2564c) {
                OutputStream outputStream2 = this.f2562a;
                Charset charset = b.a;
                byte[] bytes2 = "--".getBytes(charset);
                l.d(bytes2, "(this as java.lang.String).getBytes(charset)");
                outputStream2.write(bytes2);
                OutputStream outputStream3 = this.f2562a;
                String str2 = GraphRequest.f2545m;
                Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
                byte[] bytes3 = str2.getBytes(charset);
                l.d(bytes3, "(this as java.lang.String).getBytes(charset)");
                outputStream3.write(bytes3);
                OutputStream outputStream4 = this.f2562a;
                byte[] bytes4 = "\r\n".getBytes(charset);
                l.d(bytes4, "(this as java.lang.String).getBytes(charset)");
                outputStream4.write(bytes4);
                this.f2564c = false;
            }
            OutputStream outputStream5 = this.f2562a;
            Object[] copyOf2 = Arrays.copyOf(objArr, objArr.length);
            byte[] bytes5 = C22128a.m8562v(copyOf2, copyOf2.length, str, "java.lang.String.format(format, *args)").getBytes(b.a);
            l.d(bytes5, "(this as java.lang.String).getBytes(charset)");
            outputStream5.write(bytes5);
        }

        /* renamed from: c */
        public final void m41988c(String str, String str2, String str3) {
            if (this.f2565d) {
                OutputStream outputStream = this.f2562a;
                byte[] bytes = C22128a.m8562v(new Object[]{str}, 1, "%s=", "java.lang.String.format(format, *args)").getBytes(b.a);
                l.d(bytes, "(this as java.lang.String).getBytes(charset)");
                outputStream.write(bytes);
                return;
            }
            m41989b("Content-Disposition: form-data; name=\"%s\"", str);
            if (str2 != null) {
                m41989b("; filename=\"%s\"", str2);
            }
            m41985f("", new Object[0]);
            if (str3 != null) {
                m41985f("%s: %s", "Content-Type", str3);
            }
            m41985f("", new Object[0]);
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Type inference failed for: r0v49, types: [long] */
        /* renamed from: d */
        public final void m41987d(String str, Uri uri, String str2) {
            int i;
            char c;
            l.e(str, AnalyticsConstants.KEY);
            l.e(uri, "contentUri");
            String str3 = str2;
            if (str2 == null) {
                str3 = "content/unknown";
            }
            m41988c(str, str, str3);
            if (this.f2562a instanceof C23257r0) {
                l.e(uri, "contentUri");
                Cursor cursor = null;
                try {
                    C23228f0 c23228f0 = C23228f0.f64291a;
                    Cursor query = C23228f0.m7354a().getContentResolver().query(uri, null, null, null, null);
                    if (query == null) {
                        c = 0;
                    } else {
                        int columnIndex = query.getColumnIndex("_size");
                        query.moveToFirst();
                        cursor = query;
                        c = query.getLong(columnIndex);
                        query.close();
                    }
                    ((C23257r0) this.f2562a).m7322d(c);
                    i = 0;
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } else {
                C23228f0 c23228f02 = C23228f0.f64291a;
                i = C1168q0.m41673j(C23228f0.m7354a().getContentResolver().openInputStream(uri), this.f2562a) + 0;
            }
            m41985f("", new Object[0]);
            m41983h();
            C1143k0 c1143k0 = this.f2563b;
            if (c1143k0 == null) {
                return;
            }
            String j = l.j("    ", str);
            String format = String.format(Locale.ROOT, "<Data: %d>", Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1));
            l.d(format, "java.lang.String.format(locale, format, *args)");
            c1143k0.m41732b(j, format);
        }

        /* renamed from: e */
        public final void m41986e(String str, ParcelFileDescriptor parcelFileDescriptor, String str2) {
            int i;
            l.e(str, AnalyticsConstants.KEY);
            l.e(parcelFileDescriptor, "descriptor");
            String str3 = str2;
            if (str2 == null) {
                str3 = "content/unknown";
            }
            m41988c(str, str, str3);
            OutputStream outputStream = this.f2562a;
            if (outputStream instanceof C23257r0) {
                ((C23257r0) outputStream).m7322d(parcelFileDescriptor.getStatSize());
                i = 0;
            } else {
                i = C1168q0.m41673j(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), this.f2562a) + 0;
            }
            m41985f("", new Object[0]);
            m41983h();
            C1143k0 c1143k0 = this.f2563b;
            if (c1143k0 == null) {
                return;
            }
            String j = l.j("    ", str);
            String format = String.format(Locale.ROOT, "<Data: %d>", Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1));
            l.d(format, "java.lang.String.format(locale, format, *args)");
            c1143k0.m41732b(j, format);
        }

        /* renamed from: f */
        public final void m41985f(String str, Object... objArr) {
            l.e(str, "format");
            l.e(objArr, "args");
            m41989b(str, Arrays.copyOf(objArr, objArr.length));
            if (!this.f2565d) {
                m41989b("\r\n", new Object[0]);
            }
        }

        /* renamed from: g */
        public final void m41984g(String str, Object obj, GraphRequest graphRequest) {
            l.e(str, AnalyticsConstants.KEY);
            OutputStream outputStream = this.f2562a;
            if (outputStream instanceof AbstractC23261t0) {
                ((AbstractC23261t0) outputStream).mo7319b(graphRequest);
            }
            C0923c c0923c = GraphRequest.f2543k;
            if (c0923c.m42001g(obj)) {
                mo7336a(str, C0923c.m42007a(c0923c, obj));
            } else if (obj instanceof Bitmap) {
                Bitmap bitmap = (Bitmap) obj;
                l.e(str, AnalyticsConstants.KEY);
                l.e(bitmap, "bitmap");
                m41988c(str, str, ContentFormat.IMAGE_PNG);
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, this.f2562a);
                m41985f("", new Object[0]);
                m41983h();
                C1143k0 c1143k0 = this.f2563b;
                if (c1143k0 == null) {
                    return;
                }
                c1143k0.m41732b(l.j("    ", str), "<Image>");
            } else if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                l.e(str, AnalyticsConstants.KEY);
                l.e(bArr, "bytes");
                m41988c(str, str, "content/unknown");
                this.f2562a.write(bArr);
                m41985f("", new Object[0]);
                m41983h();
                C1143k0 c1143k02 = this.f2563b;
                if (c1143k02 == null) {
                    return;
                }
                String j = l.j("    ", str);
                String format = String.format(Locale.ROOT, "<Data: %d>", Arrays.copyOf(new Object[]{Integer.valueOf(bArr.length)}, 1));
                l.d(format, "java.lang.String.format(locale, format, *args)");
                c1143k02.m41732b(j, format);
            } else if (obj instanceof Uri) {
                m41987d(str, (Uri) obj, null);
            } else if (obj instanceof ParcelFileDescriptor) {
                m41986e(str, (ParcelFileDescriptor) obj, null);
            } else if (!(obj instanceof ParcelableResourceWithMimeType)) {
                throw new IllegalArgumentException("value is not a supported type.");
            } else {
                ParcelableResourceWithMimeType parcelableResourceWithMimeType = (ParcelableResourceWithMimeType) obj;
                RESOURCE resource = parcelableResourceWithMimeType.f2559b;
                String str2 = parcelableResourceWithMimeType.f2558a;
                if (resource instanceof ParcelFileDescriptor) {
                    m41986e(str, (ParcelFileDescriptor) resource, str2);
                } else if (!(resource instanceof Uri)) {
                    throw new IllegalArgumentException("value is not a supported type.");
                } else {
                    m41987d(str, (Uri) resource, str2);
                }
            }
        }

        /* renamed from: h */
        public final void m41983h() {
            if (!this.f2565d) {
                m41985f("--%s", GraphRequest.f2545m);
                return;
            }
            OutputStream outputStream = this.f2562a;
            byte[] bytes = ContainerUtils.FIELD_DELIMITER.getBytes(b.a);
            l.d(bytes, "(this as java.lang.String).getBytes(charset)");
            outputStream.write(bytes);
        }
    }

    static {
        int i;
        String simpleName = GraphRequest.class.getSimpleName();
        l.d(simpleName, "GraphRequest::class.java.simpleName");
        f2544l = simpleName;
        char[] charArray = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        l.d(charArray, "(this as java.lang.String).toCharArray()");
        StringBuilder sb = new StringBuilder();
        SecureRandom secureRandom = new SecureRandom();
        int nextInt = secureRandom.nextInt(11) + 30;
        if (nextInt <= 0) {
            String sb2 = sb.toString();
            l.d(sb2, "buffer.toString()");
            f2545m = sb2;
            f2546n = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");
        }
        int i2 = 0;
        do {
            i = i2 + 1;
            sb.append(charArray[secureRandom.nextInt(charArray.length)]);
            i2 = i;
        } while (i < nextInt);
        String sb22 = sb.toString();
        l.d(sb22, "buffer.toString()");
        f2545m = sb22;
        f2546n = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");
    }

    public GraphRequest() {
        this(null, null, null, null, null, null, 63);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, EnumC23246m0 enumC23246m0, AbstractC0922b abstractC0922b) {
        this(accessToken, str, bundle, enumC23246m0, abstractC0922b, null, 32);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, EnumC23246m0 enumC23246m0, AbstractC0922b abstractC0922b, String str2, int i) {
        accessToken = (i & 1) != 0 ? null : accessToken;
        str = (i & 2) != 0 ? null : str;
        bundle = (i & 4) != 0 ? null : bundle;
        enumC23246m0 = (i & 8) != 0 ? null : enumC23246m0;
        abstractC0922b = (i & 16) != 0 ? null : abstractC0922b;
        this.f2551d = true;
        this.f2548a = accessToken;
        this.f2549b = str;
        this.f2554g = null;
        m42009k(abstractC0922b);
        this.f2556i = enumC23246m0 == null ? EnumC23246m0.GET : enumC23246m0;
        if (bundle != null) {
            this.f2552e = new Bundle(bundle);
        } else {
            this.f2552e = new Bundle();
        }
        if (this.f2554g == null) {
            C23228f0 c23228f0 = C23228f0.f64291a;
            this.f2554g = C23228f0.m7349f();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0060, code lost:
        if (r9 == false) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00cd  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m42019a() {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.m42019a():void");
    }

    /* renamed from: b */
    public final String m42018b(String str, boolean z) {
        String str2;
        if (z || this.f2556i != EnumC23246m0.POST) {
            Uri.Builder buildUpon = Uri.parse(str).buildUpon();
            for (String str3 : this.f2552e.keySet()) {
                Object obj = this.f2552e.get(str3);
                Object obj2 = obj;
                if (obj == null) {
                    obj2 = "";
                }
                boolean z2 = obj2 instanceof String;
                if (z2 || (obj2 instanceof Boolean) || (obj2 instanceof Number) || (obj2 instanceof Date)) {
                    if (z2) {
                        str2 = (String) obj2;
                    } else if ((obj2 instanceof Boolean) || (obj2 instanceof Number)) {
                        str2 = obj2.toString();
                    } else if (!(obj2 instanceof Date)) {
                        throw new IllegalArgumentException("Unsupported parameter type.");
                    } else {
                        str2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj2);
                        l.d(str2, "iso8601DateFormat.format(value)");
                    }
                    buildUpon.appendQueryParameter(str3, str2.toString());
                } else if (this.f2556i != EnumC23246m0.GET) {
                    String format = String.format(Locale.US, "Unsupported parameter type for GET request: %s", Arrays.copyOf(new Object[]{obj2.getClass().getSimpleName()}, 1));
                    l.d(format, "java.lang.String.format(locale, format, *args)");
                    throw new IllegalArgumentException(format);
                }
            }
            String builder = buildUpon.toString();
            l.d(builder, "uriBuilder.toString()");
            return builder;
        }
        return str;
    }

    /* renamed from: c */
    public final C23244l0 m42017c() {
        C0923c c0923c = f2543k;
        l.e(this, "request");
        GraphRequest[] graphRequestArr = {this};
        l.e(graphRequestArr, "requests");
        List m3897h3 = C25225a.m3897h3(graphRequestArr);
        l.e(m3897h3, "requests");
        List<C23244l0> m42005c = c0923c.m42005c(new C23240k0(m3897h3));
        if (m42005c.size() == 1) {
            return m42005c.get(0);
        }
        throw new C23222c0("invalid state: expected a single response");
    }

    /* renamed from: d */
    public final AsyncTaskC23238j0 m42016d() {
        GraphRequest[] graphRequestArr = {this};
        l.e(graphRequestArr, "requests");
        List m3897h3 = C25225a.m3897h3(graphRequestArr);
        l.e(m3897h3, "requests");
        C23240k0 c23240k0 = new C23240k0(m3897h3);
        l.e(c23240k0, "requests");
        C1172r0 c1172r0 = C1172r0.f3203a;
        C1172r0.m41652c(c23240k0, "requests");
        AsyncTaskC23238j0 asyncTaskC23238j0 = new AsyncTaskC23238j0(c23240k0);
        C23228f0 c23228f0 = C23228f0.f64291a;
        asyncTaskC23238j0.executeOnExecutor(C23228f0.m7350e(), new Void[0]);
        return asyncTaskC23238j0;
    }

    /* renamed from: e */
    public final String m42015e() {
        AccessToken accessToken = this.f2548a;
        if (accessToken != null) {
            if (!this.f2552e.containsKey("access_token")) {
                String str = accessToken.f2469e;
                C1143k0.f3139e.m41727d(str);
                return str;
            }
        } else if (!this.f2552e.containsKey("access_token")) {
            return m42014f();
        }
        return this.f2552e.getString("access_token");
    }

    /* renamed from: f */
    public final String m42014f() {
        String str;
        C23228f0 c23228f0 = C23228f0.f64291a;
        String m7353b = C23228f0.m7353b();
        String m7351d = C23228f0.m7351d();
        if (m7353b.length() > 0) {
            if (m7351d.length() > 0) {
                str = C22128a.m8615h2(m7353b, '|', m7351d);
                return str;
            }
        }
        boolean z = C23228f0.f64299i;
        str = null;
        return str;
    }

    /* renamed from: g */
    public final String m42013g() {
        String str;
        String str2 = this.f2549b;
        if (this.f2556i != EnumC23246m0.POST || str2 == null || !r.m(str2, "/videos", false, 2)) {
            C1161o0 c1161o0 = C1161o0.f3173a;
            C23228f0 c23228f0 = C23228f0.f64291a;
            String m7348g = C23228f0.m7348g();
            l.e(m7348g, "subdomain");
            str = C22128a.m8562v(new Object[]{m7348g}, 1, "https://graph.%s", "java.lang.String.format(format, *args)");
        } else {
            C1161o0 c1161o02 = C1161o0.f3173a;
            C23228f0 c23228f02 = C23228f0.f64291a;
            str = C22128a.m8562v(new Object[]{C23228f0.m7348g()}, 1, "https://graph-video.%s", "java.lang.String.format(format, *args)");
        }
        String m42012h = m42012h(str);
        m42019a();
        return m42018b(m42012h, false);
    }

    /* renamed from: h */
    public final String m42012h(String str) {
        if (!m42010j()) {
            C1161o0 c1161o0 = C1161o0.f3173a;
            C23228f0 c23228f0 = C23228f0.f64291a;
            str = C22128a.m8562v(new Object[]{C23228f0.f64309s}, 1, "https://graph.%s", "java.lang.String.format(format, *args)");
        }
        return C22128a.m8562v(new Object[]{str, f2546n.matcher(this.f2549b).matches() ? this.f2549b : C22128a.m8562v(new Object[]{this.f2554g, this.f2549b}, 2, "%s/%s", "java.lang.String.format(format, *args)")}, 2, "%s/%s", "java.lang.String.format(format, *args)");
    }

    /* renamed from: i */
    public final boolean m42011i() {
        boolean z = false;
        if (this.f2549b == null) {
            return false;
        }
        StringBuilder m8728C = C22128a.m8728C("^/?");
        C23228f0 c23228f0 = C23228f0.f64291a;
        m8728C.append(C23228f0.m7353b());
        m8728C.append("/?.*");
        String sb = m8728C.toString();
        if (this.f2557j || Pattern.matches(sb, this.f2549b) || Pattern.matches("^/?app/?.*", this.f2549b)) {
            z = true;
        }
        return z;
    }

    /* renamed from: j */
    public final boolean m42010j() {
        C23228f0 c23228f0 = C23228f0.f64291a;
        if (!l.a(C23228f0.m7348g(), "instagram.com")) {
            return true;
        }
        return !m42011i();
    }

    /* renamed from: k */
    public final void m42009k(final AbstractC0922b abstractC0922b) {
        C23228f0 c23228f0 = C23228f0.f64291a;
        if (C23228f0.m7344k(EnumC23248n0.GRAPH_API_DEBUG_INFO) || C23228f0.m7344k(EnumC23248n0.GRAPH_API_DEBUG_WARNING)) {
            this.f2555h = new AbstractC0922b() { // from class: e.j.q
                @Override // com.facebook.GraphRequest.AbstractC0922b
                /* renamed from: a */
                public final void mo7325a(C23244l0 c23244l0) {
                    GraphRequest.AbstractC0922b abstractC0922b2 = GraphRequest.AbstractC0922b.this;
                    l.e(c23244l0, "response");
                    JSONObject jSONObject = c23244l0.f64333c;
                    JSONObject optJSONObject = jSONObject == null ? null : jSONObject.optJSONObject("__debug__");
                    JSONArray optJSONArray = optJSONObject == null ? null : optJSONObject.optJSONArray("messages");
                    if (optJSONArray != null) {
                        int i = 0;
                        int length = optJSONArray.length();
                        if (length > 0) {
                            while (true) {
                                int i2 = i + 1;
                                JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                                String optString = optJSONObject2 == null ? null : optJSONObject2.optString("message");
                                String optString2 = optJSONObject2 == null ? null : optJSONObject2.optString("type");
                                String optString3 = optJSONObject2 == null ? null : optJSONObject2.optString("link");
                                if (optString != null && optString2 != null) {
                                    EnumC23248n0 enumC23248n0 = EnumC23248n0.GRAPH_API_DEBUG_INFO;
                                    if (l.a(optString2, AnalyticsConstants.WARNING)) {
                                        enumC23248n0 = EnumC23248n0.GRAPH_API_DEBUG_WARNING;
                                    }
                                    String str = optString;
                                    if (!C1168q0.m41700B(optString3)) {
                                        str = ((Object) optString) + " Link: " + ((Object) optString3);
                                    }
                                    C1143k0.f3139e.m41729b(enumC23248n0, GraphRequest.f2544l, str);
                                }
                                if (i2 >= length) {
                                    break;
                                }
                                i = i2;
                            }
                        }
                    }
                    if (abstractC0922b2 == null) {
                        return;
                    }
                    abstractC0922b2.mo7325a(c23244l0);
                }
            };
        } else {
            this.f2555h = abstractC0922b;
        }
    }

    /* renamed from: l */
    public final void m42008l(Bundle bundle) {
        l.e(bundle, "<set-?>");
        this.f2552e = bundle;
    }

    public String toString() {
        StringBuilder m8696K = C22128a.m8696K("{Request: ", " accessToken: ");
        AccessToken accessToken = this.f2548a;
        AccessToken accessToken2 = accessToken;
        if (accessToken == null) {
            accessToken2 = AnalyticsConstants.NULL;
        }
        m8696K.append(accessToken2);
        m8696K.append(", graphPath: ");
        m8696K.append(this.f2549b);
        m8696K.append(", graphObject: ");
        m8696K.append(this.f2550c);
        m8696K.append(", httpMethod: ");
        m8696K.append(this.f2556i);
        m8696K.append(", parameters: ");
        m8696K.append(this.f2552e);
        m8696K.append("}");
        String sb = m8696K.toString();
        l.d(sb, "StringBuilder()\n        .append(\"{Request: \")\n        .append(\" accessToken: \")\n        .append(if (accessToken == null) \"null\" else accessToken)\n        .append(\", graphPath: \")\n        .append(graphPath)\n        .append(\", graphObject: \")\n        .append(graphObject)\n        .append(\", httpMethod: \")\n        .append(httpMethod)\n        .append(\", parameters: \")\n        .append(parameters)\n        .append(\"}\")\n        .toString()");
        return sb;
    }
}
