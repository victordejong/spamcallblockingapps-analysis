package com.google.firebase.appindexing.builders;

import androidx.annotation.NonNull;
import com.google.firebase.appindexing.Action;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/Actions.class */
public final class Actions {
    public static Action newView(@NonNull String str, @NonNull String str2) {
        return new Action.Builder(Action.Builder.VIEW_ACTION).setObject(str, str2).build();
    }
}
