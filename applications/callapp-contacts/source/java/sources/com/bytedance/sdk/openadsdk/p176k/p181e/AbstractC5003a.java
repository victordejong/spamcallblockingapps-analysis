package com.bytedance.sdk.openadsdk.p176k.p181e;

import com.appsflyer.internal.referrer.Payload;
import com.bytedance.sdk.openadsdk.p176k.C5034i;
import com.explorestack.iab.vast.VastError;
import java.io.InputStream;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.k.e.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/e/a.class */
public abstract class AbstractC5003a {

    /* renamed from: a */
    List<C5034i.C5036b> f18149a;

    /* renamed from: b */
    C5009f f18150b;

    /* renamed from: a */
    public abstract int mo33322a();

    /* renamed from: a */
    public C5034i.C5036b m33330a(String str) {
        List<C5034i.C5036b> list;
        if (str == null || (list = this.f18149a) == null || list.size() <= 0) {
            return null;
        }
        for (C5034i.C5036b c5036b : this.f18149a) {
            if (str.equals(c5036b.f18235a)) {
                return c5036b;
            }
        }
        return null;
    }

    /* renamed from: a */
    public String m33331a(int i) {
        String str;
        switch (i) {
            case 200:
                str = Payload.RESPONSE_OK;
                break;
            case 201:
                str = "Created";
                break;
            case 202:
                str = "Accepted";
                break;
            case LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE:
                str = "Non-Authoritative";
                break;
            case LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE:
                str = "No Content";
                break;
            case LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE:
                str = "Reset Content";
                break;
            case LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE:
                str = "Partial Content";
                break;
            default:
                switch (i) {
                    case VastError.ERROR_CODE_GENERAL_WRAPPER /* 300 */:
                        str = "Multiple Choices";
                        break;
                    case VastError.ERROR_CODE_BAD_URI /* 301 */:
                        str = "Moved Permanently";
                        break;
                    case VastError.ERROR_CODE_EXCEEDED_WRAPPER_LIMIT /* 302 */:
                        str = "Temporary Redirect";
                        break;
                    case VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD /* 303 */:
                        str = "See Other";
                        break;
                    case 304:
                        str = "Not Modified";
                        break;
                    case 305:
                        str = "Use Proxy";
                        break;
                    default:
                        switch (i) {
                            case 400:
                                str = "Bad Request";
                                break;
                            case VastError.ERROR_CODE_NO_FILE /* 401 */:
                                str = "Unauthorized";
                                break;
                            case 402:
                                str = "Payment Required";
                                break;
                            case VastError.ERROR_CODE_BAD_FILE /* 403 */:
                                str = "Forbidden";
                                break;
                            case 404:
                                str = "Not Found";
                                break;
                            case VastError.ERROR_CODE_ERROR_SHOWING /* 405 */:
                                str = "Method Not Allowed";
                                break;
                            case 406:
                                str = "Not Acceptable";
                                break;
                            case 407:
                                str = "Proxy Authentication Required";
                                break;
                            case 408:
                                str = "Request Time-Out";
                                break;
                            case 409:
                                str = "Conflict";
                                break;
                            case 410:
                                str = "Gone";
                                break;
                            case 411:
                                str = "Length Required";
                                break;
                            case 412:
                                str = "Precondition Failed";
                                break;
                            case 413:
                                str = "Request Entity Too Large";
                                break;
                            case 414:
                                str = "Request-URI Too Large";
                                break;
                            case 415:
                                str = "Unsupported Media Type";
                                break;
                            default:
                                switch (i) {
                                    case 500:
                                        str = "Internal Server Error";
                                        break;
                                    case 501:
                                        str = "Not Implemented";
                                        break;
                                    case 502:
                                        str = "Bad Gateway";
                                        break;
                                    case 503:
                                        str = "Service Unavailable";
                                        break;
                                    case 504:
                                        str = "Gateway Timeout";
                                        break;
                                    case 505:
                                        str = "HTTP Version Not Supported";
                                        break;
                                    default:
                                        str = "";
                                        break;
                                }
                        }
                }
        }
        return str;
    }

    /* renamed from: a */
    public abstract String mo33321a(String str, String str2);

    /* renamed from: b */
    public abstract boolean mo33320b();

    /* renamed from: c */
    public abstract List<C5034i.C5036b> mo33319c();

    /* renamed from: d */
    public abstract InputStream mo33318d();

    /* renamed from: e */
    public abstract String mo33317e();

    /* renamed from: f */
    public abstract String mo33316f();

    /* renamed from: g */
    public C5009f m33329g() {
        return this.f18150b;
    }
}
