package com.telguarder.features.postCallSpamInfo;

import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.telguarder.C2083R;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.numberLookup.PhoneEvent;
import com.telguarder.features.postCallSpamInfo.SpamCommentDataProvider;
import com.telguarder.features.postCallSpamInfo.SpamCommentProgressData;
import com.telguarder.features.postCallSpamInfo.SpamCommentsViewAdapter;
import com.telguarder.helpers.p022ui.UiHelper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter.class */
public class SpamCommentsViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    public static final int ITEM_TYPE_LIST_AD = 4;
    public static final int ITEM_TYPE_LIST_HEADER = 1;
    public static final int ITEM_TYPE_LIST_ITEM = 3;
    public static final int ITEM_TYPE_LIST_PROGRESS = 2;
    public static final int ITEM_TYPE_SUBMIT = 0;
    private static SpamCommentsViewAdapter mInstance;
    private List<SpamCommentData> list = new ArrayList();
    private boolean mAdNetwrkFirstItem;
    public Advert mAdvert;
    public Advert mAdvertFromCache;
    private AppCompatActivity mHostActivity;
    private PhoneEvent mPhoneEvent;
    public RecyclerView mRecyclerView;
    private SpamCommentHeaderData mSpamCommentHeaderData;
    private SpamCommentProgressData mSpamCommentProgressData;
    private SpamCommentSubmitData mSpamCommentSubmitData;

    /* renamed from: com.telguarder.features.postCallSpamInfo.SpamCommentsViewAdapter$1 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1.class */
    public class C22801 implements SpamCommentDataProvider.SpamCommentDataProviderCallback {
        C22801() {
            SpamCommentsViewAdapter.this = r4;
        }

        public /* synthetic */ void lambda$onAddCommentListItem$1$SpamCommentsViewAdapter$1() {
            SpamCommentsViewAdapter spamCommentsViewAdapter = SpamCommentsViewAdapter.this;
            spamCommentsViewAdapter.notifyItemChanged(spamCommentsViewAdapter.list.size() - 1);
        }

        public /* synthetic */ void lambda$onStartRequest$0$SpamCommentsViewAdapter$1() {
            SpamCommentsViewAdapter.this.notifyDataSetChanged();
        }

        @Override // com.telguarder.features.postCallSpamInfo.SpamCommentDataProvider.SpamCommentDataProviderCallback
        public void onAddAdvertItem() {
            if (SpamCommentsViewAdapter.this.mAdvert != null) {
                if (SpamCommentsViewAdapter.this.mAdNetwrkFirstItem) {
                    SpamCommentsViewAdapter.this.list.add(new SpamCommentAdData(SpamCommentsViewAdapter.this.mHostActivity, SpamCommentsViewAdapter.this.mAdvert));
                    SpamCommentsViewAdapter.this.mAdNetwrkFirstItem = false;
                } else if (SpamCommentsViewAdapter.this.mAdvert.backupNetworkAvailable()) {
                    SpamCommentsViewAdapter spamCommentsViewAdapter = SpamCommentsViewAdapter.this;
                    spamCommentsViewAdapter.mAdvert = spamCommentsViewAdapter.mAdvert.getAdvertForBackupNetwork();
                    SpamCommentsViewAdapter.this.list.add(new SpamCommentAdData(SpamCommentsViewAdapter.this.mHostActivity, SpamCommentsViewAdapter.this.mAdvert));
                } else {
                    SpamCommentsViewAdapter spamCommentsViewAdapter2 = SpamCommentsViewAdapter.this;
                    spamCommentsViewAdapter2.mAdvert = spamCommentsViewAdapter2.mAdvertFromCache;
                    SpamCommentsViewAdapter.this.list.add(new SpamCommentAdData(SpamCommentsViewAdapter.this.mHostActivity, SpamCommentsViewAdapter.this.mAdvert));
                }
            }
        }

        @Override // com.telguarder.features.postCallSpamInfo.SpamCommentDataProvider.SpamCommentDataProviderCallback
        public void onAddCommentListItem(String str, String str2) {
            SpamCommentsViewAdapter.this.list.remove(SpamCommentsViewAdapter.this.getSpamCommentProgressData());
            SpamCommentsViewAdapter.this.list.add(new SpamCommentListItemData(str, str2));
            if (SpamCommentsViewAdapter.this.mHostActivity != null) {
                SpamCommentsViewAdapter.this.mHostActivity.runOnUiThread(new Runnable() { // from class: com.telguarder.features.postCallSpamInfo._$$Lambda$SpamCommentsViewAdapter$1$juvBQsCqVNd_qvaXd0rJ0xC4Yc0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SpamCommentsViewAdapter.C22801.this.lambda$onAddCommentListItem$1$SpamCommentsViewAdapter$1();
                    }
                });
            }
        }

        @Override // com.telguarder.features.postCallSpamInfo.SpamCommentDataProvider.SpamCommentDataProviderCallback
        public void onEndRequest() {
            if (SpamCommentsViewAdapter.this.list.contains(SpamCommentsViewAdapter.this.getSpamCommentProgressData())) {
                SpamCommentsViewAdapter.this.getSpamCommentProgressData().mProgressState = SpamCommentProgressData.ProgressState.NO_COMMENTS_FOUND;
                SpamCommentsViewAdapter.this.list.remove(SpamCommentsViewAdapter.this.getSpamCommentProgressData());
                SpamCommentsViewAdapter.this.list.remove(SpamCommentsViewAdapter.this.getSpamCommentHeaderData());
                SpamCommentsViewAdapter.this.notifyDataSetChanged();
            }
        }

        @Override // com.telguarder.features.postCallSpamInfo.SpamCommentDataProvider.SpamCommentDataProviderCallback
        public void onStartRequest() {
            SpamCommentsViewAdapter.this.getSpamCommentHeaderData().headerTextColor = UiHelper.getColorWrapper(SpamCommentsViewAdapter.this.mHostActivity, SpamCommentsViewAdapter.this.mPhoneEvent.isSpamCommunityOrange() ? 2131034393 : 2131034392);
            SpamCommentsViewAdapter.this.list.add(SpamCommentsViewAdapter.this.getSpamCommentHeaderData());
            SpamCommentsViewAdapter.this.getSpamCommentProgressData().mProgressState = SpamCommentsViewAdapter.this.mPhoneEvent.isSpamCommunityOrange() ? SpamCommentProgressData.ProgressState.ORANGE_REQUEST_IN_PROGRESS : SpamCommentProgressData.ProgressState.RED_REQUEST_IN_PROGRESS;
            SpamCommentsViewAdapter.this.list.add(SpamCommentsViewAdapter.this.getSpamCommentProgressData());
            if (SpamCommentsViewAdapter.this.mHostActivity != null) {
                SpamCommentsViewAdapter.this.mHostActivity.runOnUiThread(new Runnable() { // from class: com.telguarder.features.postCallSpamInfo._$$Lambda$SpamCommentsViewAdapter$1$PGOyEBYO05WblASY8Ygl5CpjXDo
                    @Override // java.lang.Runnable
                    public final void run() {
                        SpamCommentsViewAdapter.C22801.this.lambda$onStartRequest$0$SpamCommentsViewAdapter$1();
                    }
                });
            }
        }
    }

    public SpamCommentsViewAdapter(AppCompatActivity appCompatActivity, PhoneEvent phoneEvent) {
        this.mHostActivity = appCompatActivity;
        this.mPhoneEvent = phoneEvent;
        Advert listbannerAdvertFromCache = AdvertManager.getInstance().getListbannerAdvertFromCache();
        this.mAdvertFromCache = listbannerAdvertFromCache;
        this.mAdvert = listbannerAdvertFromCache;
        initData(false);
        mInstance = this;
    }

    private void addListItem(SpamCommentData spamCommentData) {
        this.list.add(spamCommentData);
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.telguarder.features.postCallSpamInfo._$$Lambda$SpamCommentsViewAdapter$JWiBfbZAdaZeS_VhuCXne4AiVs0
            @Override // java.lang.Runnable
            public final void run() {
                SpamCommentsViewAdapter.this.lambda$addListItem$1$SpamCommentsViewAdapter();
            }
        });
    }

    public static SpamCommentsViewAdapter getInstance() {
        return mInstance;
    }

    private void insertListItem(final int i, SpamCommentData spamCommentData) {
        this.list.add(i, spamCommentData);
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.telguarder.features.postCallSpamInfo._$$Lambda$SpamCommentsViewAdapter$mI3ko0UOdwFUvl_fGidnI1F6a48
            @Override // java.lang.Runnable
            public final void run() {
                SpamCommentsViewAdapter.this.lambda$insertListItem$2$SpamCommentsViewAdapter(i);
            }
        });
    }

    public static boolean isInstantiated() {
        return mInstance != null;
    }

    public void addOwnCommentToTheList(String str, String str2) {
        remove(getSpamCommentSubmitData());
        int indexOf = this.list.indexOf(getSpamCommentHeaderData());
        if (indexOf >= 0) {
            insertListItem(indexOf + 1, new SpamCommentListItemData(str, str2));
            return;
        }
        getSpamCommentHeaderData().headerTextColor = UiHelper.getColorWrapper(this.mHostActivity, this.mPhoneEvent.isSpamCommunityOrange() ? 2131034393 : 2131034392);
        insertListItem(0, getSpamCommentHeaderData());
        insertListItem(1, new SpamCommentListItemData(str, str2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        List<SpamCommentData> list = this.list;
        if (list == null || list.isEmpty() || i > this.list.size()) {
            return -1;
        }
        return this.list.get(i).getItemType();
    }

    public SpamCommentHeaderData getSpamCommentHeaderData() {
        if (this.mSpamCommentHeaderData == null) {
            this.mSpamCommentHeaderData = new SpamCommentHeaderData();
        }
        return this.mSpamCommentHeaderData;
    }

    public SpamCommentProgressData getSpamCommentProgressData() {
        if (this.mSpamCommentProgressData == null) {
            this.mSpamCommentProgressData = new SpamCommentProgressData();
        }
        return this.mSpamCommentProgressData;
    }

    public SpamCommentSubmitData getSpamCommentSubmitData() {
        if (this.mSpamCommentSubmitData == null) {
            this.mSpamCommentSubmitData = new SpamCommentSubmitData(this.mPhoneEvent);
        }
        return this.mSpamCommentSubmitData;
    }

    public void initData(final boolean z) {
        this.mAdNetwrkFirstItem = true;
        new Thread(new Runnable() { // from class: com.telguarder.features.postCallSpamInfo._$$Lambda$SpamCommentsViewAdapter$s_6mLIbxZhw7RkHB21TYgIGEB_U
            @Override // java.lang.Runnable
            public final void run() {
                SpamCommentsViewAdapter.this.lambda$initData$3$SpamCommentsViewAdapter(z);
            }
        }).start();
    }

    public /* synthetic */ void lambda$addListItem$1$SpamCommentsViewAdapter() {
        notifyItemInserted(this.list.size() == 0 ? 0 : this.list.size() - 1);
    }

    public /* synthetic */ void lambda$initData$3$SpamCommentsViewAdapter(boolean z) {
        this.list.clear();
        this.list.add(getSpamCommentSubmitData());
        SpamCommentDataProvider.getInstance().getData(this.mHostActivity, this.mPhoneEvent.calledPhoneNumber, z, new C22801());
    }

    public /* synthetic */ void lambda$insertListItem$2$SpamCommentsViewAdapter(int i) {
        notifyItemInserted(i);
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$SpamCommentsViewAdapter(RecyclerView.ViewHolder viewHolder, int i) {
        ((SpamCommentAdRowViewHolder) viewHolder).bindData((SpamCommentAdData) this.list.get(i), (ViewGroup) viewHolder.itemView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.mRecyclerView = recyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final RecyclerView.ViewHolder viewHolder, final int i) {
        int itemViewType = getItemViewType(i);
        if (itemViewType == 0) {
            ((SpamCommentSubmitRowViewHolder) viewHolder).bindData((SpamCommentSubmitData) this.list.get(i));
        } else if (itemViewType == 1) {
            ((SpamCommentHeaderRowViewHolder) viewHolder).bindData((SpamCommentHeaderData) this.list.get(i));
        } else if (itemViewType == 2) {
            ((SpamCommentProgressRowViewHolder) viewHolder).bindData((SpamCommentProgressData) this.list.get(i));
        } else if (itemViewType == 3) {
            ((SpamCommentItemRowViewHolder) viewHolder).bindData((SpamCommentListItemData) this.list.get(i));
        } else if (itemViewType != 4) {
        } else {
            viewHolder.setIsRecyclable(false);
            ((SpamCommentAdData) this.list.get(i)).load(new Runnable() { // from class: com.telguarder.features.postCallSpamInfo._$$Lambda$SpamCommentsViewAdapter$oYtmqAKitz725mAvo7FR2vSmKV4
                @Override // java.lang.Runnable
                public final void run() {
                    SpamCommentsViewAdapter.this.lambda$onBindViewHolder$0$SpamCommentsViewAdapter(viewHolder, i);
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i != 0) {
            if (i == 1) {
                return new SpamCommentHeaderRowViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C2083R.layout.spam_comment_list_header_row_layout, viewGroup, false));
            }
            if (i == 2) {
                return new SpamCommentProgressRowViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C2083R.layout.spam_comment_list_progress_row_layout, viewGroup, false));
            }
            if (i == 3) {
                return new SpamCommentItemRowViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C2083R.layout.spam_comment_list_item_row_layout, viewGroup, false));
            }
            if (i == 4) {
                return new SpamCommentAdRowViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C2083R.layout.spam_comment_list_ad_row_layout, viewGroup, false));
            }
            return null;
        }
        return new SpamCommentSubmitRowViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C2083R.layout.spam_comment_submit_row_layout, viewGroup, false));
    }

    public void onDestroy() {
        List<SpamCommentData> list = this.list;
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            for (SpamCommentData spamCommentData : this.list) {
                if (spamCommentData.getItemType() == 4) {
                    ((SpamCommentAdData) spamCommentData).onDestroy();
                }
            }
        } catch (Exception e) {
        }
    }

    public void onPause() {
        List<SpamCommentData> list = this.list;
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            for (SpamCommentData spamCommentData : this.list) {
                if (spamCommentData.getItemType() == 4) {
                    ((SpamCommentAdData) spamCommentData).onPause();
                }
            }
        } catch (Exception e) {
        }
    }

    public void onResume() {
        List<SpamCommentData> list = this.list;
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            for (SpamCommentData spamCommentData : this.list) {
                if (spamCommentData.getItemType() == 4) {
                    ((SpamCommentAdData) spamCommentData).onResume();
                }
            }
        } catch (Exception e) {
        }
    }

    public void onStop() {
        List<SpamCommentData> list = this.list;
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            for (SpamCommentData spamCommentData : this.list) {
                if (spamCommentData.getItemType() == 4) {
                    ((SpamCommentAdData) spamCommentData).onStop();
                }
            }
        } catch (Exception e) {
        }
    }

    public void refresh(SpamCommentData spamCommentData) {
        int indexOf = this.list.indexOf(spamCommentData);
        if (indexOf >= 0) {
            notifyItemChanged(indexOf);
        }
    }

    public void remove(SpamCommentData spamCommentData) {
        int indexOf = this.list.indexOf(spamCommentData);
        if (indexOf >= 0) {
            this.list.remove(indexOf);
            notifyItemRemoved(indexOf);
        }
    }
}
