package com.google.firebase;

import android.content.Context;
import com.google.firebase.platforminfo.LibraryVersionComponent;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/FirebaseCommonRegistrar$$Lambda$1.class */
final /* synthetic */ class FirebaseCommonRegistrar$$Lambda$1 implements LibraryVersionComponent.VersionExtractor {
    private static final FirebaseCommonRegistrar$$Lambda$1 instance = new FirebaseCommonRegistrar$$Lambda$1();

    private FirebaseCommonRegistrar$$Lambda$1() {
    }

    @Override // com.google.firebase.platforminfo.LibraryVersionComponent.VersionExtractor
    public String extract(Object obj) {
        return ((Context) obj).getApplicationInfo();
    }
}
