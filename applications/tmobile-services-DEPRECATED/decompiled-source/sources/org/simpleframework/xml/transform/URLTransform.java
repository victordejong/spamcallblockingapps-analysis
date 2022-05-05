package org.simpleframework.xml.transform;

import java.net.URL;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/transform/URLTransform.class */
class URLTransform implements Transform<URL> {
    @Override // org.simpleframework.xml.transform.Transform
    public URL read(String str) throws Exception {
        return new URL(str);
    }

    public String write(URL url) throws Exception {
        return url.toString();
    }
}
