package com.tmobile.services.nameid.utility;

import android.content.Context;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.model.CallerSetting;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u001d\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "action", "Landroid/content/Context;", "context", "", "getDispositionString", "(Lcom/tmobile/services/nameid/model/CallerSetting$Action;Landroid/content/Context;)Ljava/lang/String;", "app-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/NotificationFormatterKt.class */
public final class NotificationFormatterKt {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/NotificationFormatterKt$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f14418a;

        static {
            int[] iArr = new int[CallerSetting.Action.values().length];
            f14418a = iArr;
            iArr[CallerSetting.Action.BLOCKED.ordinal()] = 1;
            f14418a[CallerSetting.Action.VOICEMAIL.ordinal()] = 2;
        }
    }

    @NotNull
    /* renamed from: a */
    public static final String m5463a(@NotNull CallerSetting.Action action, @NotNull Context context) {
        Intrinsics.m1830e(action, "action");
        Intrinsics.m1830e(context, "context");
        int i = WhenMappings.f14418a[action.ordinal()];
        String string = context.getString(i != 1 ? i != 2 ? C1517R.string.notification_caller_identified : C1517R.string.notification_caller_voicemail : C1517R.string.notification_caller_blocked);
        Intrinsics.m1831d(string, "context.getString(notificationRes)");
        return string;
    }
}
