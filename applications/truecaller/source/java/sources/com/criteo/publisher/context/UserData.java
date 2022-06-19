package com.criteo.publisher.context;

import androidx.annotation.Keep;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/context/UserData.class */
public class UserData extends AbstractContextData<UserData> {
    public static final String DEV_USER_ID = "data.devUserId";
    public static final String HASHED_EMAIL = "data.hashedEmail";

    @Override // com.criteo.publisher.context.AbstractContextData
    public boolean equals(Object obj) {
        if (!(obj instanceof UserData)) {
            return false;
        }
        return super.equals(obj);
    }
}
