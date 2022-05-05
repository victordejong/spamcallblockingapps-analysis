package org.simpleframework.xml.transform;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/transform/FloatTransform.class */
class FloatTransform implements Transform<Float> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.simpleframework.xml.transform.Transform
    public Float read(String str) {
        return Float.valueOf(str);
    }

    public String write(Float f) {
        return f.toString();
    }
}
