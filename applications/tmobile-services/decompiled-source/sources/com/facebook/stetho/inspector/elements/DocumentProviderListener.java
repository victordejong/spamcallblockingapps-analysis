package com.facebook.stetho.inspector.elements;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/DocumentProviderListener.class */
public interface DocumentProviderListener {
    void onAttributeModified(Object obj, String str, String str2);

    void onAttributeRemoved(Object obj, String str);

    void onInspectRequested(Object obj);

    void onPossiblyChanged();
}
