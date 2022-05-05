package com.google.firebase.appindexing.builders;

import android.support.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/PlaceBuilder.class */
public final class PlaceBuilder extends IndexableBuilder<PlaceBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public PlaceBuilder() {
        super("Place");
    }

    public final PlaceBuilder setGeo(@NonNull GeoShapeBuilder geoShapeBuilder) {
        return put("geo", geoShapeBuilder);
    }
}
