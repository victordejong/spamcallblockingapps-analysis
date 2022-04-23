package com.google.firebase.appindexing.builders;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/PersonBuilder.class */
public final class PersonBuilder extends IndexableBuilder<PersonBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public PersonBuilder() {
        super("Person");
    }

    public final PersonBuilder setEmail(@NonNull String str) {
        return put("email", str);
    }

    public final PersonBuilder setIsSelf(@NonNull boolean z) {
        return put("isSelf", z);
    }

    public final PersonBuilder setTelephone(@NonNull String str) {
        return put("telephone", str);
    }
}
