package p573f.p590w;

import kotlin.TypeCastException;
import p573f.p574a0.AbstractC9870c;
import p573f.p590w.p592c.AbstractC10054l;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.w.a */
/* loaded from: classes2-dex2jar.jar:f/w/a.class */
public final class C10019a {
    /* renamed from: a */
    public static final <T> Class<T> m1664a(AbstractC9870c<T> cVar) {
        C10059q.m1637b(cVar, "$this$javaObjectType");
        Class<T> cls = (Class<T>) ((AbstractC10054l) cVar).mo1631a();
        if (cls.isPrimitive()) {
            String name = cls.getName();
            if (name != null) {
                switch (name.hashCode()) {
                    case -1325958191:
                        if (name.equals("double")) {
                            cls = (Class<T>) Double.class;
                            break;
                        }
                        break;
                    case 104431:
                        if (name.equals("int")) {
                            cls = (Class<T>) Integer.class;
                            break;
                        }
                        break;
                    case 3039496:
                        if (name.equals("byte")) {
                            cls = (Class<T>) Byte.class;
                            break;
                        }
                        break;
                    case 3052374:
                        if (name.equals("char")) {
                            cls = (Class<T>) Character.class;
                            break;
                        }
                        break;
                    case 3327612:
                        if (name.equals("long")) {
                            cls = (Class<T>) Long.class;
                            break;
                        }
                        break;
                    case 3625364:
                        if (name.equals("void")) {
                            cls = (Class<T>) Void.class;
                            break;
                        }
                        break;
                    case 64711720:
                        if (name.equals("boolean")) {
                            cls = (Class<T>) Boolean.class;
                            break;
                        }
                        break;
                    case 97526364:
                        if (name.equals("float")) {
                            cls = (Class<T>) Float.class;
                            break;
                        }
                        break;
                    case 109413500:
                        if (name.equals("short")) {
                            cls = (Class<T>) Short.class;
                            break;
                        }
                        break;
                }
            }
            if (cls != null) {
                return cls;
            }
            throw new TypeCastException("null cannot be cast to non-null type java.lang.Class<T>");
        } else if (cls != null) {
            return cls;
        } else {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.Class<T>");
        }
    }
}
