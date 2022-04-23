package com.callapp.contacts.activity.records;

import android.util.Pair;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.callapp.contacts.activity.base.swipeable.BaseSwipeablePagerAdapter;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/RecordsViewPagerAdapter.class */
public class RecordsViewPagerAdapter extends BaseSwipeablePagerAdapter {
    public RecordsViewPagerAdapter(FragmentManager fragmentManager, List<Pair<Fragment, String>> list) {
        super(fragmentManager);
        for (Pair<Fragment, String> pair : list) {
            if (getPages().get(pair.second) == null) {
                a((Fragment) pair.first, (String) pair.second);
            }
        }
    }
}
