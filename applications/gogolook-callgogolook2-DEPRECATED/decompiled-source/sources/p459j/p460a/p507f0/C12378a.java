package p459j.p460a.p507f0;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.room.RoomDatabase;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
import gogolook.callgogolook2.InexistentAccountActivity;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.phone.call.dialog.CallDialogService;
import java.io.EOFException;
import java.io.UnsupportedEncodingException;
import java.net.ConnectException;
import java.net.SocketTimeoutException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.Call;
import okhttp3.CertificatePinner;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.p184j.C6364a;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p587d5.C13975b;
import p459j.p460a.p582w0.p590x4.C14300r;
/* renamed from: j.a.f0.a */
/* loaded from: classes3-dex2jar.jar:j/a/f0/a.class */
public class C12378a {

    /* renamed from: h */
    public static String f27903h;

    /* renamed from: i */
    public static String f27904i;

    /* renamed from: j */
    public static String f27905j;

    /* renamed from: k */
    public static String f27906k;

    /* renamed from: l */
    public static String f27907l;

    /* renamed from: m */
    public static String f27908m;

    /* renamed from: n */
    public static String f27909n;

    /* renamed from: p */
    public static String f27911p;

    /* renamed from: q */
    public static OkHttpClient f27912q;

    /* renamed from: a */
    public EnumC12382d f27913a;

    /* renamed from: b */
    public String f27914b;

    /* renamed from: c */
    public EnumC12381c f27915c;

    /* renamed from: d */
    public Call f27916d;

    /* renamed from: e */
    public Headers f27917e;

    /* renamed from: f */
    public JSONObject f27918f;

    /* renamed from: g */
    public static final MediaType f27902g = MediaType.parse("application/json; charset=utf-8");

    /* renamed from: o */
    public static int f27910o = 0;

