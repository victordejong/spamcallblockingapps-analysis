package scala.collection.mutable;

import scala.Predef$;
import scala.Serializable;
import scala.collection.mutable.ArrayBuilder;
import scala.reflect.ClassTag;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayBuilder$.class */
public final class ArrayBuilder$ implements Serializable {
    public static final ArrayBuilder$ MODULE$ = null;

    static {
        new ArrayBuilder$();
    }

    private ArrayBuilder$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T> ArrayBuilder<T> make(ClassTag<T> classTag) {
        ArrayBuilder.ofByte ofbyte;
        Predef$ predef$ = Predef$.MODULE$;
        ClassTag<T> classTag2 = classTag;
        Class<?> runtimeClass = classTag2.runtimeClass();
        Class cls = Byte.TYPE;
        if (cls != null ? !cls.equals(runtimeClass) : runtimeClass != null) {
            Class cls2 = Short.TYPE;
            if (cls2 != null ? !cls2.equals(runtimeClass) : runtimeClass != null) {
                Class cls3 = Character.TYPE;
                if (cls3 != null ? !cls3.equals(runtimeClass) : runtimeClass != null) {
                    Class cls4 = Integer.TYPE;
                    if (cls4 != null ? !cls4.equals(runtimeClass) : runtimeClass != null) {
                        Class cls5 = Long.TYPE;
                        if (cls5 != null ? !cls5.equals(runtimeClass) : runtimeClass != null) {
                            Class cls6 = Float.TYPE;
                            if (cls6 != null ? !cls6.equals(runtimeClass) : runtimeClass != null) {
                                Class cls7 = Double.TYPE;
                                if (cls7 != null ? !cls7.equals(runtimeClass) : runtimeClass != null) {
                                    Class cls8 = Boolean.TYPE;
                                    if (cls8 != null ? !cls8.equals(runtimeClass) : runtimeClass != null) {
                                        Class cls9 = Void.TYPE;
                                        ofbyte = (cls9 != null ? !cls9.equals(runtimeClass) : runtimeClass != null) ? new ArrayBuilder.ofRef(classTag2) : new ArrayBuilder.ofUnit();
                                    } else {
                                        ofbyte = new ArrayBuilder.ofBoolean();
                                    }
                                } else {
                                    ofbyte = new ArrayBuilder.ofDouble();
                                }
                            } else {
                                ofbyte = new ArrayBuilder.ofFloat();
                            }
                        } else {
                            ofbyte = new ArrayBuilder.ofLong();
                        }
                    } else {
                        ofbyte = new ArrayBuilder.ofInt();
                    }
                } else {
                    ofbyte = new ArrayBuilder.ofChar();
                }
            } else {
                ofbyte = new ArrayBuilder.ofShort();
            }
        } else {
            ofbyte = new ArrayBuilder.ofByte();
        }
        return ofbyte;
    }
}
