package com.privacystar.core.p011ui.debug;

import android.os.Bundle;
import com.privacystar.core.p011ui.debug.actions.TestSampleRequest;
/* renamed from: com.privacystar.core.ui.debug.NetworkQueueView */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/NetworkQueueView.class */
public class NetworkQueueView extends DebugViewActivity {
    private DebugAction[] getActionClasses(String str) {
        return new DebugAction[]{new TestSampleRequest()};
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.debug.DebugViewActivity, com.privacystar.core.p011ui.PSActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }
}
