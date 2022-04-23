package com.googlecode.mp4parser.b.b.a;

import com.b.a.e;
import java.io.IOException;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/l.class */
public class l {

    /* renamed from: a  reason: collision with root package name */
    protected static Logger f33128a = Logger.getLogger(l.class.getName());

    /* renamed from: b  reason: collision with root package name */
    protected static Map<Integer, Map<Integer, Class<? extends b>>> f33129b = new HashMap();

    static {
        HashSet<Class<? extends b>> hashSet = new HashSet();
        hashSet.add(f.class);
        hashSet.add(n.class);
        hashSet.add(b.class);
        hashSet.add(i.class);
        hashSet.add(k.class);
        hashSet.add(m.class);
        hashSet.add(a.class);
        hashSet.add(j.class);
        hashSet.add(h.class);
        hashSet.add(e.class);
        for (Class<? extends b> cls : hashSet) {
            g gVar = (g) cls.getAnnotation(g.class);
            int[] a2 = gVar.a();
            int b2 = gVar.b();
            Map<Integer, Class<? extends b>> map = f33129b.get(Integer.valueOf(b2));
            Map<Integer, Class<? extends b>> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
            }
            for (int i : a2) {
                map2.put(Integer.valueOf(i), cls);
            }
            f33129b.put(Integer.valueOf(b2), map2);
        }
    }

    public static b a(int i, ByteBuffer byteBuffer) throws IOException {
        b bVar;
        int a2 = e.a(byteBuffer.get());
        Map<Integer, Class<? extends b>> map = f33129b.get(Integer.valueOf(i));
        Map<Integer, Class<? extends b>> map2 = map;
        if (map == null) {
            map2 = f33129b.get(-1);
        }
        Class<? extends b> cls = map2.get(Integer.valueOf(a2));
        if (cls == null || cls.isInterface() || Modifier.isAbstract(cls.getModifiers())) {
            Logger logger = f33128a;
            logger.warning("No ObjectDescriptor found for objectTypeIndication " + Integer.toHexString(i) + " and tag " + Integer.toHexString(a2) + " found: " + cls);
            bVar = new o();
        } else {
            try {
                bVar = (b) cls.newInstance();
            } catch (Exception e) {
                Logger logger2 = f33128a;
                Level level = Level.SEVERE;
                logger2.log(level, "Couldn't instantiate BaseDescriptor class " + cls + " for objectTypeIndication " + i + " and tag " + a2, (Throwable) e);
                throw new RuntimeException(e);
            }
        }
        bVar.a(a2, byteBuffer);
        return bVar;
    }
}
