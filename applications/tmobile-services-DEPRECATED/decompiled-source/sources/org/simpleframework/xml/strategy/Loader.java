package org.simpleframework.xml.strategy;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/strategy/Loader.class */
class Loader {
    private static ClassLoader getCallerClassLoader() throws Exception {
        return Loader.class.getClassLoader();
    }

    private static ClassLoader getClassLoader() throws Exception {
        return Thread.currentThread().getContextClassLoader();
    }

    public Class load(String str) throws Exception {
        ClassLoader classLoader = getClassLoader();
        ClassLoader classLoader2 = classLoader;
        if (classLoader == null) {
            classLoader2 = getCallerClassLoader();
        }
        return classLoader2.loadClass(str);
    }
}
