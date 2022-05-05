package com.appsflyer.internal.model.event;

import android.content.Context;
import androidx.annotation.NonNull;
import com.appsflyer.AFEvent;
import com.appsflyer.AFInAppEventType;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/model/event/Validate.class */
public class Validate extends Purchase {
    public Validate(@NonNull Context context) {
        super(AFInAppEventType.PURCHASE, Boolean.TRUE, context);
    }

    @Override // com.appsflyer.AFEvent
    public AFEvent urlString(String str) {
        return super.urlString(addChannel(str));
    }
}
