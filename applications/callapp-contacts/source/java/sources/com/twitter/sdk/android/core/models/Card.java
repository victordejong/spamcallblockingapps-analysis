package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.AbstractC15952b;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/Card.class */
public class Card {
    @AbstractC15952b(m7988a = "binding_values")
    public final BindingValues bindingValues;
    @AbstractC15952b(m7988a = "name")
    public final String name;

    public Card(BindingValues bindingValues, String str) {
        this.bindingValues = bindingValues;
        this.name = str;
    }
}
