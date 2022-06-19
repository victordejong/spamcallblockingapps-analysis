package com.callapp.contacts.activity.select;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseArrayAdapter;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ContactItemView;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/BasePersonAdapter.class */
public abstract class BasePersonAdapter extends BaseArrayAdapter<PersonData> {

    /* renamed from: a */
    private ItemSelectListener f24051a;

    /* renamed from: b */
    private int f24052b;

    /* renamed from: c */
    private LayoutInflater f24053c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener.class */
    public interface ItemSelectListener {
        /* renamed from: a */
        void mo29673a(PersonData personData);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder.class */
    public final class ViewHolder {

        /* renamed from: a */
        protected int f24056a;

        /* renamed from: b */
        protected String f24057b;

        /* renamed from: c */
        protected String f24058c;

        /* renamed from: d */
        protected int f24059d;

        /* renamed from: e */
        protected String f24060e;

        /* renamed from: f */
        protected RemoteAccountHelper f24061f;

        /* renamed from: g */
        protected ProfilePictureView f24062g;

        /* renamed from: h */
        protected ContactItemView f24063h;

        protected ViewHolder() {
            BasePersonAdapter.this = r4;
        }

        /* renamed from: a */
        public final void m29703a(String str) {
            RemoteAccountHelper remoteAccountHelper;
            this.f24058c = str;
            if (!StringUtils.m26045b((CharSequence) str) || ((remoteAccountHelper = this.f24061f) != null && remoteAccountHelper.mo29105a(str))) {
                this.f24062g.m26688a();
                return;
            }
            ProfilePictureView profilePictureView = this.f24062g;
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(str);
            glideRequestBuilder.f28244j = true;
            glideRequestBuilder.f28246l = true;
            profilePictureView.m26684a(glideRequestBuilder);
        }
    }

    public BasePersonAdapter(List<PersonData> list, ItemSelectListener itemSelectListener) {
        this(list, itemSelectListener, -1);
    }

    public BasePersonAdapter(List<PersonData> list, ItemSelectListener itemSelectListener, int i) {
        super(list);
        this.f24053c = LayoutInflater.from(CallAppApplication.get());
        this.f24051a = itemSelectListener;
        this.f24052b = i;
        if (list == null || i >= list.size() || !m29705a()) {
            return;
        }
        list.add(i, new PersonData(0, null, null, null, null));
    }

    /* renamed from: a */
    private boolean m29705a() {
        return this.f24052b != -1;
    }

    @Override // com.callapp.contacts.activity.base.BaseArrayAdapter
    /* renamed from: a */
    public View mo28016a(View view, int i) {
        final ViewHolder viewHolder = new ViewHolder();
        viewHolder.f24063h = (ContactItemView) view.findViewById(2131362441);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.callapp.contacts.activity.select.BasePersonAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                BasePersonAdapter.this.f24051a.mo29673a((PersonData) BasePersonAdapter.this.getItem(viewHolder.f24059d));
            }
        };
        viewHolder.f24063h.setOnItemClickListener(onClickListener);
        viewHolder.f24063h.setOnItemLongClickListener(null);
        viewHolder.f24063h.setOnProfileClickListener(onClickListener);
        viewHolder.f24063h.setSecondRowTextColor(ThemeUtils.getColor(2131100108));
        viewHolder.f24062g = (ProfilePictureView) view.findViewById(2131363565);
        view.setBackgroundColor(ThemeUtils.getColor(2131099686));
        view.setTag(viewHolder);
        return view;
    }

    /* renamed from: a */
    public void mo28015a(View view, int i, PersonData personData) {
        ViewHolder viewHolder = (ViewHolder) view.getTag();
        viewHolder.f24059d = i;
        viewHolder.f24056a = personData.getType();
        viewHolder.f24057b = personData.getId();
        viewHolder.f24060e = personData.getPublicProfileUrl();
        viewHolder.f24062g.setText(StringUtils.m26020j(StringUtils.m26010r(personData.getName())));
        viewHolder.f24063h.setFirstRowText(StringUtils.m26020j(personData.getName()));
        viewHolder.f24063h.setSecondRowText(StringUtils.m26020j(personData.getHeadline()));
        DataSource dataSource = DataSource.getDataSource(personData.getType());
        if (dataSource != null) {
            viewHolder.f24061f = RemoteAccountHelper.m29244a(dataSource);
        }
        viewHolder.m29703a(personData.getImageUrl());
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return i == this.f24052b ? 1 : 0;
    }

    @Override // com.callapp.contacts.activity.base.BaseArrayAdapter
    public int getLayoutResourceId(int i) {
        return 2131558761;
    }

    @Override // com.callapp.contacts.activity.base.BaseArrayAdapter, android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!m29705a() || getItemViewType(i) != 1) {
            return super.getView(i, view, viewGroup);
        }
        View view2 = view;
        if (view == null) {
            view2 = this.f24053c.inflate(2131558766, viewGroup, false);
            TextView textView = (TextView) view2.findViewById(2131363210);
            textView.setTextColor(ThemeUtils.getColor(2131099784));
            textView.setText(2131887367);
            view2.findViewById(2131362611).setBackgroundColor(ThemeUtils.getColor(2131099891));
        }
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.f24052b == -1 ? 1 : 2;
    }

    public void setSeperatorPosition(int i) {
        this.f24052b = i;
    }
}
