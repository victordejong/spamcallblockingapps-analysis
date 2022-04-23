package com.hjq.permissions;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/hjq/permissions/PermissionFragment.class */
public final class PermissionFragment extends Fragment implements Runnable {

    /* renamed from: c */
    private static final SparseArray<AbstractC2683a> f11237c = new SparseArray<>();

    /* renamed from: b */
    private boolean f11238b;

    /* renamed from: a */
    public static PermissionFragment m2178a(ArrayList<String> arrayList, boolean z) {
        int nextInt;
        PermissionFragment permissionFragment = new PermissionFragment();
        Bundle bundle = new Bundle();
        do {
            nextInt = new Random().nextInt(255);
        } while (f11237c.get(nextInt) != null);
        bundle.putInt("request_code", nextInt);
        bundle.putStringArrayList("permission_group", arrayList);
        bundle.putBoolean("request_constant", z);
        permissionFragment.setArguments(bundle);
        return permissionFragment;
    }

    /* renamed from: b */
    public void m2177b(Activity activity, AbstractC2683a aVar) {
        f11237c.put(getArguments().getInt("request_code"), aVar);
        activity.getFragmentManager().beginTransaction().add(this, activity.getClass().getName()).commit();
    }

    /* renamed from: c */
    public void m2176c() {
        if (C2685c.m2155k()) {
            ArrayList<String> stringArrayList = getArguments().getStringArrayList("permission_group");
            requestPermissions((String[]) stringArrayList.toArray(new String[stringArrayList.size() - 1]), getArguments().getInt("request_code"));
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ArrayList<String> stringArrayList = getArguments().getStringArrayList("permission_group");
        if (stringArrayList != null) {
            if ((!stringArrayList.contains("android.permission.REQUEST_INSTALL_PACKAGES") || C2685c.m2157i(getActivity())) && (!stringArrayList.contains("android.permission.SYSTEM_ALERT_WINDOW") || C2685c.m2156j(getActivity()))) {
                m2176c();
                return;
            }
            if (stringArrayList.contains("android.permission.REQUEST_INSTALL_PACKAGES") && !C2685c.m2157i(getActivity())) {
                startActivityForResult(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + getActivity().getPackageName())), getArguments().getInt("request_code"));
            }
            if (stringArrayList.contains("android.permission.SYSTEM_ALERT_WINDOW") && !C2685c.m2156j(getActivity())) {
                startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + getActivity().getPackageName())), getArguments().getInt("request_code"));
            }
        }
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (!this.f11238b && i == getArguments().getInt("request_code")) {
            this.f11238b = true;
            getActivity().getWindow().getDecorView().postDelayed(this, 500L);
        }
    }

    @Override // android.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        AbstractC2683a aVar = f11237c.get(i);
        if (aVar != null) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if ("android.permission.REQUEST_INSTALL_PACKAGES".equals(strArr[i2])) {
                    if (C2685c.m2157i(getActivity())) {
                        iArr[i2] = 0;
                    } else {
                        iArr[i2] = -1;
                    }
                }
                if ("android.permission.SYSTEM_ALERT_WINDOW".equals(strArr[i2])) {
                    if (C2685c.m2156j(getActivity())) {
                        iArr[i2] = 0;
                    } else {
                        iArr[i2] = -1;
                    }
                }
                if ((strArr[i2].equals("android.permission.ANSWER_PHONE_CALLS") || strArr[i2].equals("android.permission.READ_PHONE_NUMBERS")) && !C2685c.m2154l()) {
                    iArr[i2] = 0;
                }
            }
            List<String> h = C2685c.m2158h(strArr, iArr);
            if (h.size() == strArr.length) {
                aVar.m2174b(h, true);
            } else {
                List<String> f = C2685c.m2160f(strArr, iArr);
                if (!getArguments().getBoolean("request_constant") || !C2685c.m2153m(getActivity(), f)) {
                    aVar.m2175a(f, C2685c.m2165a(getActivity(), f));
                    if (!h.isEmpty()) {
                        aVar.m2174b(h, false);
                    }
                } else {
                    m2176c();
                    return;
                }
            }
            f11237c.remove(i);
            getFragmentManager().beginTransaction().remove(this).commit();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        m2176c();
    }
}
