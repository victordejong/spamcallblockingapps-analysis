package com.google.firebase.appindexing.builders;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/GeoShapeBuilder.class */
public final class GeoShapeBuilder extends IndexableBuilder<GeoShapeBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public GeoShapeBuilder() {
        super("GeoShape");
    }

    @Deprecated
    public final GeoShapeBuilder setBox(@NonNull String str) {
        return put("box", str);
    }

    public final GeoShapeBuilder setBox(@NonNull String... strArr) {
        return put("box", strArr);
    }
}
