package org.simpleframework.xml.transform;

import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/transform/AtomicLongTransform.class */
class AtomicLongTransform implements Transform<AtomicLong> {
    @Override // org.simpleframework.xml.transform.Transform
    public AtomicLong read(String str) {
        return new AtomicLong(Long.valueOf(str).longValue());
    }

    public String write(AtomicLong atomicLong) {
        return atomicLong.toString();
    }
}
