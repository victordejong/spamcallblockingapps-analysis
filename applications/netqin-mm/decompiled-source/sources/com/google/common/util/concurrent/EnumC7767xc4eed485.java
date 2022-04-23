package com.google.common.util.concurrent;
/* renamed from: com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidatorHolder$ClassValueValidator */
/* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder$ClassValueValidator.class */
public enum EnumC7767xc4eed485 {
    INSTANCE;
    
    public static final ClassValue<Boolean> isValidClass = new ClassValue<Boolean>() { // from class: com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidatorHolder$ClassValueValidator.a
    };

    public void validateClass(Class<? extends Exception> cls) {
        isValidClass.get(cls);
    }
}
