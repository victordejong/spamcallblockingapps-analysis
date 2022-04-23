package com.bytedance.sdk.openadsdk.k.e;

import com.appsflyer.internal.referrer.Payload;
import com.bytedance.sdk.openadsdk.k.i;
import com.explorestack.iab.vast.VastError;
import java.io.InputStream;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/e/a.class */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    List<i.b> f9725a;

    /* renamed from: b  reason: collision with root package name */
    f f9726b;

    public abstract int a();

    /* JADX INFO: Access modifiers changed from: protected */
    public i.b a(String str) {
        List<i.b> list;
        if (str == null || (list = this.f9725a) == null || list.size() <= 0) {
            return null;
        }
        for (i.b bVar : this.f9725a) {
            if (str.equals(bVar.f9785a)) {
                return bVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(int i) {
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

    public abstract String a(String str, String str2);

    public abstract boolean b();

    public abstract List<i.b> c();

    public abstract InputStream d();

    public abstract String e();

    public abstract String f();

    public f g() {
        return this.f9726b;
    }
}
