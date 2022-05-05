package com.mikepenz.aboutlibraries.util;

import android.os.Parcel;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/util/Colors.class */
public class Colors implements Serializable {
    public int appBarColor;
    public int statusBarColor;

    public Colors(int i, int i2) {
        this.appBarColor = i;
        this.statusBarColor = i2;
    }

    private Colors(Parcel parcel) {
        this.appBarColor = parcel.readInt();
        this.statusBarColor = parcel.readInt();
    }
}
