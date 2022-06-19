package com.telguarder.features.postCallStatistics;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.telguarder.ApplicationConstants;
import com.telguarder.C2083R;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProxy;
import com.telguarder.features.postCallStatistics.CSAdInfoRowViewHolder;
import com.telguarder.features.postCallStatistics.CSAdRowViewHolder;
import com.telguarder.features.postCallStatistics.CSDataProvider;
import com.telguarder.features.postCallStatistics.CSViewAdapter;
import com.telguarder.helpers.analytics.AnalyticsManager;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSViewAdapter.class */
public class CSViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    public static final int ITEM_TYPE_AD = 5;
    public static final int ITEM_TYPE_AD_INFO = 6;
    public static final int ITEM_TYPE_COUNT = 1;
    public static final int ITEM_TYPE_DURATION = 0;
    public static final int ITEM_TYPE_HIST = 4;
    public static final int ITEM_TYPE_HIST_HEADER = 3;
    public static final int ITEM_TYPE_STAT = 2;
    private static CSViewAdapter mInstance;
    private CSAdRowViewHolder.AdHolderCallbackInterface mAdHolderCallbackInterface;
    private CSAdInfoRowViewHolder.AdInfoHolderCallbackInterface mAdInfoHolderCallbackInterface;
    private CSAdData mCSAdData;
    private CSAdInfoData mCSAdInfoData;
    private CSCountData mCSCountData;
    private CSDurData mCSDurData;
    private CSHistHeaderData mCSHistHeaderData;
    private CSStatData mCSStatData;
    private int mCallType;
    private Context mContext;
    private String mPhoneNumber;
    public RecyclerView mRecyclerView;
    private List<CSData> list = new ArrayList();
    private RecyclerView.ViewHolder mAdViewHolder = null;

    /* renamed from: com.telguarder.features.postCallStatistics.CSViewAdapter$1 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSViewAdapter$1.class */
    public class C22861 implements CSDataProvider.CSDataProviderCallback {
        C22861() {
            CSViewAdapter.this = r4;
        }

        @Override // com.telguarder.features.postCallStatistics.CSDataProvider.CSDataProviderCallback
        public void addCallHistoryRow(long j, int i, int i2) {
            if (!CSViewAdapter.this.list.contains(CSViewAdapter.this.getCSHistHeaderData())) {
                CSViewAdapter.this.list.add(CSViewAdapter.this.getCSHistHeaderData());
            }
            CSViewAdapter.this.list.add(new CSHistData(j, i, i2));
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$CSViewAdapter$1$BqhVvkO2vU1vGPIj8kYBIaKy_vs
                @Override // java.lang.Runnable
                public final void run() {
                    CSViewAdapter.C22861.this.lambda$addCallHistoryRow$3$CSViewAdapter$1();
                }
            });
        }

        public /* synthetic */ void lambda$addCallHistoryRow$3$CSViewAdapter$1() {
            CSViewAdapter cSViewAdapter = CSViewAdapter.this;
            cSViewAdapter.notifyItemInserted(cSViewAdapter.list.size() - 1);
        }

        public /* synthetic */ void lambda$updateCount$1$CSViewAdapter$1() {
            CSViewAdapter cSViewAdapter = CSViewAdapter.this;
            cSViewAdapter.notifyItemChanged(cSViewAdapter.list.indexOf(CSViewAdapter.this.getCSCountData()));
        }

        public /* synthetic */ void lambda$updateDailyStat$2$CSViewAdapter$1() {
            CSViewAdapter cSViewAdapter = CSViewAdapter.this;
            cSViewAdapter.notifyItemChanged(cSViewAdapter.list.indexOf(CSViewAdapter.this.getCSStatData()));
        }

        public /* synthetic */ void lambda$updateDuration$0$CSViewAdapter$1() {
            CSViewAdapter cSViewAdapter = CSViewAdapter.this;
            cSViewAdapter.notifyItemChanged(cSViewAdapter.list.indexOf(CSViewAdapter.this.getCSDurData()));
        }

        @Override // com.telguarder.features.postCallStatistics.CSDataProvider.CSDataProviderCallback
        public void updateCount(int i, int i2, int i3) {
            if (i == 0 && i2 == 0 && i3 == 0) {
                CSViewAdapter cSViewAdapter = CSViewAdapter.this;
                cSViewAdapter.remove(cSViewAdapter.getCSCountData());
                return;
            }
            CSViewAdapter.this.getCSCountData().incomingCount = i;
            CSViewAdapter.this.getCSCountData().outgoingCount = i2;
            CSViewAdapter.this.getCSCountData().missedCount = i3;
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$CSViewAdapter$1$yQueKjXI3T7TCNc6pDX_k16jNkQ
                @Override // java.lang.Runnable
                public final void run() {
                    CSViewAdapter.C22861.this.lambda$updateCount$1$CSViewAdapter$1();
                }
            });
        }

        @Override // com.telguarder.features.postCallStatistics.CSDataProvider.CSDataProviderCallback
        public void updateDailyStat(ArrayList<Date> arrayList, ArrayList<Number> arrayList2, ArrayList<Number> arrayList3) {
            CSViewAdapter.this.getCSStatData().setupData(arrayList, arrayList2, arrayList3);
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$CSViewAdapter$1$WZC87JFboqFBOkVUsrSbUfgHr6k
                @Override // java.lang.Runnable
                public final void run() {
                    CSViewAdapter.C22861.this.lambda$updateDailyStat$2$CSViewAdapter$1();
                }
            });
        }

        @Override // com.telguarder.features.postCallStatistics.CSDataProvider.CSDataProviderCallback
        public void updateDuration(int i, long j, long j2, long j3) {
            CSViewAdapter.this.getCSDurData().mCallType = i;
            CSViewAdapter.this.getCSDurData().mDuration = j;
            CSViewAdapter.this.getCSDurData().mMinutesIn = CSViewAdapter.this.getRoundedMinutes(j2);
            CSViewAdapter.this.getCSDurData().mMinutesOut = CSViewAdapter.this.getRoundedMinutes(j3);
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$CSViewAdapter$1$o92EwszcppnKh5a4bkPliAbAbNc
                @Override // java.lang.Runnable
                public final void run() {
                    CSViewAdapter.C22861.this.lambda$updateDuration$0$CSViewAdapter$1();
                }
            });
        }
    }

    public CSViewAdapter(Context context, String str, int i) {
        this.mContext = context;
        this.mPhoneNumber = str;
        this.mCallType = i;
        initData(context);
        mInstance = this;
    }

    private RecyclerView.ViewHolder getAdViewHolder(ViewGroup viewGroup) {
        if (this.mAdViewHolder == null) {
            this.mAdViewHolder = new CSAdRowViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C2083R.layout.cs_ad_row_layout, viewGroup, false));
        }
        return this.mAdViewHolder;
    }

    public static CSViewAdapter getInstance() {
        return mInstance;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    public long getRoundedMinutes(long j) {
        if (j > 0) {
            ?? round = Math.round((float) (j / 60));
            char c = round;
            if (round == 0) {
                c = 1;
            }
            return c;
        }
        return 0L;
    }

    private void initData(Context context) {
        this.list.clear();
        this.list.add(getCSDurData());
        this.list.add(getCSAdData());
        this.list.add(getCSAdInfoData());
        this.list.add(getCSCountData());
        this.list.add(getCSStatData());
        CSDataProvider.getInstance().getData(context, this.mPhoneNumber, this.mCallType, new C22861());
    }

    public static boolean isInstantiated() {
        return mInstance != null;
    }

    public void animate(RecyclerView.ViewHolder viewHolder) {
        viewHolder.itemView.setAnimation(AnimationUtils.loadAnimation(this.mContext, C2083R.anim.anticipate_overshoot_interpolator));
    }

    public CSAdData getCSAdData() {
        if (this.mCSAdData == null) {
            this.mCSAdData = new CSAdData();
        }
        return this.mCSAdData;
    }

    public CSAdInfoData getCSAdInfoData() {
        if (this.mCSAdInfoData == null) {
            this.mCSAdInfoData = new CSAdInfoData();
        }
        return this.mCSAdInfoData;
    }

    public CSCountData getCSCountData() {
        if (this.mCSCountData == null) {
            this.mCSCountData = new CSCountData();
        }
        return this.mCSCountData;
    }

    public CSDurData getCSDurData() {
        if (this.mCSDurData == null) {
            this.mCSDurData = new CSDurData();
        }
        return this.mCSDurData;
    }

    public CSHistHeaderData getCSHistHeaderData() {
        if (this.mCSHistHeaderData == null) {
            this.mCSHistHeaderData = new CSHistHeaderData();
        }
        return this.mCSHistHeaderData;
    }

    public CSStatData getCSStatData() {
        if (this.mCSStatData == null) {
            this.mCSStatData = new CSStatData();
        }
        return this.mCSStatData;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        List<CSData> list = this.list;
        if (list == null || list.isEmpty() || i > this.list.size()) {
            return -1;
        }
        return this.list.get(i).getItemType();
    }

    public int getPosition(CSData cSData) {
        return this.list.indexOf(cSData);
    }

    public int getPositionForDay(Date date) {
        for (int i = 0; i < this.list.size(); i++) {
            CSData cSData = this.list.get(i);
            if ((cSData instanceof CSHistData) && Math.abs(((CSHistData) cSData).callDate - date.getTime()) / ApplicationConstants.MAX_DURATION_FOR_FRESH_CACHE == 0) {
                return i;
            }
        }
        return 0;
    }

    public void insert(int i, CSData cSData) {
        this.list.add(i, cSData);
        notifyItemInserted(i);
    }

    public void insertAdBox() {
        if (this.mCSAdData == null) {
            insert(1, getCSAdData());
        }
    }

    public /* synthetic */ void lambda$notifyAdBox$0$CSViewAdapter() {
        notifyItemChanged(this.list.indexOf(this.mCSAdData));
    }

    public /* synthetic */ void lambda$notifyAdInfoBox$1$CSViewAdapter() {
        notifyItemChanged(this.list.indexOf(this.mCSAdInfoData));
    }

    public void notifyAdBox() {
        List<CSData> list;
        if (this.mRecyclerView == null || this.mCSAdData == null || (list = this.list) == null || list.isEmpty()) {
            return;
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$CSViewAdapter$m4KPQbTHVaKL245OToS0AGJOpYc
            @Override // java.lang.Runnable
            public final void run() {
                CSViewAdapter.this.lambda$notifyAdBox$0$CSViewAdapter();
            }
        });
    }

    public void notifyAdInfoBox() {
        List<CSData> list;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || recyclerView.isComputingLayout() || this.mCSAdInfoData == null || (list = this.list) == null || list.isEmpty()) {
            return;
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$CSViewAdapter$iH7r6FlmErC4hTW_WGDqLeX1KUw
            @Override // java.lang.Runnable
            public final void run() {
                CSViewAdapter.this.lambda$notifyAdInfoBox$1$CSViewAdapter();
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.mRecyclerView = recyclerView;
        recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.telguarder.features.postCallStatistics.CSViewAdapter.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView2, int i) {
                super.onScrollStateChanged(recyclerView2, i);
                if (i == 1) {
                    AnalyticsManager.getInstance().sendCallStatisticsScrollAction();
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        switch (getItemViewType(i)) {
            case 0:
                ((CSDurRowViewHolder) viewHolder).bindData((CSDurData) this.list.get(i));
                return;
            case 1:
                ((CSCountRowViewHolder) viewHolder).bindData((CSCountData) this.list.get(i));
                return;
            case 2:
                ((CSStatRowViewHolder) viewHolder).bindData((CSStatData) this.list.get(i));
                return;
            case 3:
                ((CSHistHeaderRowViewHolder) viewHolder).bindData((CSHistHeaderData) this.list.get(i));
                return;
            case 4:
                ((CSHistRowViewHolder) viewHolder).bindData((CSHistData) this.list.get(i));
                return;
            case 5:
                ((CSAdRowViewHolder) viewHolder).bindData((CSAdData) this.list.get(i), PostcallAdvertProxy.getInstance().mAdvert, this.mAdHolderCallbackInterface);
                return;
            case 6:
                ((CSAdInfoRowViewHolder) viewHolder).bindData(this.mAdInfoHolderCallbackInterface);
                return;
            default:
                return;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        switch (i) {
            case 0:
                return new CSDurRowViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C2083R.layout.cs_duration_row_layout, viewGroup, false));
            case 1:
                return new CSCountRowViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C2083R.layout.cs_count_row_layout, viewGroup, false));
            case 2:
                return new CSStatRowViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C2083R.layout.cs_stat_row_layout, viewGroup, false));
            case 3:
                return new CSHistHeaderRowViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C2083R.layout.cs_hist_header_row_layout, viewGroup, false));
            case 4:
                return new CSHistRowViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C2083R.layout.cs_hist_row_layout, viewGroup, false));
            case 5:
                return getAdViewHolder(viewGroup);
            case 6:
                return new CSAdInfoRowViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C2083R.layout.cs_ad_info_row_layout, viewGroup, false));
            default:
                return null;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder instanceof CSRowViewHolder) {
            ((CSRowViewHolder) viewHolder).onAttachToWindow();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder instanceof CSRowViewHolder) {
            ((CSRowViewHolder) viewHolder).onDetachFromWindow();
        }
    }

    public void remove(CSData cSData) {
        int indexOf = this.list.indexOf(cSData);
        if (indexOf >= 0) {
            this.list.remove(indexOf);
            try {
                notifyItemRemoved(indexOf);
            } catch (Exception e) {
            }
        }
    }

    public void removeAdBox() {
        CSAdData cSAdData = this.mCSAdData;
        if (cSAdData != null) {
            remove(cSAdData);
            this.mCSAdData = null;
        }
    }

    public void setAdHolderCallbackInterface(CSAdRowViewHolder.AdHolderCallbackInterface adHolderCallbackInterface) {
        this.mAdHolderCallbackInterface = adHolderCallbackInterface;
        notifyAdBox();
    }

    public void setAdInfoHolderCallbackInterface(CSAdInfoRowViewHolder.AdInfoHolderCallbackInterface adInfoHolderCallbackInterface) {
        this.mAdInfoHolderCallbackInterface = adInfoHolderCallbackInterface;
        notifyAdInfoBox();
    }
}
