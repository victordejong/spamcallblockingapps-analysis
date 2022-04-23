package com.criteo.publisher;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/p.class */
public class p extends IllegalStateException {
    public p(String str) {
        super(str + "\nDid you properly initialize the Criteo SDK ?\nPlease follow this step: https://publisherdocs.criteotilt.com/app/android/standalone/#sdk-initialization\n");
    }
}
