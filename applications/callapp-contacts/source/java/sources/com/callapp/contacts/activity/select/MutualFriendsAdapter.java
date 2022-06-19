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

    @Override // com.callapp.contacts.activity.select.BasePersonAdapter
    /* renamed from: a */
    public final void mo28015a(View view, int i, PersonData personData) {
        super.mo28015a(view, i, personData);
        BasePersonAdapter.ViewHolder viewHolder = (BasePersonAdapter.ViewHolder) view.getTag();
        viewHolder.f24062g.m26685a(ViewUtils.getDrawable(RemoteAccountHelper.getSocialBadgeResId(personData.getType())));
        viewHolder.f24062g.m26687a(RemoteAccountHelper.getSocialBadgeBgColor(personData.getType()));
    }
}
