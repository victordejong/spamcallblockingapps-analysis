package com.mikepenz.aboutlibraries;

import android.annotation.TargetApi;
import android.os.Bundle;
import com.mikepenz.aboutlibraries.p007ui.LibsFragment;
@TargetApi(11)
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/LibsCompat.class */
public class LibsCompat {
    @TargetApi(11)
    public static LibsFragment fragment(LibsBuilder libsBuilder) {
        Bundle bundle = new Bundle();
        bundle.putSerializable("data", libsBuilder);
        LibsFragment libsFragment = new LibsFragment();
        libsFragment.setArguments(bundle);
        return libsFragment;
    }
}
