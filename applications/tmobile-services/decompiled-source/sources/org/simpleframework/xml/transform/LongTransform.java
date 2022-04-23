package org.simpleframework.xml.transform;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/transform/LongTransform.class */
class LongTransform implements Transform<Long> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.simpleframework.xml.transform.Transform
    public Long read(String str) {
        return Long.valueOf(str);
    }

    public String write(Long l) {
        return l.toString();
    }
}
