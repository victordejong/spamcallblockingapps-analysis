package com.tenor.android.core.model.impl;

import com.tenor.android.core.util.AbstractListUtils;
import e.m.e.d0.b;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/model/impl/Suggestions.class */
public class Suggestions implements Serializable {
    private static final long serialVersionUID = 5805025178874996139L;
    @b("results")
    private List<String> suggestions;

    public List<String> getSuggestions() {
        return !AbstractListUtils.isEmpty(this.suggestions) ? this.suggestions : Collections.emptyList();
    }
}
