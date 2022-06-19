package com.nostra13.universalimageloader.core.download;

import androidx.webkit.ProxyConfig;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/core/download/ImageDownloader.class */
public interface ImageDownloader {

    /* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme.class */
    public enum Scheme {
        HTTP(ProxyConfig.MATCH_HTTP),
        HTTPS(ProxyConfig.MATCH_HTTPS),
        FILE("file"),
        CONTENT(FirebaseAnalytics.Param.CONTENT),
        ASSETS("assets"),
        DRAWABLE("drawable"),
        UNKNOWN("");
        
        private String scheme;
        private String uriPrefix;

        Scheme(String str) {
            this.scheme = str;
            this.uriPrefix = str + "://";
        }

        private boolean belongsTo(String str) {
            return str.toLowerCase(Locale.US).startsWith(this.uriPrefix);
        }

        public static Scheme ofUri(String str) {
            Scheme[] values;
            if (str != null) {
                for (Scheme scheme : values()) {
                    if (scheme.belongsTo(str)) {
                        return scheme;
                    }
                }
            }
            return UNKNOWN;
        }

        public String crop(String str) {
            if (belongsTo(str)) {
                return str.substring(this.uriPrefix.length());
            }
            throw new IllegalArgumentException(String.format("URI [%1$s] doesn't have expected scheme [%2$s]", str, this.scheme));
        }

        public String wrap(String str) {
            return this.uriPrefix + str;
        }
    }

    InputStream getStream(String str, Object obj) throws IOException;
}
