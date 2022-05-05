package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.data.model.helper.MessageRealm;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.util.NotificationUtil;
import io.realm.Realm;
/* renamed from: com.privacystar.core.ui.debug.actions.TestNotificationMessage */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestNotificationMessage.class */
public class TestNotificationMessage extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Message Notification";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            MessageRealm.storeMessage(defaultInstance, "14", "3C68313E596F757220526563656E742043616C6C20436F6D706C61696E74203132333435363C2F68313E2020200D0A3C703E4261736564206F6E2074686520696E666F726D6174696F6E2070726F766964656420696E20796F757220726563656E742063616C6C20636F6D706C61696E7420616761696E73742061207265706F72746564207363616D6D65722C2077652077616E7420746F206D616B65207375726520796F752074616B652074686520726967687420737465707320746F2070726F7465637420796F757220706572736F6E616C20696E666F726D6174696F6E2E3C2F703E20202020200D0A3C703E576527726520706172746E65726564207769746820746865204964656E74697479205468656674205265736F757263652043656E7465722C2061206E6F6E2D70726F666974206F7267616E697A6174696F6E20746861742070726F7669646573206672656520696E666F726D6174696F6E20616E6420636F756E73656C696E67206F6E2070726F74656374696E6720796F7572206964656E7469747920286E6576657220616E7920636F737420746F20796F75292E205461702062656C6F7720746F2074616C6B20746F20736F6D656F6E65206E6F77206F722063616C6C203838382D3430302D35353330207768656E65766572206973206265737420666F7220796F752E3C2F703E0D0A3C627574746F6E20636C6173733D22627574746F6E20627574746F6E2D706F73697469766520627574746F6E2D66756C6C22206F6E2D7461703D226D6573736167654374726C2E63726561746543616C6C282738383834303035353330272C202763726561746543616C6C3A3838383430303533333027292220617269612D6C6162656C3D2243414C4C204E4F5720464F5220465245452048454C50223E43414C4C204E4F5720464F5220465245452048454C503C2F627574746F6E3E", "Your Recent Report", "What's Next!");
            NotificationUtil.showPushMessageNotification(context, "14", "Your Recent Report", "What's Next!");
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }
}
