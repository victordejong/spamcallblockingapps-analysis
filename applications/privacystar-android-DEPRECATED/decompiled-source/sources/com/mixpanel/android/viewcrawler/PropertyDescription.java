package com.mixpanel.android.viewcrawler;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/PropertyDescription.class */
class PropertyDescription {
    public final Caller accessor;
    private final String mMutatorName;
    public final String name;
    public final Class<?> targetClass;

    public PropertyDescription(String str, Class<?> cls, Caller caller, String str2) {
        this.name = str;
        this.targetClass = cls;
        this.accessor = caller;
        this.mMutatorName = str2;
    }

    public Caller makeMutator(Object[] objArr) throws NoSuchMethodException {
        if (this.mMutatorName == null) {
            return null;
        }
        return new Caller(this.targetClass, this.mMutatorName, objArr, Void.TYPE);
    }

    public String toString() {
        return "[PropertyDescription " + this.name + "," + this.targetClass + ", " + this.accessor + "/" + this.mMutatorName + "]";
    }
}