    /* renamed from: j.a.f0.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/f0/a$a.class */
    public static /* synthetic */ class C12379a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f27919a = new int[EnumC12382d.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0119 -> B:98:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x011d -> B:116:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0121 -> B:110:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0125 -> B:82:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0129 -> B:76:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x012d -> B:92:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0131 -> B:86:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0135 -> B:102:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0139 -> B:96:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x013d -> B:114:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0141 -> B:108:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x0145 -> B:80:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x0149 -> B:74:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x014d -> B:90:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x0151 -> B:84:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x0155 -> B:100:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x0159 -> B:94:0x00d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x015d -> B:112:0x00dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x0161 -> B:106:0x00e8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x0165 -> B:78:0x00f4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x0169 -> B:72:0x0100). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x016d -> B:88:0x010c). Please submit an issue!!! */
        static {
            try {
                f27919a[EnumC12382d.POST_SYNC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f27919a[EnumC12382d.DELETE_ACCOUNT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f27919a[EnumC12382d.DELETE_CLAIM_CANCEL_CALL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f27919a[EnumC12382d.GET_CLAIM_SMS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f27919a[EnumC12382d.POST_CLAIM_SMS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f27919a[EnumC12382d.GET_CLAIM_STATUS.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f27919a[EnumC12382d.PUT_UPLOAD_CONTACT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f27919a[EnumC12382d.POST_REPORT_TELECOM.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f27919a[EnumC12382d.GET_SETTINGS.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f27919a[EnumC12382d.GET_VAS_SETTINGS.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f27919a[EnumC12382d.GET_URL_SCAN.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f27919a[EnumC12382d.POST_REPORT_CARD.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f27919a[EnumC12382d.GET_SHOWCARD_IMAGE_TOKEN.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f27919a[EnumC12382d.GET_TEXT_SEARCH_V2.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f27919a[EnumC12382d.POST_TEXT_SEARCH_USER_EVENT.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f27919a[EnumC12382d.GET_AUTO_COMPLETE_V3.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f27919a[EnumC12382d.GET_TRENDING.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f27919a[EnumC12382d.POST_DEBUG_NUMBER_VERIFY.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            try {
                f27919a[EnumC12382d.POST_PURCHASES_PRODUCTS.ordinal()] = 19;
            } catch (NoSuchFieldError e19) {
            }
            try {
                f27919a[EnumC12382d.POST_PURCHASE_SUBSCRIPTIONS.ordinal()] = 20;
            } catch (NoSuchFieldError e20) {
            }
            try {
                f27919a[EnumC12382d.POST_GEN_REFERRAL_CODE.ordinal()] = 21;
            } catch (NoSuchFieldError e21) {
            }
            try {
                f27919a[EnumC12382d.POST_REDEEM_CODE.ordinal()] = 22;
            } catch (NoSuchFieldError e22) {
            }
            try {
                f27919a[EnumC12382d.POST_ANALYTICS_SMS_CONTENT.ordinal()] = 23;
            } catch (NoSuchFieldError e23) {
            }
        }
    }

    /* renamed from: j.a.f0.a$b */
    /* loaded from: classes3-dex2jar.jar:j/a/f0/a$b.class */
    public static class C12380b {

        /* renamed from: a */
        public Headers f27920a;

        /* renamed from: b */
        public int f27921b;

        /* renamed from: c */
        public String f27922c;
    }

    /* renamed from: j.a.f0.a$c */
    /* loaded from: classes3-dex2jar.jar:j/a/f0/a$c.class */
    public enum EnumC12381c {
        GET,
        POST,
        PUT,
        DELETE
    }

    /* renamed from: j.a.f0.a$d */
    /* loaded from: classes3-dex2jar.jar:j/a/f0/a$d.class */
    public enum EnumC12382d {
        POST_SYNC,
        DELETE_ACCOUNT,
        DELETE_CLAIM_CANCEL_CALL,
        GET_CLAIM_SMS,
        POST_CLAIM_SMS,
        GET_CLAIM_STATUS,
        PUT_UPLOAD_CONTACT,
        POST_REPORT_TELECOM,
        GET_SETTINGS,
        GET_VAS_SETTINGS,
        GET_URL_SCAN,
        POST_REPORT_CARD,
        GET_SHOWCARD_IMAGE_TOKEN,
        POST_USER_REPORT,
        GET_TEXT_SEARCH_V2,
        POST_TEXT_SEARCH_USER_EVENT,
        GET_AUTO_COMPLETE_V3,
        GET_TRENDING,
        POST_DEBUG_NUMBER_VERIFY,
        POST_PURCHASES_PRODUCTS,
        POST_PURCHASE_SUBSCRIPTIONS,
        POST_GEN_REFERRAL_CODE,
        POST_REDEEM_CODE,
        POST_ANALYTICS_SMS_CONTENT,
        GET_PERSONAL_OFFLINE_DB
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Deprecated
    /* renamed from: a */
    public static C12378a m6278a(@NonNull EnumC12382d dVar, @Nullable JSONObject jSONObject, @Nullable Map<String, String> map, @Nullable List<Object> list, String... strArr) {
        C12378a aVar;
        Headers.Builder builder = new Headers.Builder();
        if (map != null && map.size() > 0) {
            for (String str : map.keySet()) {
                builder.add(str, map.get(str));
            }
        }
        for (int i = 0; i < strArr.length; i++) {
            try {
                strArr[i] = URLEncoder.encode(strArr[i], "UTF-8");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        switch (C12379a.f27919a[dVar.ordinal()]) {
            case 1:
                m6268a(builder);
                aVar = m6272a(f27903h + "/sync", EnumC12381c.POST, builder.build(), jSONObject, new String[0]);
                break;
            case 2:
                m6268a(builder);
                aVar = m6272a(f27903h + "/user", EnumC12381c.DELETE, builder.build(), jSONObject, new String[0]);
                break;
            case 3:
                m6268a(builder);
                aVar = m6272a(f27903h + "/claim/cancel_call/%s/%s", EnumC12381c.DELETE, builder.build(), jSONObject, strArr);
                break;
            case 4:
                m6268a(builder);
                aVar = m6272a(f27903h + "/claim/v3/sms/%s/%s?is_new_user=%s&old_number=%s", EnumC12381c.GET, builder.build(), jSONObject, strArr);
                break;
            case 5:
                m6268a(builder);
                aVar = m6272a(f27903h + "/claim/v4/sms/%s/%s?is_new_user=%s&old_number=%s&is_owner=%s&card_api_version=3", EnumC12381c.POST, builder.build(), jSONObject, strArr);
                break;
            case 6:
                m6268a(builder);
                aVar = m6272a(f27903h + "/claim/%s/%s/status", EnumC12381c.GET, builder.build(), jSONObject, strArr);
                break;
            case 7:
                m6268a(builder);
                aVar = m6272a(f27904i + "/whitepage/contact?version=3", EnumC12381c.PUT, builder.build(), jSONObject, new String[0]);
                break;
            case 8:
                m6268a(builder);
                aVar = m6272a(f27903h + "/report/telecom", EnumC12381c.POST, builder.build(), jSONObject, new String[0]);
                break;
            case 9:
                m6268a(builder);
                if (strArr.length <= 2 || TextUtils.isEmpty(strArr[2])) {
                    aVar = m6272a(f27908m + "/settings/v3/%s/%s", EnumC12381c.GET, builder.build(), jSONObject, strArr);
                    break;
                } else {
                    try {
                        strArr[2] = URLDecoder.decode(strArr[2], "UTF-8");
                        aVar = m6272a(f27908m + "/settings/v3/%s/%s?%s", EnumC12381c.GET, builder.build(), jSONObject, strArr);
                        break;
                    } catch (UnsupportedEncodingException e2) {
                        C14080m2.m2612a((Throwable) e2);
                        aVar = m6272a(f27908m + "/settings/v3/%s/%s", EnumC12381c.GET, builder.build(), jSONObject, strArr[0], strArr[1]);
                        break;
                    }
                }
            case 10:
                m6268a(builder);
                aVar = m6272a(f27908m + "/settings/vas", EnumC12381c.GET, builder.build(), jSONObject, new String[0]);
                break;
            case 11:
                m6268a(builder);
                aVar = m6272a(f27903h + "/services/url_scan?url=%s&region=%s", EnumC12381c.GET, builder.build(), jSONObject, strArr);
                break;
            case 12:
                m6268a(builder);
                aVar = m6272a(f27903h + "/whoscallcard/v2/report/%s/%s", EnumC12381c.POST, builder.build(), jSONObject, strArr);
                break;
            case 13:
                m6268a(builder);
                aVar = m6272a(f27903h + "/whoscallcard/v2/images/token", EnumC12381c.GET, builder.build(), jSONObject, new String[0]);
                break;
            case 14:
                m6268a(builder);
                builder.add("Date", C14217x3.m2174a(new Date(System.currentTimeMillis()), TimeZone.getTimeZone("GMT")));
                if (C13565v.m3921g().m23335b()) {
                    builder.add("App-Debug-Mode", String.valueOf(1));
                }
                if (strArr.length <= 9 || C14217x3.m2160b(strArr[9])) {
                    if (strArr.length <= 8 || C14217x3.m2160b(strArr[8])) {
                        if (strArr.length > 7 && !C14217x3.m2160b(strArr[7])) {
                            aVar = m6272a(f27907l + "/textsearch/v2/%s/%s?from=%s&size=%s&matched_labels=%s&session_id=%s&duplicate=%s&no_of_query=%s", EnumC12381c.GET, builder.build(), jSONObject, strArr);
                            break;
                        }
                        aVar = null;
                        break;
                    } else {
                        aVar = m6272a(f27907l + "/textsearch/v2/%s/%s?location=%s,%s&radius=%s&matched_labels=%s&session_id=%s&duplicate=%s&no_of_query=%s", EnumC12381c.GET, builder.build(), jSONObject, strArr);
                        break;
                    }
                } else {
                    aVar = m6272a(f27907l + "/textsearch/v2/%s/%s?from=%s&size=%s&location=%s,%s&matched_labels=%s&session_id=%s&duplicate=%s&no_of_query=%s", EnumC12381c.GET, builder.build(), jSONObject, strArr);
                    break;
                }
                break;
            case 15:
                m6268a(builder);
                builder.add("Date", C14217x3.m2174a(new Date(System.currentTimeMillis()), TimeZone.getTimeZone("GMT")));
                aVar = m6272a(f27907l + "/textsearch/user_event/v1/%s", EnumC12381c.POST, builder.build(), jSONObject, strArr);
                break;
            case 16:
                m6268a(builder);
                aVar = m6272a(f27907l + "/autocomplete/v3/%s?text=%s", EnumC12381c.GET, builder.build(), jSONObject, strArr);
                break;
            case 17:
                m6268a(builder);
                aVar = m6272a(f27907l + "/trending/v1/%s", EnumC12381c.GET, builder.build(), jSONObject, strArr);
                break;
            case 18:
                m6268a(builder);
                aVar = m6272a(f27903h + "/claim/backdoor/%s/%s", EnumC12381c.POST, builder.build(), new JSONObject(), strArr);
                break;
            case 19:
                m6268a(builder);
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("device_id", C14017g4.m2820d());
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                aVar = m6272a(f27903h + "/purchases/v1/products/%s", EnumC12381c.POST, builder.build(), jSONObject2, strArr);
                break;
            case 20:
                m6268a(builder);
                aVar = m6272a(f27903h + "/purchases/v1/subscriptions", EnumC12381c.POST, builder.build(), jSONObject, new String[0]);
                break;
            case 21:
                m6268a(builder);
                aVar = m6272a(f27903h + "/code/generate", EnumC12381c.POST, builder.build(), jSONObject, strArr);
                break;
            case 22:
                m6268a(builder);
                aVar = m6272a(f27903h + "/code/redeem", EnumC12381c.POST, builder.build(), jSONObject, strArr);
                break;
            case 23:
                builder.add("User-Agent", m6259e());
                builder.add("x-api-key", C14217x3.m2143f(MyApplication.m29013o()));
                aVar = m6272a(f27909n, EnumC12381c.POST, builder.build(), jSONObject, new String[0]);
                break;
            default:
                aVar = null;
                break;
        }
        if (aVar != null) {
            aVar.f27913a = dVar;
        }
        return aVar;
    }

    @Deprecated
    /* renamed from: a */
    public static C12378a m6277a(@NonNull EnumC12382d dVar, @Nullable JSONObject jSONObject, @Nullable Map<String, String> map, String... strArr) {
        return m6278a(dVar, jSONObject, map, (List<Object>) null, strArr);
    }

    /* renamed from: a */
    public static C12378a m6276a(EnumC12382d dVar, JSONObject jSONObject, String... strArr) {
        return m6278a(dVar, jSONObject, (Map<String, String>) null, (List<Object>) null, strArr);
    }

    @Deprecated
    /* renamed from: a */
    public static C12378a m6275a(@NonNull EnumC12382d dVar, String... strArr) {
        return m6278a(dVar, (JSONObject) null, (Map<String, String>) null, (List<Object>) null, strArr);
    }

    /* renamed from: a */
    public static C12378a m6272a(String str, EnumC12381c cVar, Headers headers, JSONObject jSONObject, String... strArr) {
        if (f27912q == null) {
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            builder.connectTimeout(60L, TimeUnit.SECONDS);
            builder.readTimeout(60L, TimeUnit.SECONDS);
            builder.writeTimeout(60L, TimeUnit.SECONDS);
            CertificatePinner.Builder builder2 = new CertificatePinner.Builder();
            builder2.add("*.whoscall.com", "sha256/tVhGjgsR/hsZTXDUa1xTTMvhmloBxzvJJIOK3KpozHk=");
            builder2.add("*.whoscall.com", "sha256/8Rw90Ej3Ttt8RRkrg+WYDS9n7IS03bk5bjP/UXPtaY8=");
            builder2.add("*.whoscall.com", "sha256/Ko8tivDrEjiY90yGasP6ZpBU4jwXvHqVvQI0GS3GNdA=");
            builder.certificatePinner(builder2.build());
            f27912q = builder.build();
        }
        C12378a aVar = new C12378a();
        aVar.f27914b = String.format(str, strArr);
        aVar.f27915c = cVar;
        aVar.f27917e = headers;
        aVar.f27918f = jSONObject;
        aVar.f27916d = f27912q.newCall(aVar.m6263b());
        return aVar;
    }

    /* renamed from: a */
    public static String m6279a(int i) {
        return i == 503 ? C14206w4.m2225a((int) R$string.error_code_server_fail) : i == 429 ? C14206w4.m2225a((int) R$string.error_code_request_limit) : i == 601 ? C14206w4.m2225a((int) R$string.errorcode_forbidden) : i == 426 ? C14206w4.m2225a((int) R$string.errorcode_update_app) : String.format(C14206w4.m2225a((int) R$string.error_code_server), String.valueOf(i));
    }

    /* renamed from: a */
    public static String m6274a(String str) {
        String c = C13915b3.m3054c();
        return C14217x3.m2160b(c) ? str : str.replace(c, "{cdn_token}");
    }

    /* renamed from: a */
    public static String m6270a(Throwable th) {
        if ((th instanceof ConnectException) || (th instanceof UnknownHostException)) {
            return C14206w4.m2225a((int) R$string.error_code_nointernet);
        }
        if ((th instanceof ConnectTimeoutException) || (th instanceof SocketTimeoutException)) {
            return C14206w4.m2225a((int) R$string.error_code_timeout);
        }
        return String.format(C14206w4.m2225a((int) R$string.error_code_client), th == null ? "UnknownException" : th.getClass().getSimpleName());
    }

    /* renamed from: a */
    public static String m6265a(Headers headers, String str, String str2, JSONObject jSONObject, long j, String str3, int i, boolean z, boolean z2) {
        String str4;
        if (str3 == null) {
            str4 = str + " " + i + " : " + str2 + " result = null";
        } else if (i != 200) {
            String str5 = str + " " + i + " : " + str2 + " : " + str3 + "  " + j + " ms ";
            str4 = str5;
            if (jSONObject != null) {
                str4 = str5 + "\n inputbody=" + jSONObject;
            }
        } else {
            str4 = str + " " + i + " : " + str2 + " : " + j + " ms ";
        }
        String str6 = str4;
        if (str3 != null) {
            str6 = str4;
            if (z2) {
                try {
                    JSONObject jSONObject2 = new JSONObject(str3);
                    StringBuilder sb = new StringBuilder();
                    sb.append(str4);
                    sb.append("\n");
                    sb.append(z ? jSONObject2.toString() : jSONObject2.toString(1));
                    str6 = sb.toString();
                } catch (Exception e) {
                    str6 = str4 + "\n" + str3;
                }
            }
        }
        return str6 + "\n";
    }

    /* renamed from: a */
    public static void m6273a(String str, C12380b bVar, EnumC12382d dVar) {
    }

    /* renamed from: a */
    public static void m6271a(String str, Throwable th) throws Exception {
        String str2 = th.getClass().getSimpleName() + UserProfile.CARD_CATE_SEPARATOR + m6274a(str) + ", hasNetwork=" + C14217x3.m2137h(MyApplication.m29013o()) + UserProfile.CARD_CATE_SEPARATOR + th.toString() + "\n";
        LogManager.m28581a(str2);
        LogManager.putNotificationLog(str2);
    }

    /* renamed from: a */
    public static void m6268a(@NonNull Headers.Builder builder) {
        builder.add("User-Agent", m6259e());
        builder.add("userid", C14217x3.m2118p());
        builder.add("accesstoken", C14217x3.m2170b());
    }

    /* renamed from: a */
    public static void m6267a(Headers headers, String str, String str2, JSONObject jSONObject) throws Exception {
        String str3 = str + " : " + m6274a(str2);
        LogManager.m28581a(str3);
        String str4 = str3;
        if (jSONObject != null) {
            str4 = str3;
            if (jSONObject.length() != 0) {
                str4 = str3 + "\n" + jSONObject.toString();
            }
        }
        LogManager.putNotificationLog(str4 + "\n");
    }

    /* renamed from: a */
    public static void m6266a(Headers headers, String str, String str2, JSONObject jSONObject, long j, String str3, int i, boolean z) throws Exception {
        String a = m6274a(str2);
        String a2 = m6265a(headers, str, a, jSONObject, j, str3, i, z, true);
        String a3 = m6265a(headers, str, a, jSONObject, j, str3, i, z, false);
        if (i != 200) {
            a3 = a2;
        }
        LogManager.m28581a(a3);
        LogManager.putNotificationLog(a2);
        a2.length();
    }

    /* renamed from: a */
    public static void m6264a(boolean z) {
        if (C14217x3.m2107z() && C14137r4.m2372f()) {
            C13915b3.m3055b("isAccountDeleted", true);
            Context applicationContext = MyApplication.m29013o().getApplicationContext();
            CallDialogService.m26641a(applicationContext);
            if (CallStats.m28534h().m28539c().m28530A() || z) {
                Intent intent = new Intent(applicationContext, InexistentAccountActivity.class);
                C14300r.m1653a("InexistentAccount", intent);
                try {
                    applicationContext.startActivity(intent);
                } catch (Exception e) {
                    intent.setFlags(268435456);
                    applicationContext.startActivity(intent);
                }
            }
        }
    }

    /* renamed from: b */
    public static void m6262b(int i) {
        f27910o = i;
    }

    /* renamed from: d */
    public static int m6260d() {
        return f27910o;
    }

    /* renamed from: e */
    public static String m6259e() {
        if (!TextUtils.isEmpty(C6364a.m22966h())) {
            return C6364a.m22966h();
        }
        if (f27911p == null) {
            m6258f();
        }
        return f27911p;
    }

    /* renamed from: f */
    public static void m6258f() {
        f27911p = "whoscall|" + C14017g4.m2807q() + "|" + C14217x3.m2118p() + "|" + IJSExecutor.JS_FUNCTION_GROUP + "|" + String.valueOf(Build.VERSION.SDK_INT);
    }

    /* renamed from: g */
    public static void m6257g() {
        m6258f();
    }

    /* renamed from: a */
    public final C12380b m6269a(Call call) throws Exception {
        C12380b bVar;
        m6267a(this.f27917e, this.f27915c.toString(), this.f27914b, this.f27918f);
        long currentTimeMillis = System.currentTimeMillis();
        Response execute = FirebasePerfOkHttpClient.execute(call);
        long currentTimeMillis2 = System.currentTimeMillis();
        if (execute != null) {
            bVar = new C12380b();
            bVar.f27920a = execute.headers();
            bVar.f27921b = execute.code();
            bVar.f27922c = execute.body().string();
            EnumC12382d dVar = this.f27913a;
            if (dVar == null || !dVar.equals(EnumC12382d.GET_SETTINGS)) {
                m6266a(bVar.f27920a, this.f27915c.toString(), this.f27914b, this.f27918f, currentTimeMillis2 - currentTimeMillis, bVar.f27922c, bVar.f27921b, false);
            } else {
                m6266a(bVar.f27920a, this.f27915c.toString(), this.f27914b, this.f27918f, currentTimeMillis2 - currentTimeMillis, bVar.f27922c, bVar.f27921b, true);
            }
        } else {
            m6266a(null, this.f27915c.toString(), this.f27914b, this.f27918f, currentTimeMillis2 - currentTimeMillis, null, RoomDatabase.MAX_BIND_PARAMETER_CNT, true);
            bVar = null;
        }
        C12380b bVar2 = bVar;
        if (C13565v.m3921g().m23335b()) {
            String a = C13975b.f31383a.m9458a("api_return_code", "default");
            bVar2 = bVar;
            if (!a.equals("default")) {
                if (a.equals("SSLPeerUnverifiedException")) {
                    throw new SSLPeerUnverifiedException("test");
                } else if (!a.equals("EOFException")) {
                    bVar2 = new C12380b();
                    bVar2.f27921b = Integer.parseInt(a);
                } else {
                    throw new EOFException("test");
                }
            }
        }
        if (bVar2 != null && 401 == bVar2.f27921b) {
            m6264a(false);
        }
        return bVar2;
    }

    /* renamed from: a */
    public void m6280a() {
        Call call = this.f27916d;
        if (call != null && !call.isCanceled()) {
            this.f27916d.cancel();
        }
    }

    /* renamed from: b */
    public final Request m6263b() {
        JSONObject jSONObject;
        Request.Builder builder = new Request.Builder();
        builder.url(this.f27914b);
        Headers headers = this.f27917e;
        if (headers != null) {
            builder.headers(headers);
        }
        if (this.f27915c.equals(EnumC12381c.GET)) {
            builder.get();
        } else if (this.f27915c.equals(EnumC12381c.POST)) {
            JSONObject jSONObject2 = this.f27918f;
            if (jSONObject2 != null) {
                builder.post(RequestBody.create(f27902g, jSONObject2.toString()));
            } else {
                builder.post(RequestBody.create((MediaType) null, new byte[0]));
            }
        } else if (this.f27915c.equals(EnumC12381c.DELETE)) {
            JSONObject jSONObject3 = this.f27918f;
            if (jSONObject3 == null) {
                builder.delete();
            } else {
                builder.delete(RequestBody.create(f27902g, jSONObject3.toString()));
            }
        } else if (this.f27915c.equals(EnumC12381c.PUT) && (jSONObject = this.f27918f) != null) {
            builder.put(RequestBody.create(f27902g, jSONObject.toString()));
        }
        return builder.build();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0022, code lost:
        if (r0.f27921b == 402) goto L_0x0025;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p459j.p460a.p507f0.C12378a.C12380b m6261c() throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p507f0.C12378a.m6261c():j.a.f0.a$b");
    }
}
