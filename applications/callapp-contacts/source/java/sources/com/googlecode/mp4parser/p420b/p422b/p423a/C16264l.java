package com.googlecode.mp4parser.p420b.p422b.p423a;

import com.p102b.p103a.C3515e;
import java.io.IOException;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.googlecode.mp4parser.b.b.a.l */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/l.class */
public class C16264l {

    /* renamed from: a */
    protected static Logger f57474a = Logger.getLogger(C16264l.class.getName());

    /* renamed from: b */
    protected static Map<Integer, Map<Integer, Class<? extends AbstractC16254b>>> f57475b = new HashMap();

    static {
        HashSet<Class<? extends AbstractC16254b>> hashSet = new HashSet();
        hashSet.add(C16258f.class);
        hashSet.add(C16266n.class);
        hashSet.add(AbstractC16254b.class);
        hashSet.add(C16261i.class);
        hashSet.add(AbstractC16263k.class);
        hashSet.add(C16265m.class);
        hashSet.add(C16251a.class);
        hashSet.add(C16262j.class);
        hashSet.add(C16260h.class);
        hashSet.add(C16257e.class);
        for (Class<? extends AbstractC16254b> cls : hashSet) {
            AbstractC16259g abstractC16259g = (AbstractC16259g) cls.getAnnotation(AbstractC16259g.class);
            int[] m7537a = abstractC16259g.m7537a();
            int m7536b = abstractC16259g.m7536b();
            Map<Integer, Class<? extends AbstractC16254b>> map = f57475b.get(Integer.valueOf(m7536b));
            HashMap hashMap = map;
            if (map == null) {
                hashMap = new HashMap();
            }
            for (int i : m7537a) {
                hashMap.put(Integer.valueOf(i), cls);
            }
            f57475b.put(Integer.valueOf(m7536b), hashMap);
        }
    }

    /* renamed from: a */
    public static AbstractC16254b m7535a(int i, ByteBuffer byteBuffer) throws IOException {
        C16267o c16267o;
        int m37852a = C3515e.m37852a(byteBuffer.get());
        Map<Integer, Class<? extends AbstractC16254b>> map = f57475b.get(Integer.valueOf(i));
        Map<Integer, Class<? extends AbstractC16254b>> map2 = map;
        if (map == null) {
            map2 = f57475b.get(-1);
        }
        Class<? extends AbstractC16254b> cls = map2.get(Integer.valueOf(m37852a));
        if (cls == null || cls.isInterface() || Modifier.isAbstract(cls.getModifiers())) {
            Logger logger = f57474a;
            logger.warning("No ObjectDescriptor found for objectTypeIndication " + Integer.toHexString(i) + " and tag " + Integer.toHexString(m37852a) + " found: " + cls);
            c16267o = new C16267o();
        } else {
            try {
                c16267o = cls.newInstance();
            } catch (Exception e) {
                Logger logger2 = f57474a;
                Level level = Level.SEVERE;
                logger2.log(level, "Couldn't instantiate BaseDescriptor class " + cls + " for objectTypeIndication " + i + " and tag " + m37852a, (Throwable) e);
                throw new RuntimeException(e);
            }
        }
        c16267o.m7546a(m37852a, byteBuffer);
        return c16267o;
    }
}
