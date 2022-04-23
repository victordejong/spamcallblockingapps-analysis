package com.callapp.contacts.activity.callappplus;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.callapp.contacts.activity.base.swipeable.BaseSwipeablePagerAdapter;
import com.callapp.contacts.util.Activities;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/CallAppPlusPagerAdapter.class */
public class CallAppPlusPagerAdapter extends BaseSwipeablePagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public static int f11285a;

    public CallAppPlusPagerAdapter(Context context, FragmentManager fragmentManager) {
        super(fragmentManager);
        a(Fragment.instantiate(context, CallAppPlusFragment.class.getName()), Activities.getString(2131886979));
        a(Fragment.instantiate(context, CallAppPlusStarredFragment.class.getName()), Activities.getString(2131887672));
    }
}
