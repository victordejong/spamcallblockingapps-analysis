package com.tmobile.tmoid.helperlib.impl;

import android.os.Environment;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/impl/Constants.class */
public class Constants {
    static {
        String str = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "iam-log.txt";
    }
}
