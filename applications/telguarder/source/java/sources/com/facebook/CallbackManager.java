package com.facebook;

import android.content.Intent;
import com.facebook.internal.CallbackManagerImpl;
/* loaded from: classes-dex2jar.jar:com/facebook/CallbackManager.class */
public interface CallbackManager {

    /* loaded from: classes-dex2jar.jar:com/facebook/CallbackManager$Factory.class */
    public static class Factory {
        public static CallbackManager create() {
            return new CallbackManagerImpl();
        }
    }

    boolean onActivityResult(int i, int i2, Intent intent);
}
