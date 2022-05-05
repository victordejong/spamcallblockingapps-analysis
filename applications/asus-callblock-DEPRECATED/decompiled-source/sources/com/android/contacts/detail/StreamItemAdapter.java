package com.android.contacts.detail;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.android.contacts.model.account.a;
import com.android.contacts.util.AsusSnsUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.StreamItemEntry;
import com.android.vcard.VCardConfig;
import com.asus.updatesdk.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/detail/StreamItemAdapter.class */
public class StreamItemAdapter extends BaseAdapter {
    private static final int ITEM_VIEW_TYPE_HEADER = 0;
    private static final int ITEM_VIEW_TYPE_STREAM_ITEM = 1;
    private static final String TAG = StreamItemAdapter.class.getSimpleName();
    private final Context mContext;
    private final LayoutInflater mInflater;
    private final View.OnClickListener mItemClickListener;
    private final View.OnClickListener mPhotoClickListener;
    private final View.OnClickListener mCouponClickListener = new View.OnClickListener() { // from class: com.android.contacts.detail.StreamItemAdapter.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Object tag = view.getTag();
            if (tag instanceof StreamItemEntry) {
                StreamItemEntry streamItemEntry = (StreamItemEntry) tag;
                String content = streamItemEntry.getContent();
                String trackId = streamItemEntry.getTrackId();
                Intent intent = new Intent();
                intent.setAction("android.intent.action.ASUS_LAUNCH_COUPON");
                intent.putExtra("launch_coupon_content_extra", content);
                intent.putExtra("launch_coupon_trackid_extra", trackId);
                intent.putExtra("launch_coupon_isincallui_extra", false);
                intent.addFlags(VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
                ImplicitIntentsUtil.startActivityInAppIfPossible(view.getContext(), intent);
            }
        }
    };
    private List<StreamItemEntry> mStreamItems = new ArrayList();

    public StreamItemAdapter(Context context, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        this.mContext = context;
        this.mItemClickListener = onClickListener;
        this.mPhotoClickListener = onClickListener2;
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int size = this.mStreamItems.size();
        return size == 0 ? 0 : size + 1;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return i == 0 ? null : this.mStreamItems.get(i - 1);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i == 0 ? -1L : i - 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return i == 0 ? 0 : 1;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View createStreamItemView;
        if (i == 0) {
            createStreamItemView = this.mInflater.inflate(2131427694, (ViewGroup) null);
            ((TextView) createStreamItemView.findViewById(R.id.title)).setText(2131756046);
        } else {
            StreamItemEntry streamItemEntry = (StreamItemEntry) getItem(i);
            a a2 = com.android.contacts.model.a.a(this.mContext).a(streamItemEntry.getAccountType(), streamItemEntry.getDataSet());
            createStreamItemView = ContactDetailDisplayUtils.createStreamItemView(this.mInflater, this.mContext, view, streamItemEntry, a2.l() == null ? null : this.mPhotoClickListener);
            View findViewById = createStreamItemView.findViewById(2131297351);
            if (streamItemEntry.isCoupon()) {
                findViewById.setTag(streamItemEntry);
                findViewById.setFocusable(false);
                findViewById.setOnClickListener(this.mCouponClickListener);
                findViewById.setClickable(true);
                findViewById.setEnabled(true);
                createStreamItemView.findViewById(2131297349).setVisibility(8);
            } else if (a2.k() == null || streamItemEntry.getAccountType().startsWith(AsusSnsUtils.SOCIAL_NETWORK_ACCOUNT)) {
                findViewById.setTag(streamItemEntry);
                findViewById.setFocusable(false);
                findViewById.setOnClickListener(null);
                findViewById.setClickable(false);
                findViewById.setEnabled(true);
            } else {
                findViewById.setTag(streamItemEntry);
                findViewById.setFocusable(true);
                findViewById.setOnClickListener(this.mItemClickListener);
                findViewById.setEnabled(true);
            }
        }
        return createStreamItemView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return false;
    }

    public void setStreamItems(List<StreamItemEntry> list) {
        this.mStreamItems = list;
        notifyDataSetChanged();
    }
}
