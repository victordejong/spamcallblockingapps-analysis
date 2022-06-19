package p267v8;

import java.util.HashMap;
import p245t8.C4429a;
/* renamed from: v8.c */
/* loaded from: classes2-dex2jar.jar:v8/c.class */
public enum EnumC4656c {
    INTEGER,
    REAL,
    TEXT,
    BLOB;

    static {
        new HashMap<String, EnumC4656c>() { // from class: v8.c.a
            {
                String name = Byte.TYPE.getName();
                EnumC4656c enumC4656c = EnumC4656c.INTEGER;
                put(name, enumC4656c);
                put(Short.TYPE.getName(), enumC4656c);
                put(Integer.TYPE.getName(), enumC4656c);
                put(Long.TYPE.getName(), enumC4656c);
                String name2 = Float.TYPE.getName();
                EnumC4656c enumC4656c2 = EnumC4656c.REAL;
                put(name2, enumC4656c2);
                put(Double.TYPE.getName(), enumC4656c2);
                put(Boolean.TYPE.getName(), enumC4656c);
                String name3 = Character.TYPE.getName();
                EnumC4656c enumC4656c3 = EnumC4656c.TEXT;
                put(name3, enumC4656c3);
                String name4 = byte[].class.getName();
                EnumC4656c enumC4656c4 = EnumC4656c.BLOB;
                put(name4, enumC4656c4);
                put(Byte.class.getName(), enumC4656c);
                put(Short.class.getName(), enumC4656c);
                put(Integer.class.getName(), enumC4656c);
                put(Long.class.getName(), enumC4656c);
                put(Float.class.getName(), enumC4656c2);
                put(Double.class.getName(), enumC4656c2);
                put(Boolean.class.getName(), enumC4656c);
                put(Character.class.getName(), enumC4656c3);
                put(CharSequence.class.getName(), enumC4656c3);
                put(String.class.getName(), enumC4656c3);
                put(Byte[].class.getName(), enumC4656c4);
                put(C4429a.class.getName(), enumC4656c4);
            }
        };
    }
}
