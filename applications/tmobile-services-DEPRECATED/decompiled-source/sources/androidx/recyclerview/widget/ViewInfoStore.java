package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LongSparseArray;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ViewInfoStore.class */
public class ViewInfoStore {
    @VisibleForTesting

    /* renamed from: a */
    final SimpleArrayMap<RecyclerView.ViewHolder, InfoRecord> f4920a = new SimpleArrayMap<>();
    @VisibleForTesting

    /* renamed from: b */
    final LongSparseArray<RecyclerView.ViewHolder> f4921b = new LongSparseArray<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ViewInfoStore$InfoRecord.class */
    public static class InfoRecord {

        /* renamed from: d */
        static Pools.Pool<InfoRecord> f4922d = new Pools.SimplePool(20);

        /* renamed from: a */
        int f4923a;
        @Nullable

        /* renamed from: b */
        RecyclerView.ItemAnimator.ItemHolderInfo f4924b;
        @Nullable

        /* renamed from: c */
        RecyclerView.ItemAnimator.ItemHolderInfo f4925c;

        private InfoRecord() {
        }

        /* renamed from: a */
        static void m17024a() {
            do {
            } while (f4922d.mo19341b() != null);
        }

        /* renamed from: b */
        static InfoRecord m17023b() {
            InfoRecord b = f4922d.mo19341b();
            InfoRecord infoRecord = b;
            if (b == null) {
                infoRecord = new InfoRecord();
            }
            return infoRecord;
        }

        /* renamed from: c */
        static void m17022c(InfoRecord infoRecord) {
            infoRecord.f4923a = 0;
            infoRecord.f4924b = null;
            infoRecord.f4925c = null;
            f4922d.mo19342a(infoRecord);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ViewInfoStore$ProcessCallback.class */
    public interface ProcessCallback {
        /* renamed from: a */
        void mo17021a(RecyclerView.ViewHolder viewHolder);

        /* renamed from: b */
        void mo17020b(RecyclerView.ViewHolder viewHolder, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        /* renamed from: c */
        void mo17019c(RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        /* renamed from: d */
        void mo17018d(RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);
    }

    /* renamed from: l */
    private RecyclerView.ItemAnimator.ItemHolderInfo m17030l(RecyclerView.ViewHolder viewHolder, int i) {
        InfoRecord o;
        RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo;
        int h = this.f4920a.m21010h(viewHolder);
        if (h < 0 || (o = this.f4920a.m21005o(h)) == null) {
            return null;
        }
        int i2 = o.f4923a;
        if ((i2 & i) == 0) {
            return null;
        }
        o.f4923a = (i ^ (-1)) & i2;
        if (i == 4) {
            itemHolderInfo = o.f4924b;
        } else if (i == 8) {
            itemHolderInfo = o.f4925c;
        } else {
            throw new IllegalArgumentException("Must provide flag PRE or POST");
        }
        if ((o.f4923a & 12) == 0) {
            this.f4920a.mo18659m(h);
            InfoRecord.m17022c(o);
        }
        return itemHolderInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m17041a(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        InfoRecord infoRecord = this.f4920a.get(viewHolder);
        InfoRecord infoRecord2 = infoRecord;
        if (infoRecord == null) {
            infoRecord2 = InfoRecord.m17023b();
            this.f4920a.put(viewHolder, infoRecord2);
        }
        infoRecord2.f4923a |= 2;
        infoRecord2.f4924b = itemHolderInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m17040b(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.f4920a.get(viewHolder);
        InfoRecord infoRecord2 = infoRecord;
        if (infoRecord == null) {
            infoRecord2 = InfoRecord.m17023b();
            this.f4920a.put(viewHolder, infoRecord2);
        }
        infoRecord2.f4923a |= 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m17039c(long j, RecyclerView.ViewHolder viewHolder) {
        this.f4921b.m21040n(j, viewHolder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m17038d(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        InfoRecord infoRecord = this.f4920a.get(viewHolder);
        InfoRecord infoRecord2 = infoRecord;
        if (infoRecord == null) {
            infoRecord2 = InfoRecord.m17023b();
            this.f4920a.put(viewHolder, infoRecord2);
        }
        infoRecord2.f4925c = itemHolderInfo;
        infoRecord2.f4923a |= 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m17037e(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        InfoRecord infoRecord = this.f4920a.get(viewHolder);
        InfoRecord infoRecord2 = infoRecord;
        if (infoRecord == null) {
            infoRecord2 = InfoRecord.m17023b();
            this.f4920a.put(viewHolder, infoRecord2);
        }
        infoRecord2.f4924b = itemHolderInfo;
        infoRecord2.f4923a |= 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public void m17036f() {
        this.f4920a.clear();
        this.f4921b.m21049b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public RecyclerView.ViewHolder m17035g(long j) {
        return this.f4921b.m21045g(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public boolean m17034h(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.f4920a.get(viewHolder);
        boolean z = true;
        if (infoRecord == null || (infoRecord.f4923a & 1) == 0) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public boolean m17033i(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.f4920a.get(viewHolder);
        return (infoRecord == null || (infoRecord.f4923a & 4) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void m17032j() {
        InfoRecord.m17024a();
    }

    /* renamed from: k */
    public void m17031k(RecyclerView.ViewHolder viewHolder) {
        m17026p(viewHolder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: m */
    public RecyclerView.ItemAnimator.ItemHolderInfo m17029m(RecyclerView.ViewHolder viewHolder) {
        return m17030l(viewHolder, 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: n */
    public RecyclerView.ItemAnimator.ItemHolderInfo m17028n(RecyclerView.ViewHolder viewHolder) {
        return m17030l(viewHolder, 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public void m17027o(ProcessCallback processCallback) {
        for (int size = this.f4920a.size() - 1; size >= 0; size--) {
            RecyclerView.ViewHolder k = this.f4920a.m21007k(size);
            InfoRecord m = this.f4920a.mo18659m(size);
            int i = m.f4923a;
            if ((i & 3) == 3) {
                processCallback.mo17021a(k);
            } else if ((i & 1) != 0) {
                RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo = m.f4924b;
                if (itemHolderInfo == null) {
                    processCallback.mo17021a(k);
                } else {
                    processCallback.mo17019c(k, itemHolderInfo, m.f4925c);
                }
            } else if ((i & 14) == 14) {
                processCallback.mo17020b(k, m.f4924b, m.f4925c);
            } else if ((i & 12) == 12) {
                processCallback.mo17018d(k, m.f4924b, m.f4925c);
            } else if ((i & 4) != 0) {
                processCallback.mo17019c(k, m.f4924b, null);
            } else if ((i & 8) != 0) {
                processCallback.mo17020b(k, m.f4924b, m.f4925c);
            }
            InfoRecord.m17022c(m);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public void m17026p(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.f4920a.get(viewHolder);
        if (infoRecord != null) {
            infoRecord.f4923a &= -2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m17025q(RecyclerView.ViewHolder viewHolder) {
        int q = this.f4921b.m21037q() - 1;
        while (true) {
            if (q < 0) {
                break;
            } else if (viewHolder == this.f4921b.m21036r(q)) {
                this.f4921b.m21038p(q);
                break;
            } else {
                q--;
            }
        }
        InfoRecord remove = this.f4920a.remove(viewHolder);
        if (remove != null) {
            InfoRecord.m17022c(remove);
        }
    }
}
