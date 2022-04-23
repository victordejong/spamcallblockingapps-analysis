package com.google.firebase.appindexing.builders;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.appindexing.Action;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/AssistActionBuilder.class */
public final class AssistActionBuilder extends Action.Builder {
    private String zzeq;

    public AssistActionBuilder() {
        super("AssistAction");
    }

    @Override // com.google.firebase.appindexing.Action.Builder
    public final Action build() {
        Preconditions.m14522l(this.zzeq, "setActionToken is required before calling build().");
        Preconditions.m14522l(zzy(), "setActionStatus is required before calling build().");
        put("actionToken", this.zzeq);
        if (getName() == null) {
            setName("AssistAction");
        }
        if (getUrl() == null) {
            String valueOf = String.valueOf(this.zzeq);
            setUrl(valueOf.length() != 0 ? "https://developers.google.com/actions?invocation=".concat(valueOf) : new String("https://developers.google.com/actions?invocation="));
        }
        return super.build();
    }

    public final AssistActionBuilder setActionToken(@NonNull String str) {
        Preconditions.m14523k(str);
        this.zzeq = str;
        return this;
    }
}
