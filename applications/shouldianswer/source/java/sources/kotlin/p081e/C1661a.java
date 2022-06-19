package kotlin.p081e;

import kotlin.TypeCastException;
import kotlin.p081e.p083b.AbstractC1688b;
import kotlin.p081e.p083b.C1694h;
import kotlin.p085g.AbstractC1719b;
/* renamed from: kotlin.e.a */
/* loaded from: classes-dex2jar.jar:kotlin/e/a.class */
public final class C1661a {
    /* renamed from: a */
    public static final <T> Class<T> m3132a(AbstractC1719b<T> abstractC1719b) {
        C1694h.m3117b(abstractC1719b, "$this$javaObjectType");
        Class<T> cls = (Class<T>) ((AbstractC1688b) abstractC1719b).mo3128a();
        if (!cls.isPrimitive()) {
            if (cls == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.Class<T>");
            }
            return cls;
        }
        String name = cls.getName();
        if (name != null) {
            switch (name.hashCode()) {
                case -1325958191:
                    if (name.equals("double")) {
                        cls = Double.class;
                        break;
                    }
                    break;
                case 104431:
                    if (name.equals("int")) {
                        cls = Integer.class;
                        break;
                    }
                    break;
                case 3039496:
                    if (name.equals("byte")) {
                        cls = Byte.class;
                        break;
                    }
                    break;
                case 3052374:
                    if (name.equals("char")) {
                        cls = Character.class;
                        break;
                    }
                    break;
                case 3327612:
                    if (name.equals("long")) {
                        cls = Long.class;
                        break;
                    }
                    break;
                case 3625364:
                    if (name.equals("void")) {
                        cls = Void.class;
                        break;
                    }
                    break;
                case 64711720:
                    if (name.equals("boolean")) {
                        cls = Boolean.class;
                        break;
                    }
                    break;
                case 97526364:
                    if (name.equals("float")) {
                        cls = Float.class;
                        break;
                    }
                    break;
                case 109413500:
                    if (name.equals("short")) {
                        cls = Short.class;
                        break;
                    }
                    break;
            }
        }
        if (cls == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.Class<T>");
        }
        return cls;
    }
}
