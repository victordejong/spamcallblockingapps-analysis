package com.callapp.contacts.manager.permission;

import androidx.core.app.a;
import androidx.core.content.b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Arrays;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/permission/PermissionManager.class */
public class PermissionManager implements ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    public OnCorePermissionGrantedCallback f15116a;

    /* renamed from: b  reason: collision with root package name */
    public Runnable f15117b;

    /* renamed from: c  reason: collision with root package name */
    public Runnable f15118c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/permission/PermissionManager$OnCorePermissionGrantedCallback.class */
    public interface OnCorePermissionGrantedCallback {
        void onCorePermissionsGranted(String[] strArr, int[] iArr);
    }

    /* JADX WARN: Init of enum CORE_PERMISSIONS can be incorrect */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/permission/PermissionManager$PermissionGroup.class */
    public enum PermissionGroup {
        CONTACTS(new String[]{"android.permission.READ_CONTACTS", "android.permission.WRITE_CONTACTS", "android.permission.GET_ACCOUNTS"}),
        PHONE(new String[]{"android.permission.READ_PHONE_STATE", "android.permission.CALL_PHONE", "android.permission.PROCESS_OUTGOING_CALLS"}),
        CALL_LOG(new String[]{"android.permission.READ_CALL_LOG", "android.permission.WRITE_CALL_LOG"}),
        STORAGE(new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}),
        LOCATION(new String[]{"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"}),
        SMS(new String[]{"android.permission.READ_SMS", "android.permission.SEND_SMS", "android.permission.RECEIVE_SMS"}),
        MICROPHONE(new String[]{"android.permission.RECORD_AUDIO"}),
        CALENDAR(new String[]{"android.permission.READ_CALENDAR", "android.permission.WRITE_CALENDAR"}),
        CORE_PERMISSIONS(r0, r0, r0, r0);
        
        private final String[] permissions;

        static {
            PermissionGroup permissionGroup = CONTACTS;
            PermissionGroup permissionGroup2 = PHONE;
            PermissionGroup permissionGroup3 = CALL_LOG;
            PermissionGroup permissionGroup4 = STORAGE;
        }

        PermissionGroup(PermissionGroup... permissionGroupArr) {
            ArrayList arrayList = new ArrayList();
            for (PermissionGroup permissionGroup : permissionGroupArr) {
                arrayList.addAll(Arrays.asList(permissionGroup.permissions));
            }
            this.permissions = (String[]) CollectionUtils.a(String.class, arrayList);
        }

        PermissionGroup(String[] strArr) {
            this.permissions = strArr;
        }

        public final boolean arePermissionsGranted() {
            for (String str : this.permissions) {
                if (b.a(CallAppApplication.get(), str) != 0) {
                    return false;
                }
            }
            return true;
        }
    }

    public static boolean a() {
        return PermissionGroup.CORE_PERMISSIONS.arePermissionsGranted();
    }

    public static boolean a(String str) {
        return b.a(CallAppApplication.get(), str) == 0;
    }

    public static PermissionManager get() {
        return Singletons.get().getPermissionManager();
    }

    public final void a(BaseActivity baseActivity, OnCorePermissionGrantedCallback onCorePermissionGrantedCallback, Runnable runnable) {
        this.f15116a = onCorePermissionGrantedCallback;
        this.f15118c = runnable;
        a.a(baseActivity, (String[]) CollectionUtils.a(String.class, Arrays.asList(PermissionGroup.CORE_PERMISSIONS.permissions)), 12345);
    }

    public final void a(BaseActivity baseActivity, Runnable runnable, Runnable runnable2, PermissionGroup... permissionGroupArr) {
        this.f15117b = runnable;
        this.f15118c = runnable2;
        ArrayList arrayList = new ArrayList();
        for (PermissionGroup permissionGroup : permissionGroupArr) {
            arrayList.addAll(Arrays.asList(permissionGroup.permissions));
        }
        a.a(baseActivity, (String[]) CollectionUtils.a(String.class, arrayList), 12345);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    public String getPermissionsString() {
        PermissionGroup[] values;
        StringBuilder sb = new StringBuilder();
        for (PermissionGroup permissionGroup : PermissionGroup.values()) {
            sb.append("Name: ");
            sb.append(permissionGroup.name().toLowerCase());
            sb.append(" Granted: ");
            sb.append(permissionGroup.arePermissionsGranted());
            sb.append(StringUtils.LF);
        }
        return sb.toString();
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
