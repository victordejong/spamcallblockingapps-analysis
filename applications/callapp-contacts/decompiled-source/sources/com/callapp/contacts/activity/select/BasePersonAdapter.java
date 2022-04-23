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

    /* renamed from: a  reason: collision with root package name */
    private ItemSelectListener f13550a;

    /* renamed from: b  reason: collision with root package name */
    private int f13551b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f13552c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener.class */
    public interface ItemSelectListener {
        void a(PersonData personData);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/BasePersonAdapter$ViewHolder.class */
    public final class ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        protected int f13555a;

        /* renamed from: b  reason: collision with root package name */
        protected String f13556b;

        /* renamed from: c  reason: collision with root package name */
        protected String f13557c;

        /* renamed from: d  reason: collision with root package name */
        protected int f13558d;
        protected String e;
        protected RemoteAccountHelper f;
        protected ProfilePictureView g;
        protected ContactItemView h;

        protected ViewHolder() {
        }

        public final void a(String str) {
            RemoteAccountHelper remoteAccountHelper;
            this.f13557c = str;
            if (!StringUtils.b((CharSequence) str) || ((remoteAccountHelper = this.f) != null && remoteAccountHelper.a(str))) {
                this.g.a();
                return;
            }
            ProfilePictureView profilePictureView = this.g;
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(str);
            glideRequestBuilder.j = true;
            glideRequestBuilder.l = true;
            profilePictureView.a(glideRequestBuilder);
        }
    }

    public BasePersonAdapter(List<PersonData> list, ItemSelectListener itemSelectListener) {
        this(list, itemSelectListener, -1);
    }

    public BasePersonAdapter(List<PersonData> list, ItemSelectListener itemSelectListener, int i) {
        super(list);
        this.f13552c = LayoutInflater.from(CallAppApplication.get());
        this.f13550a = itemSelectListener;
        this.f13551b = i;
        if (list != null && i < list.size() && a()) {
            list.add(i, new PersonData(0, null, null, null, null));
        }
    }

    private boolean a() {
        return this.f13551b != -1;
    }

    @Override // com.callapp.contacts.activity.base.BaseArrayAdapter
    public View a(View view, int i) {
        final ViewHolder viewHolder = new ViewHolder();
        viewHolder.h = (ContactItemView) view.findViewById(2131362441);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.callapp.contacts.activity.select.BasePersonAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                BasePersonAdapter.this.f13550a.a((PersonData) BasePersonAdapter.this.getItem(viewHolder.f13558d));
            }
        };
        viewHolder.h.setOnItemClickListener(onClickListener);
        viewHolder.h.setOnItemLongClickListener(null);
        viewHolder.h.setOnProfileClickListener(onClickListener);
        viewHolder.h.setSecondRowTextColor(ThemeUtils.getColor(2131100108));
        viewHolder.g = (ProfilePictureView) view.findViewById(2131363565);
        view.setBackgroundColor(ThemeUtils.getColor(2131099686));
        view.setTag(viewHolder);
        return view;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(View view, int i, PersonData personData) {
        ViewHolder viewHolder = (ViewHolder) view.getTag();
        viewHolder.f13558d = i;
        viewHolder.f13555a = personData.getType();
        viewHolder.f13556b = personData.getId();
        viewHolder.e = personData.getPublicProfileUrl();
        viewHolder.g.setText(StringUtils.j(StringUtils.r(personData.getName())));
        viewHolder.h.setFirstRowText(StringUtils.j(personData.getName()));
        viewHolder.h.setSecondRowText(StringUtils.j(personData.getHeadline()));
        DataSource dataSource = DataSource.getDataSource(personData.getType());
        if (dataSource != null) {
            viewHolder.f = RemoteAccountHelper.a(dataSource);
        }
        viewHolder.a(personData.getImageUrl());
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return i == this.f13551b ? 1 : 0;
    }

    @Override // com.callapp.contacts.activity.base.BaseArrayAdapter
    public int getLayoutResourceId(int i) {
        return 2131558761;
    }

    @Override // com.callapp.contacts.activity.base.BaseArrayAdapter, android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!a() || getItemViewType(i) != 1) {
            return super.getView(i, view, viewGroup);
        }
        View view2 = view;
        if (view == null) {
            view2 = this.f13552c.inflate(2131558766, viewGroup, false);
            TextView textView = (TextView) view2.findViewById(2131363210);
            textView.setTextColor(ThemeUtils.getColor(2131099784));
            textView.setText(2131887367);
            view2.findViewById(2131362611).setBackgroundColor(ThemeUtils.getColor(2131099891));
        }
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.f13551b == -1 ? 1 : 2;
    }

    public void setSeperatorPosition(int i) {
        this.f13551b = i;
    }
}
