package com.tmobile.services.nameid.model.activity;

import android.content.Context;
import androidx.annotation.StringRes;
import com.tmobile.services.nameid.model.Contact;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/activity/ActivityDisplayable.class */
public interface ActivityDisplayable {
    int getCategory();

    @StringRes
    int getCategoryRes();

    Contact getContact();

    String getDisplayCategory(Context context);

    String getDisplayName();

    String getDisplayNumber(String str);

    String getE164Number();

    String getId();

    String getPrimaryDisplayInfo(Context context);

    String getSecondaryDisplayInfo(Context context);

    boolean hasCallerName();

    boolean hasContact();

    boolean isPrivate();

    boolean isScammer();

    boolean shouldHighlight();
}
