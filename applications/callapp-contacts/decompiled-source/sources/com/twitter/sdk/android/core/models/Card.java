package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.b;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/Card.class */
public class Card {
    @b(a = "binding_values")
    public final BindingValues bindingValues;
    @b(a = "name")
    public final String name;

    public Card(BindingValues bindingValues, String str) {
        this.bindingValues = bindingValues;
        this.name = str;
    }
}
