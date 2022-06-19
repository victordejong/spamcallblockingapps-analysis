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
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m4298d2 = {"Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils;", "", "()V", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils.class */
public final class WhoViewMyProfileUtils {

    /* renamed from: a */
    public static final Companion f24618a = new Companion(null);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0007¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils$Companion;", "", "()V", "getSectionMap", "", "", "Lcom/callapp/contacts/model/SectionData;", "dataList", "", "Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static Map<Integer, SectionData> m29370a(List<WhoViewedMyProfileDataItem> dataList) {
            C18524p.m3840d(dataList, "dataList");
            HashMap hashMap = new HashMap();
            hashMap.put(0, new SectionData(Activities.getString(2131887907)));
            hashMap.put(1, new SectionData(Activities.getString(2131888250)));
            hashMap.put(2, new SectionData(Activities.getString(2131886388)));
            if (CollectionUtils.m26076a(dataList)) {
                return hashMap;
            }
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.add(11, -24);
            Calendar itemCalendar = Calendar.getInstance();
            for (WhoViewedMyProfileDataItem whoViewedMyProfileDataItem : dataList) {
                C18524p.m3843b(itemCalendar, "itemCalendar");
                itemCalendar.setTimeInMillis(whoViewedMyProfileDataItem.f24637c);
                if (DateUtils.m27128a(calendar, itemCalendar)) {
                    whoViewedMyProfileDataItem.f24642h = 0;
                } else if (DateUtils.m27128a(calendar2, itemCalendar)) {
                    whoViewedMyProfileDataItem.f24642h = 1;
                } else {
                    whoViewedMyProfileDataItem.f24642h = 2;
                }
            }
            return hashMap;
        }
    }

    /* renamed from: a */
    public static final Map<Integer, SectionData> m29371a(List<WhoViewedMyProfileDataItem> list) {
        return Companion.m29370a(list);
    }
}
