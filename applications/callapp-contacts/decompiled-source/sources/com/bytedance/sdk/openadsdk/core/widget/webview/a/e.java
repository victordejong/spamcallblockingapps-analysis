package com.bytedance.sdk.openadsdk.core.widget.webview.a;

import android.net.Uri;
import android.text.TextUtils;
import com.amazonaws.services.s3.util.Mimetypes;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/a/e.class */
public class e {

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/a/e$a.class */
    public enum a {
        HTML(Mimetypes.MIMETYPE_HTML),
        CSS("text/css"),
        JS("application/x-javascript"),
        IMAGE("image/*");
        
        private String e;

        a(String str) {
            this.e = str;
        }

        public final String a() {
            return this.e;
        }
    }

    public static a a(String str) {
        a aVar = a.IMAGE;
        a aVar2 = aVar;
        if (!TextUtils.isEmpty(str)) {
            try {
                String path = Uri.parse(str).getPath();
                aVar2 = aVar;
                if (path != null) {
                    if (path.endsWith(".css")) {
                        aVar2 = a.CSS;
                    } else if (path.endsWith(".js")) {
                        aVar2 = a.JS;
                    } else {
                        if (!path.endsWith(".jpg") && !path.endsWith(".gif") && !path.endsWith(".png") && !path.endsWith(".jpeg") && !path.endsWith(".webp") && !path.endsWith(".bmp") && !path.endsWith(".ico")) {
                            aVar2 = aVar;
                            if (path.endsWith(".html")) {
                                aVar2 = a.HTML;
                            }
                        }
                        aVar2 = a.IMAGE;
                    }
                }
            } catch (Throwable th) {
                aVar2 = aVar;
            }
        }
        return aVar2;
    }
}
