package org.xutils.http.loader;

import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Type;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/loader/LoaderFactory.class */
public final class LoaderFactory {

    /* renamed from: a */
    private static final HashMap<Type, Loader> f40768a;

    static {
        HashMap<Type, Loader> hashMap = new HashMap<>();
        f40768a = hashMap;
        hashMap.put(JSONObject.class, new C9663f());
        hashMap.put(JSONArray.class, new C9662e());
        hashMap.put(String.class, new C9665h());
        hashMap.put(File.class, new FileLoader());
        hashMap.put(byte[].class, new C9659b());
        hashMap.put(InputStream.class, new C9660c());
        C9658a c9658a = new C9658a();
        hashMap.put(Boolean.TYPE, c9658a);
        hashMap.put(Boolean.class, c9658a);
        C9661d c9661d = new C9661d();
        hashMap.put(Integer.TYPE, c9661d);
        hashMap.put(Integer.class, c9661d);
    }

    private LoaderFactory() {
    }

    public static Loader<?> getLoader(Type type) {
        Loader loader = f40768a.get(type);
        return loader == null ? new C9664g(type) : loader.newInstance();
    }

    public static <T> void registerLoader(Type type, Loader<T> loader) {
        f40768a.put(type, loader);
    }
}
