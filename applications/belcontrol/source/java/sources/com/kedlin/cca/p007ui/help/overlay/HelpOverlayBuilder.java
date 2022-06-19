package com.kedlin.cca.p007ui.help.overlay;

import java.util.Locale;
/* renamed from: com.kedlin.cca.ui.help.overlay.HelpOverlayBuilder */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/help/overlay/HelpOverlayBuilder.class */
public abstract class HelpOverlayBuilder {

    /* renamed from: a */
    public static final String f4074a = Locale.US.getLanguage().toUpperCase();

    /* renamed from: a */
    public static Object m4110a(Class<?> cls) {
        Package r0;
        String str;
        if (cls.getPackage() != null) {
            str = r0.getName() + ".";
        } else {
            str = "";
        }
        String simpleName = cls.getSimpleName();
        try {
            String upperCase = Locale.getDefault().getLanguage().toUpperCase();
            if (f4074a.equals(upperCase)) {
                return cls.newInstance();
            }
            Object newInstance = Class.forName(str + simpleName + "_" + upperCase).newInstance();
            if (cls.isAssignableFrom(newInstance.getClass())) {
                return newInstance;
            }
            String str2 = "The class " + newInstance.getClass().getSimpleName() + " does not inherit " + cls.getSimpleName() + " which is a must";
            return cls.newInstance();
        } catch (Throwable th) {
            try {
                return cls.newInstance();
            } catch (Throwable th2) {
                return null;
            }
        }
    }
}
