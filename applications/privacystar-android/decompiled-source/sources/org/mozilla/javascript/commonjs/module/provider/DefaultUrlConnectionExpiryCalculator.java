package org.mozilla.javascript.commonjs.module.provider;

import com.privacystar.core.util.DateUtil;
import java.io.Serializable;
import java.net.URLConnection;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/commonjs/module/provider/DefaultUrlConnectionExpiryCalculator.class */
public class DefaultUrlConnectionExpiryCalculator implements UrlConnectionExpiryCalculator, Serializable {
    private static final long serialVersionUID = 1;
    private final long relativeExpiry;

    public DefaultUrlConnectionExpiryCalculator() {
        this(DateUtil.MINUTE_IN_MILLIS);
    }

    public DefaultUrlConnectionExpiryCalculator(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("relativeExpiry < 0");
        }
        this.relativeExpiry = j;
    }

    @Override // org.mozilla.javascript.commonjs.module.provider.UrlConnectionExpiryCalculator
    public long calculateExpiry(URLConnection uRLConnection) {
        return System.currentTimeMillis() + this.relativeExpiry;
    }
}
