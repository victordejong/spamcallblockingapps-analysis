package com.callapp.contacts.activity.select;

import android.view.View;
import com.callapp.contacts.activity.select.BasePersonAdapter;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.util.ViewUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/MutualFriendsAdapter.class */
public class MutualFriendsAdapter extends BasePersonAdapter {
    public MutualFriendsAdapter(List<PersonData> list, BasePersonAdapter.ItemSelectListener itemSelectListener) {
        super(list, itemSelectListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.callapp.contacts.activity.select.BasePersonAdapter
    public final void a(View view, int i, PersonData personData) {
        super.a(view, i, personData);
        BasePersonAdapter.ViewHolder viewHolder = (BasePersonAdapter.ViewHolder) view.getTag();
        viewHolder.g.a(ViewUtils.getDrawable(RemoteAccountHelper.getSocialBadgeResId(personData.getType())));
        viewHolder.g.a(RemoteAccountHelper.getSocialBadgeBgColor(personData.getType()));
    }
}
