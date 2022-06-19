package p000;
/* renamed from: hk1 */
/* loaded from: classes3-dex2jar.jar:hk1.class */
public final class hk1 {
    /* renamed from: a */
    public static final <T> Class<T> m1620a(al1<T> al1Var) {
        qk1.m744c(al1Var, "$this$javaObjectType");
        Class<T> cls = (Class<T>) ((lk1) al1Var).mo1231a();
        if (!cls.isPrimitive()) {
            if (cls == null) {
                throw new mj1("null cannot be cast to non-null type java.lang.Class<T>");
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
            throw new mj1("null cannot be cast to non-null type java.lang.Class<T>");
        }
        return cls;
    }
}
