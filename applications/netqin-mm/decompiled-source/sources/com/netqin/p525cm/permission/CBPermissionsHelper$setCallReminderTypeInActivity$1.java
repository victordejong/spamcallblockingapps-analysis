package com.netqin.p525cm.permission;

import androidx.fragment.app.FragmentActivity;
import java.util.Arrays;
import kotlin.jvm.internal.Lambda;
import p131c.p157c.p158a.p159a.p160a.C2454a;
import p131c.p431l.p432a.p454d.C6799a;
import p131c.p431l.p432a.p468n.C6854m;
import p573f.C9946p;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p591b.AbstractC10035p;
/* renamed from: com.netqin.cm.permission.CBPermissionsHelper$setCallReminderTypeInActivity$1 */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/permission/CBPermissionsHelper$setCallReminderTypeInActivity$1.class */
public final class CBPermissionsHelper$setCallReminderTypeInActivity$1 extends Lambda implements AbstractC10035p<Integer, Boolean, C9946p> {
    public final /* synthetic */ FragmentActivity $activity;
    public final /* synthetic */ AbstractC10031l $callback;
    public final /* synthetic */ int $type;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CBPermissionsHelper$setCallReminderTypeInActivity$1(int i, FragmentActivity fragmentActivity, AbstractC10031l lVar) {
        super(2);
        this.$type = i;
        this.$activity = fragmentActivity;
        this.$callback = lVar;
    }

    @Override // p573f.p590w.p591b.AbstractC10035p
    public /* bridge */ /* synthetic */ C9946p invoke(Integer num, Boolean bool) {
        invoke(num.intValue(), bool.booleanValue());
        return C9946p.f37137a;
    }

    public final void invoke(int i, boolean z) {
        String[] strArr;
        C6799a.m19766a(i != 0 ? 2 : this.$type);
        if (i == -2) {
            C6854m.m19556b("PHONE_PERMISSION_DENIED_FOREVER", true);
        } else if (i == 0 && z) {
            FragmentActivity fragmentActivity = this.$activity;
            CBPermissionsHelper cBPermissionsHelper = CBPermissionsHelper.f35657d;
            strArr = CBPermissionsHelper.f35655b;
            C2454a.m29726a(fragmentActivity, (String[]) Arrays.copyOf(strArr, strArr.length), null, 2, null);
        }
        AbstractC10031l lVar = this.$callback;
        if (lVar != null) {
            C9946p pVar = (C9946p) lVar.invoke(Integer.valueOf(i));
        }
    }
}
