package io.bidmachine.utils;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/utils/ViewHelper.class */
public class ViewHelper {
    public static boolean belongTo(ViewGroup viewGroup, View view) {
        ViewParent parent = view.getParent();
        if (!(parent instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup2 = (ViewGroup) parent;
        return viewGroup2.equals(viewGroup) || belongTo(viewGroup, viewGroup2);
    }
}
