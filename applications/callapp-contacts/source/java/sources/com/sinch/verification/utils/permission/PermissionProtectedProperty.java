package com.sinch.verification.utils.permission;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.KProperty;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��*\u0004\b��\u0010\u00012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0002B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\t¢\u0006\u0002\u0010\nJ&\u0010\u000b\u001a\u0004\u0018\u00018��2\b\u0010\f\u001a\u0004\u0018\u00010\u00032\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\u000eH\u0096\u0002¢\u0006\u0002\u0010\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, m4298d2 = {"Lcom/sinch/verification/utils/permission/PermissionProtectedProperty;", "T", "Lkotlin/properties/ReadOnlyProperty;", "", "context", "Landroid/content/Context;", "permission", "Lcom/sinch/verification/utils/permission/Permission;", "f", "Lkotlin/Function0;", "(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;Lkotlin/jvm/functions/Function0;)V", "getValue", "thisRef", "property", "Lkotlin/reflect/KProperty;", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;", "utils_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/utils/permission/PermissionProtectedProperty.class */
public final class PermissionProtectedProperty<T> {
    private final Context context;

    /* renamed from: f */
    private final Function0<T> f60704f;
    private final Permission permission;

    /* JADX WARN: Multi-variable type inference failed */
    public PermissionProtectedProperty(Context context, Permission permission, Function0<? extends T> f) {
        C18524p.m3841c(context, "context");
        C18524p.m3841c(permission, "permission");
        C18524p.m3841c(f, "f");
        this.context = context;
        this.permission = permission;
        this.f60704f = f;
    }

    public final T getValue(Object obj, KProperty<?> property) {
        C18524p.m3841c(property, "property");
        return (T) PermissionUtilsKt.runIfPermissionGranted$default(this.context, this.permission, this.f60704f, null, 4, null);
    }
}
