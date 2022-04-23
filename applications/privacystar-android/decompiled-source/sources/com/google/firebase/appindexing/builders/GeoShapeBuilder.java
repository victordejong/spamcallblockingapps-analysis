package com.google.firebase.appindexing.builders;

import android.support.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/GeoShapeBuilder.class */
public final class GeoShapeBuilder extends IndexableBuilder<GeoShapeBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public GeoShapeBuilder() {
        super("GeoShape");
    }

    public final GeoShapeBuilder setBox(@NonNull String str) {
        return put("box", str);
    }
}
