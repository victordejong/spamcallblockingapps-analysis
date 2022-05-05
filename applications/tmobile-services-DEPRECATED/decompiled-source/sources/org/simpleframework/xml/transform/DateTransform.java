package org.simpleframework.xml.transform;

import java.util.Date;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/transform/DateTransform.class */
class DateTransform<T extends Date> implements Transform<T> {
    private final DateFactory<T> factory;

    public DateTransform(Class<T> cls) throws Exception {
        this.factory = new DateFactory<>(cls);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public T read(String str) throws Exception {
        T instance;
        synchronized (this) {
            instance = this.factory.getInstance(Long.valueOf(DateType.getDate(str).getTime()));
        }
        return instance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.simpleframework.xml.transform.Transform
    public /* bridge */ /* synthetic */ String write(Object obj) throws Exception {
        return write((DateTransform<T>) ((Date) obj));
    }

    public String write(T t) throws Exception {
        String text;
        synchronized (this) {
            text = DateType.getText(t);
        }
        return text;
    }
}
