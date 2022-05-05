package com.tmobile.services.nameid.utility;

import android.content.Context;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.Contact;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001B1\u0012\u0006\u0010\u001b\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0004R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\r\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0019\u0010\u0017\u001a\u00020\u00168\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcom/tmobile/services/nameid/utility/CategoryNotificationFormatter;", "Lcom/tmobile/services/nameid/utility/NotificationFormatter;", "", "getLine1", "()Ljava/lang/String;", "getLine2", "getSummary", "Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "action", "Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "getAction", "()Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "", "bucketId", "I", "getBucketId", "()I", "Lcom/tmobile/services/nameid/model/Contact;", "contact", "Lcom/tmobile/services/nameid/model/Contact;", "getContact", "()Lcom/tmobile/services/nameid/model/Contact;", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "displayNumber", "Ljava/lang/String;", "<init>", "(Ljava/lang/String;Lcom/tmobile/services/nameid/model/CallerSetting$Action;Landroid/content/Context;ILcom/tmobile/services/nameid/model/Contact;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/CategoryNotificationFormatter.class */
public final class CategoryNotificationFormatter implements NotificationFormatter {

    /* renamed from: a */
    private final String f14237a;
    @NotNull

    /* renamed from: b */
    private final CallerSetting.Action f14238b;
    @NotNull

    /* renamed from: c */
    private final Context f14239c;

    /* renamed from: d */
    private final int f14240d;
    @Nullable

    /* renamed from: e */
    private final Contact f14241e;

    public CategoryNotificationFormatter(@NotNull String displayNumber, @NotNull CallerSetting.Action action, @NotNull Context context, int i, @Nullable Contact contact) {
        Intrinsics.m1830e(displayNumber, "displayNumber");
        Intrinsics.m1830e(action, "action");
        Intrinsics.m1830e(context, "context");
        this.f14237a = displayNumber;
        this.f14238b = action;
        this.f14239c = context;
        this.f14240d = i;
        this.f14241e = contact;
    }

    @Override // com.tmobile.services.nameid.utility.NotificationFormatter
    @NotNull
    /* renamed from: a */
    public String mo5379a() {
        String a = NotificationFormatterKt.m5463a(this.f14238b, this.f14239c);
        return this.f14237a + " - " + a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r4 != null) goto L_0x002a;
     */
    @Override // com.tmobile.services.nameid.utility.NotificationFormatter
    @org.jetbrains.annotations.NotNull
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo5378b() {
        /*
            r3 = this;
            r0 = r3
            com.tmobile.services.nameid.model.Contact r0 = r0.f14241e
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0015
            r0 = r4
            java.lang.String r0 = r0.getName()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0015
            goto L_0x002a
        L_0x0015:
            r0 = r3
            android.content.Context r0 = r0.f14239c
            r1 = r3
            int r1 = r1.f14240d
            int r1 = com.tmobile.services.nameid.model.Caller.bucketIdToStringRes(r1)
            java.lang.String r0 = r0.getString(r1)
            r4 = r0
            r0 = r4
            java.lang.String r1 = "context.getString(Caller…tIdToStringRes(bucketId))"
            kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
        L_0x002a:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.utility.CategoryNotificationFormatter.mo5378b():java.lang.String");
    }

    @Override // com.tmobile.services.nameid.utility.NotificationFormatter
    @NotNull
    /* renamed from: c */
    public String mo5377c() {
        String a = NotificationFormatterKt.m5463a(this.f14238b, this.f14239c);
        return mo5378b() + " - " + a;
    }
}
