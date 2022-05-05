package com.google.firebase.appindexing.builders;

import android.support.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/PostalAddressBuilder.class */
public final class PostalAddressBuilder extends IndexableBuilder<PostalAddressBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public PostalAddressBuilder() {
        super("PostalAddress");
    }

    public final PostalAddressBuilder setAddressCountry(@NonNull String str) {
        return put("addressCountry", str);
    }

    public final PostalAddressBuilder setAddressLocality(@NonNull String str) {
        return put("addressLocality", str);
    }

    public final PostalAddressBuilder setPostalCode(@NonNull String str) {
        return put("postalCode", str);
    }

    public final PostalAddressBuilder setStreetAddress(@NonNull String str) {
        return put("streetAddress", str);
    }
}
