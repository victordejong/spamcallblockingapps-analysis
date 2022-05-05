package com.mikepenz.aboutlibraries;

import com.mikepenz.fastadapter.adapters.ItemAdapter;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/LibTaskCallback.class */
public interface LibTaskCallback extends Serializable {
    void onLibTaskFinished(ItemAdapter itemAdapter);

    void onLibTaskStarted();
}
