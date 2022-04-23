package org.simpleframework.xml.transform;

import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/transform/Transformer.class */
public class Transformer {
    private final Cache<Transform> cache = new ConcurrentCache();
    private final Cache<Object> error = new ConcurrentCache();
    private final Matcher matcher;

    public Transformer(Matcher matcher) {
        this.matcher = new DefaultMatcher(matcher);
    }

    private Transform lookup(Class cls) throws Exception {
        if (this.error.contains(cls)) {
            return null;
        }
        Transform fetch = this.cache.fetch(cls);
        return fetch != null ? fetch : match(cls);
    }

    private Transform match(Class cls) throws Exception {
        Transform match = this.matcher.match(cls);
        if (match != null) {
            this.cache.cache(cls, match);
        } else {
            this.error.cache(cls, this);
        }
        return match;
    }

    public Object read(String str, Class cls) throws Exception {
        Transform lookup = lookup(cls);
        if (lookup != null) {
            return lookup.read(str);
        }
        throw new TransformException("Transform of %s not supported", cls);
    }

    public boolean valid(Class cls) throws Exception {
        return lookup(cls) != null;
    }

    public String write(Object obj, Class cls) throws Exception {
        Transform lookup = lookup(cls);
        if (lookup != null) {
            return lookup.write(obj);
        }
        throw new TransformException("Transform of %s not supported", cls);
    }
}
