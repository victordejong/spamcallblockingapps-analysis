package org.simpleframework.xml.transform;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/transform/IntegerTransform.class */
class IntegerTransform implements Transform<Integer> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.simpleframework.xml.transform.Transform
    public Integer read(String str) {
        return Integer.valueOf(str);
    }

    public String write(Integer num) {
        return num.toString();
    }
}
