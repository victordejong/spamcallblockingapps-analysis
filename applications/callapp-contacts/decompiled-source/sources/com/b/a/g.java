package com.b.a;

import com.b.a.a.b;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.util.Enumeration;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/b/a/g.class */
public final class g extends a {
    static String[] g = new String[0];

    /* renamed from: b  reason: collision with root package name */
    Properties f7171b;

    /* renamed from: c  reason: collision with root package name */
    Pattern f7172c = Pattern.compile("(.*)\\((.*?)\\)");

    /* renamed from: d  reason: collision with root package name */
    StringBuilder f7173d = new StringBuilder();
    ThreadLocal<String> e = new ThreadLocal<>();
    ThreadLocal<String[]> f = new ThreadLocal<>();

    public g(Properties properties) {
        this.f7171b = properties;
    }

    public g(String... strArr) {
        InputStream resourceAsStream = getClass().getResourceAsStream("/isoparser-default.properties");
        try {
            Properties properties = new Properties();
            this.f7171b = properties;
            try {
                properties.load(resourceAsStream);
                ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
                Enumeration<URL> resources = (contextClassLoader == null ? ClassLoader.getSystemClassLoader() : contextClassLoader).getResources("isoparser-custom.properties");
                while (resources.hasMoreElements()) {
                    resourceAsStream = resources.nextElement().openStream();
                    try {
                        this.f7171b.load(resourceAsStream);
                        resourceAsStream.close();
                    } finally {
                        resourceAsStream.close();
                    }
                }
                for (String str : strArr) {
                    this.f7171b.load(getClass().getResourceAsStream(str));
                }
                try {
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        } catch (Throwable th) {
            try {
                resourceAsStream.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.b.a.a
    public final b a(String str, byte[] bArr, String str2) {
        String str3;
        String str4;
        ThreadLocal threadLocal;
        if (bArr == null) {
            String property = this.f7171b.getProperty(str);
            str3 = property;
            if (property == null) {
                StringBuilder sb = this.f7173d;
                sb.append(str2);
                sb.append('-');
                sb.append(str);
                String sb2 = sb.toString();
                this.f7173d.setLength(0);
                str3 = this.f7171b.getProperty(sb2);
            }
        } else if ("uuid".equals(str)) {
            Properties properties = this.f7171b;
            String property2 = properties.getProperty("uuid[" + c.a(bArr).toUpperCase() + "]");
            String str5 = property2;
            if (property2 == null) {
                Properties properties2 = this.f7171b;
                str5 = properties2.getProperty(String.valueOf(str2) + "-uuid[" + c.a(bArr).toUpperCase() + "]");
            }
            str3 = str5;
            if (str5 == null) {
                str3 = this.f7171b.getProperty("uuid");
            }
        } else {
            throw new RuntimeException("we have a userType but no uuid box type. Something's wrong");
        }
        String str6 = str3;
        if (str3 == null) {
            str6 = this.f7171b.getProperty("default");
        }
        if (str6 != null) {
            if (!str6.endsWith(")")) {
                this.f.set(g);
                threadLocal = this.e;
                str4 = str6;
            } else {
                Matcher matcher = this.f7172c.matcher(str6);
                if (matcher.matches()) {
                    this.e.set(matcher.group(1));
                    if (matcher.group(2).length() == 0) {
                        threadLocal = this.f;
                        str4 = g;
                    } else {
                        threadLocal = this.f;
                        str4 = matcher.group(2).length() > 0 ? matcher.group(2).split(",") : new String[0];
                    }
                } else {
                    throw new RuntimeException("Cannot work with that constructor: ".concat(String.valueOf(str6)));
                }
            }
            threadLocal.set(str4);
            String[] strArr = this.f.get();
            try {
                Class<?> cls = Class.forName(this.e.get());
                if (strArr.length <= 0) {
                    return (b) cls.newInstance();
                }
                Class<?>[] clsArr = new Class[strArr.length];
                Object[] objArr = new Object[strArr.length];
                for (int i = 0; i < strArr.length; i++) {
                    if ("userType".equals(strArr[i])) {
                        objArr[i] = bArr;
                        clsArr[i] = byte[].class;
                    } else if ("type".equals(strArr[i])) {
                        objArr[i] = str;
                        clsArr[i] = String.class;
                    } else if ("parent".equals(strArr[i])) {
                        objArr[i] = str2;
                        clsArr[i] = String.class;
                    } else {
                        throw new InternalError("No such param: " + strArr[i]);
                    }
                }
                return (b) cls.getConstructor(clsArr).newInstance(objArr);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            } catch (IllegalAccessException e2) {
                throw new RuntimeException(e2);
            } catch (InstantiationException e3) {
                throw new RuntimeException(e3);
            } catch (NoSuchMethodException e4) {
                throw new RuntimeException(e4);
            } catch (InvocationTargetException e5) {
                throw new RuntimeException(e5);
            }
        } else {
            throw new RuntimeException("No box object found for ".concat(String.valueOf(str)));
        }
    }
}
