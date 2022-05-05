package com.tmobile.services.nameid.activity;

import com.tmobile.services.nameid.Filter;
import com.tmobile.services.nameid.activity.ActivityPresenter;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ#\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0018\u0010\f\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/tmobile/services/nameid/activity/ActivityItemFilter;", "Lcom/tmobile/services/nameid/Filter;", "", "Lcom/tmobile/services/nameid/model/activity/ActivityItem;", "list", "applyTo", "(Ljava/util/List;)Ljava/util/List;", "Lcom/tmobile/services/nameid/activity/ActivityPresenter$CallFilterType;", "filterType", "Lcom/tmobile/services/nameid/model/activity/ActivityItem$Type;", "convert", "(Lcom/tmobile/services/nameid/activity/ActivityPresenter$CallFilterType;)Lcom/tmobile/services/nameid/model/activity/ActivityItem$Type;", "callType", "Lcom/tmobile/services/nameid/model/activity/ActivityItem$Type;", "<init>", "(Lcom/tmobile/services/nameid/activity/ActivityPresenter$CallFilterType;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/ActivityItemFilter.class */
public final class ActivityItemFilter implements Filter<ActivityItem> {

    /* renamed from: a */
    private final ActivityItem.Type f13083a;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/ActivityItemFilter$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13084a;

        static {
            int[] iArr = new int[ActivityPresenter.CallFilterType.values().length];
            f13084a = iArr;
            iArr[ActivityPresenter.CallFilterType.ALL.ordinal()] = 1;
            f13084a[ActivityPresenter.CallFilterType.BLOCKED.ordinal()] = 2;
            f13084a[ActivityPresenter.CallFilterType.VOICEMAIL.ordinal()] = 3;
            f13084a[ActivityPresenter.CallFilterType.APPROVED.ordinal()] = 4;
        }
    }

    public ActivityItemFilter(@NotNull ActivityPresenter.CallFilterType filterType) {
        Intrinsics.m1830e(filterType, "filterType");
        this.f13083a = m7061b(filterType);
    }

    /* renamed from: b */
    private final ActivityItem.Type m7061b(ActivityPresenter.CallFilterType callFilterType) {
        ActivityItem.Type type;
        int i = WhenMappings.f13084a[callFilterType.ordinal()];
        if (i == 1) {
            type = null;
        } else if (i == 2) {
            type = ActivityItem.Type.BLOCKED;
        } else if (i == 3) {
            type = ActivityItem.Type.VOICEMAIL;
        } else if (i == 4) {
            type = ActivityItem.Type.APPROVED;
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return type;
    }

    @NotNull
    /* renamed from: a */
    public List<ActivityItem> m7062a(@NotNull List<? extends ActivityItem> list) {
        Intrinsics.m1830e(list, "list");
        List list2 = list;
        if (this.f13083a != null) {
            list2 = new ArrayList();
            for (Object obj : list) {
                if (((ActivityItem) obj).getType() == this.f13083a.getValue()) {
                    list2.add(obj);
                }
            }
        }
        return list2;
    }
}
