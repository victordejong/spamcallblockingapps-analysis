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

    /* renamed from: d */
    private static final SparseArray<AbstractC9334a> f39928d = new SparseArray<>();

    /* renamed from: e */
    private boolean f39929e;

    /* renamed from: a */
    public static PermissionFragment m1070a(ArrayList<String> arrayList, boolean z) {
        int nextInt;
        PermissionFragment permissionFragment = new PermissionFragment();
        Bundle bundle = new Bundle();
        do {
            nextInt = new Random().nextInt(255);
        } while (f39928d.get(nextInt) != null);
        bundle.putInt("request_code", nextInt);
        bundle.putStringArrayList("permission_group", arrayList);
        bundle.putBoolean("request_constant", z);
        permissionFragment.setArguments(bundle);
        return permissionFragment;
    }

    /* renamed from: b */
    public void m1069b(Activity activity, AbstractC9334a abstractC9334a) {
        f39928d.put(getArguments().getInt("request_code"), abstractC9334a);
        activity.getFragmentManager().beginTransaction().add(this, activity.getClass().getName()).commit();
    }

    /* renamed from: c */
    public void m1068c() {
        if (C9336c.m1047k()) {
            ArrayList<String> stringArrayList = getArguments().getStringArrayList("permission_group");
            requestPermissions((String[]) stringArrayList.toArray(new String[stringArrayList.size() - 1]), getArguments().getInt("request_code"));
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ArrayList<String> stringArrayList = getArguments().getStringArrayList("permission_group");
        if (stringArrayList == null) {
            return;
        }
        if ((!stringArrayList.contains("android.permission.REQUEST_INSTALL_PACKAGES") || C9336c.m1049i(getActivity())) && (!stringArrayList.contains("android.permission.SYSTEM_ALERT_WINDOW") || C9336c.m1048j(getActivity()))) {
            m1068c();
            return;
        }
        if (stringArrayList.contains("android.permission.REQUEST_INSTALL_PACKAGES") && !C9336c.m1049i(getActivity())) {
            startActivityForResult(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + getActivity().getPackageName())), getArguments().getInt("request_code"));
        }
        if (!stringArrayList.contains("android.permission.SYSTEM_ALERT_WINDOW") || C9336c.m1048j(getActivity())) {
            return;
        }
        startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + getActivity().getPackageName())), getArguments().getInt("request_code"));
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.f39929e || i != getArguments().getInt("request_code")) {
            return;
        }
        this.f39929e = true;
        getActivity().getWindow().getDecorView().postDelayed(this, 500L);
    }

    @Override // android.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        AbstractC9334a abstractC9334a = f39928d.get(i);
        if (abstractC9334a == null) {
            return;
        }
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if ("android.permission.REQUEST_INSTALL_PACKAGES".equals(strArr[i2])) {
                if (C9336c.m1049i(getActivity())) {
                    iArr[i2] = 0;
                } else {
                    iArr[i2] = -1;
                }
            }
            if ("android.permission.SYSTEM_ALERT_WINDOW".equals(strArr[i2])) {
                if (C9336c.m1048j(getActivity())) {
                    iArr[i2] = 0;
                } else {
                    iArr[i2] = -1;
                }
            }
            if ((strArr[i2].equals("android.permission.ANSWER_PHONE_CALLS") || strArr[i2].equals("android.permission.READ_PHONE_NUMBERS")) && !C9336c.m1046l()) {
                iArr[i2] = 0;
            }
        }
        List<String> m1050h = C9336c.m1050h(strArr, iArr);
        if (m1050h.size() == strArr.length) {
            abstractC9334a.mo1066b(m1050h, true);
        } else {
            List<String> m1052f = C9336c.m1052f(strArr, iArr);
            if (getArguments().getBoolean("request_constant") && C9336c.m1045m(getActivity(), m1052f)) {
                m1068c();
                return;
            }
            abstractC9334a.mo1067a(m1052f, C9336c.m1057a(getActivity(), m1052f));
            if (!m1050h.isEmpty()) {
                abstractC9334a.mo1066b(m1050h, false);
            }
        }
        f39928d.remove(i);
        getFragmentManager().beginTransaction().remove(this).commit();
    }

    @Override // java.lang.Runnable
    public void run() {
        m1068c();
    }
}
