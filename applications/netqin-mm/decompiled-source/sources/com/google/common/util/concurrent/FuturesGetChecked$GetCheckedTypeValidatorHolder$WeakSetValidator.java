package com.google.common.util.concurrent;

import java.lang.ref.WeakReference;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import p131c.p161d.p266c.p275i.p276a.C5101h;
/* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder$WeakSetValidator.class */
public enum FuturesGetChecked$GetCheckedTypeValidatorHolder$WeakSetValidator {
    INSTANCE;
    
    public static final Set<WeakReference<Class<? extends Exception>>> validClasses = new CopyOnWriteArraySet();

    public void validateClass(Class<? extends Exception> cls) {
        for (WeakReference<Class<? extends Exception>> weakReference : validClasses) {
            if (cls.equals(weakReference.get())) {
                return;
            }
        }
        C5101h.m24512a(cls);
        if (validClasses.size() > 1000) {
            validClasses.clear();
        }
        validClasses.add(new WeakReference<>(cls));
    }
}
