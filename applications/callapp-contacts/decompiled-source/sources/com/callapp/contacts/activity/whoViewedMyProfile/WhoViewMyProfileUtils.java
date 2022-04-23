package com.callapp.contacts.activity.whoViewedMyProfile;

import com.callapp.contacts.model.SectionData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.util.CollectionUtils;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils;", "", "()V", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils.class */
public final class WhoViewMyProfileUtils {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f14002a = new Companion(null);

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0007¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils$Companion;", "", "()V", "getSectionMap", "", "", "Lcom/callapp/contacts/model/SectionData;", "dataList", "", "Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static Map<Integer, SectionData> a(List<WhoViewedMyProfileDataItem> dataList) {
            p.d(dataList, "dataList");
            HashMap hashMap = new HashMap();
            hashMap.put(0, new SectionData(Activities.getString(2131887907)));
            hashMap.put(1, new SectionData(Activities.getString(2131888250)));
            hashMap.put(2, new SectionData(Activities.getString(2131886388)));
            if (CollectionUtils.a(dataList)) {
                return hashMap;
            }
            Calendar instance = Calendar.getInstance();
            Calendar instance2 = Calendar.getInstance();
            instance2.add(11, -24);
            Calendar itemCalendar = Calendar.getInstance();
            for (WhoViewedMyProfileDataItem whoViewedMyProfileDataItem : dataList) {
                p.b(itemCalendar, "itemCalendar");
                itemCalendar.setTimeInMillis(whoViewedMyProfileDataItem.f14016c);
                if (DateUtils.a(instance, itemCalendar)) {
                    whoViewedMyProfileDataItem.h = 0;
                } else if (DateUtils.a(instance2, itemCalendar)) {
                    whoViewedMyProfileDataItem.h = 1;
                } else {
                    whoViewedMyProfileDataItem.h = 2;
                }
            }
            return hashMap;
        }
    }

    public static final Map<Integer, SectionData> a(List<WhoViewedMyProfileDataItem> list) {
        return Companion.a(list);
    }
}
