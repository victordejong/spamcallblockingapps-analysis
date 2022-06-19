package com.yanzhenjie.nohttp;

import android.text.TextUtils;
import com.zhy.http.okhttp.OkHttpUtils;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/RequestMethod.class */
public enum RequestMethod {
    GET("GET"),
    POST("POST"),
    PUT(OkHttpUtils.METHOD.PUT),
    DELETE(OkHttpUtils.METHOD.DELETE),
    HEAD(OkHttpUtils.METHOD.HEAD),
    PATCH(OkHttpUtils.METHOD.PATCH),
    OPTIONS("OPTIONS"),
    TRACE("TRACE");
    
    private final String value;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yanzhenjie.nohttp.RequestMethod$1 */
    /* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/RequestMethod$1.class */
    public static /* synthetic */ class C94271 {
        static final /* synthetic */ int[] $SwitchMap$com$yanzhenjie$nohttp$RequestMethod;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[RequestMethod.values().length];
            $SwitchMap$com$yanzhenjie$nohttp$RequestMethod = iArr;
            try {
                iArr[RequestMethod.POST.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$yanzhenjie$nohttp$RequestMethod[RequestMethod.PUT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$yanzhenjie$nohttp$RequestMethod[RequestMethod.PATCH.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$yanzhenjie$nohttp$RequestMethod[RequestMethod.DELETE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    RequestMethod(String str) {
        this.value = str;
    }

    public static RequestMethod reverse(String str) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = "GET";
        }
        String upperCase = str2.toUpperCase(Locale.ENGLISH);
        upperCase.hashCode();
        boolean z = true;
        switch (upperCase.hashCode()) {
            case -531492226:
                if (upperCase.equals("OPTIONS")) {
                    z = false;
                    break;
                }
                break;
            case 70454:
                if (upperCase.equals("GET")) {
                    z = true;
                    break;
                }
                break;
            case 79599:
                if (upperCase.equals(OkHttpUtils.METHOD.PUT)) {
                    z = true;
                    break;
                }
                break;
            case 2213344:
                if (upperCase.equals(OkHttpUtils.METHOD.HEAD)) {
                    z = true;
                    break;
                }
                break;
            case 2461856:
                if (upperCase.equals("POST")) {
                    z = true;
                    break;
                }
                break;
            case 75900968:
                if (upperCase.equals(OkHttpUtils.METHOD.PATCH)) {
                    z = true;
                    break;
                }
                break;
            case 80083237:
                if (upperCase.equals("TRACE")) {
                    z = true;
                    break;
                }
                break;
            case 2012838315:
                if (upperCase.equals(OkHttpUtils.METHOD.DELETE)) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return OPTIONS;
            case true:
                return GET;
            case true:
                return PUT;
            case true:
                return HEAD;
            case true:
                return POST;
            case true:
                return PATCH;
            case true:
                return TRACE;
            case true:
                return DELETE;
            default:
                return GET;
        }
    }

    public boolean allowRequestBody() {
        int i = C94271.$SwitchMap$com$yanzhenjie$nohttp$RequestMethod[ordinal()];
        return i == 1 || i == 2 || i == 3 || i == 4;
    }

    public String getValue() {
        return this.value;
    }
}
