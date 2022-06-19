package com.p102b.p103a;

import com.p102b.p103a.p104a.AbstractC3476b;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.util.Enumeration;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.b.a.g */
/* loaded from: classes-dex2jar.jar:com/b/a/g.class */
public final class C3517g extends AbstractC3453a {

    /* renamed from: g */
    static String[] f13384g = new String[0];

    /* renamed from: b */
    Properties f13385b;

    /* renamed from: c */
    Pattern f13386c = Pattern.compile("(.*)\\((.*?)\\)");

    /* renamed from: d */
    StringBuilder f13387d = new StringBuilder();

    /* renamed from: e */
    ThreadLocal<String> f13388e = new ThreadLocal<>();

    /* renamed from: f */
    ThreadLocal<String[]> f13389f = new ThreadLocal<>();

    public C3517g(Properties properties) {
        this.f13385b = properties;
    }

    public C3517g(String... strArr) {
        InputStream resourceAsStream = getClass().getResourceAsStream("/isoparser-default.properties");
        try {
            Properties properties = new Properties();
            this.f13385b = properties;
            try {
                properties.load(resourceAsStream);
                ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
                Enumeration<URL> resources = (contextClassLoader == null ? ClassLoader.getSystemClassLoader() : contextClassLoader).getResources("isoparser-custom.properties");
                while (resources.hasMoreElements()) {
                    resourceAsStream = resources.nextElement().openStream();
                    try {
                        this.f13385b.load(resourceAsStream);
                        resourceAsStream.close();
                    } finally {
                        resourceAsStream.close();
                    }
                }
                for (String str : strArr) {
                    this.f13385b.load(getClass().getResourceAsStream(str));
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

    @Override // com.p102b.p103a.AbstractC3453a
    /* renamed from: a */
    public final AbstractC3476b mo37830a(String str, byte[] bArr, String str2) {
        String str3;
        ThreadLocal<String> threadLocal;
        if (bArr == null) {
            String property = this.f13385b.getProperty(str);
            str3 = property;
            if (property == null) {
                StringBuilder sb = this.f13387d;
                sb.append(str2);
                sb.append('-');
                sb.append(str);
                String sb2 = sb.toString();
                this.f13387d.setLength(0);
                str3 = this.f13385b.getProperty(sb2);
            }
        } else if (!"uuid".equals(str)) {
            throw new RuntimeException("we have a userType but no uuid box type. Something's wrong");
        } else {
            String property2 = this.f13385b.getProperty("uuid[" + C3513c.m37856a(bArr).toUpperCase() + "]");
            String str4 = property2;
            if (property2 == null) {
                str4 = this.f13385b.getProperty(String.valueOf(str2) + "-uuid[" + C3513c.m37856a(bArr).toUpperCase() + "]");
            }
            str3 = str4;
            if (str4 == null) {
                str3 = this.f13385b.getProperty("uuid");
            }
        }
        String[] strArr = str3;
        if (str3 == null) {
            strArr = this.f13385b.getProperty("default");
        }
        if (strArr != null) {
            if (!strArr.endsWith(")")) {
                this.f13389f.set(f13384g);
                threadLocal = this.f13388e;
            } else {
                Matcher matcher = this.f13386c.matcher(strArr);
                if (!matcher.matches()) {
                    throw new RuntimeException("Cannot work with that constructor: ".concat(String.valueOf(strArr)));
                }
                this.f13388e.set(matcher.group(1));
                if (matcher.group(2).length() == 0) {
                    threadLocal = this.f13389f;
                    strArr = f13384g;
                } else {
                    ThreadLocal<String[]> threadLocal2 = this.f13389f;
                    strArr = matcher.group(2).length() > 0 ? matcher.group(2).split(",") : new String[0];
                    threadLocal = threadLocal2;
                }
            }
            threadLocal.set(strArr);
            String[] strArr2 = this.f13389f.get();
            try {
                Class<?> cls = Class.forName(this.f13388e.get());
                if (strArr2.length <= 0) {
                    return (AbstractC3476b) cls.newInstance();
                }
                Class<?>[] clsArr = new Class[strArr2.length];
                Object[] objArr = new Object[strArr2.length];
                for (int i = 0; i < strArr2.length; i++) {
                    if ("userType".equals(strArr2[i])) {
                        objArr[i] = bArr;
                        clsArr[i] = byte[].class;
                    } else if ("type".equals(strArr2[i])) {
                        objArr[i] = str;
                        clsArr[i] = String.class;
                    } else if (!"parent".equals(strArr2[i])) {
                        throw new InternalError("No such param: " + strArr2[i]);
                    } else {
                        objArr[i] = str2;
                        clsArr[i] = String.class;
                    }
                }
                return (AbstractC3476b) cls.getConstructor(clsArr).newInstance(objArr);
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
        }
        throw new RuntimeException("No box object found for ".concat(String.valueOf(str)));
    }
}
