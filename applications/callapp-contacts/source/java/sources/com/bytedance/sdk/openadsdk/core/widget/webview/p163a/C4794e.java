package com.bytedance.sdk.openadsdk.core.widget.webview.p163a;

import android.net.Uri;
import android.text.TextUtils;
import com.amazonaws.services.p101s3.util.Mimetypes;
/* renamed from: com.bytedance.sdk.openadsdk.core.widget.webview.a.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/a/e.class */
public class C4794e {

    /* renamed from: com.bytedance.sdk.openadsdk.core.widget.webview.a.e$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/a/e$a.class */
    public enum EnumC4795a {
        HTML(Mimetypes.MIMETYPE_HTML),
        CSS("text/css"),
        JS("application/x-javascript"),
        IMAGE("image/*");
        

        /* renamed from: e */
        private String f17624e;

        EnumC4795a(String str) {
            this.f17624e = str;
        }

        /* renamed from: a */
        public final String m33930a() {
            return this.f17624e;
        }
    }

    /* renamed from: a */
    public static EnumC4795a m33931a(String str) {
        EnumC4795a enumC4795a = EnumC4795a.IMAGE;
        EnumC4795a enumC4795a2 = enumC4795a;
        if (!TextUtils.isEmpty(str)) {
            try {
                String path = Uri.parse(str).getPath();
                enumC4795a2 = enumC4795a;
                if (path != null) {
                    if (path.endsWith(".css")) {
                        enumC4795a2 = EnumC4795a.CSS;
                    } else if (path.endsWith(".js")) {
                        enumC4795a2 = EnumC4795a.JS;
                    } else {
                        if (!path.endsWith(".jpg") && !path.endsWith(".gif") && !path.endsWith(".png") && !path.endsWith(".jpeg") && !path.endsWith(".webp") && !path.endsWith(".bmp") && !path.endsWith(".ico")) {
                            enumC4795a2 = enumC4795a;
                            if (path.endsWith(".html")) {
                                enumC4795a2 = EnumC4795a.HTML;
                            }
                        }
                        enumC4795a2 = EnumC4795a.IMAGE;
                    }
                }
            } catch (Throwable th) {
                enumC4795a2 = enumC4795a;
            }
        }
        return enumC4795a2;
    }
}
