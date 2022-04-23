package com.callapp.contacts.activity.blocked;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.callapp.contacts.activity.base.swipeable.BaseSwipeablePagerAdapter;
import com.callapp.contacts.util.Activities;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/blocked/BlockedAndSpamPagerAdapter.class */
public class BlockedAndSpamPagerAdapter extends BaseSwipeablePagerAdapter {
    public BlockedAndSpamPagerAdapter(Context context, FragmentManager fragmentManager) {
        super(fragmentManager);
        a(Fragment.instantiate(context, SpamFragment.class.getName()), Activities.getString(2131886359));
        a(Fragment.instantiate(context, BlockedFragment.class.getName()), Activities.getString(2131886358));
    }
}
