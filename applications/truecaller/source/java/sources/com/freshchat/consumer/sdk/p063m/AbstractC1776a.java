package com.freshchat.consumer.sdk.p063m;

import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.freshchat.consumer.sdk.beans.CalendarMessageMeta;
import com.freshchat.consumer.sdk.p057j.C1723q;
/* renamed from: com.freshchat.consumer.sdk.m.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/a.class */
public abstract class AbstractC1776a extends Fragment {

    /* renamed from: com.freshchat.consumer.sdk.m.a$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/a$a.class */
    public enum EnumC1777a {
        CALENDAR_EMAIL_ENTRY_FRAGMENT(C1787j.class),
        CALENDAR_LIMITED_TIMESLOTS_VIEW_FRAGMENT(C1791n.class),
        CALENDAR_ALL_TIMESLOTS_VIEW_FRAGMENT(C1780d.class),
        CALENDAR_TIMESLOT_CONFIRMATION_FRAGMENT(C1797t.class);
        

        /* renamed from: oR */
        private final Class f4629oR;

        EnumC1777a(Class cls) {
            this.f4629oR = cls;
        }

        /* renamed from: hE */
        public Class m39590hE() {
            return this.f4629oR;
        }
    }

    /* renamed from: a */
    public void m39595a(EnumC1777a enumC1777a) {
        m39594a(enumC1777a, null);
    }

    /* renamed from: a */
    public void m39594a(EnumC1777a enumC1777a, Bundle bundle) {
        C1782f m39593hB = m39593hB();
        if (m39593hB != null) {
            m39593hB.m39580a(enumC1777a, bundle);
        } else {
            C1723q.m39823a(new Exception("Fragment load failed. Parent CalendarBottomSheetDialogFragment is null "));
        }
    }

    /* renamed from: cc */
    public abstract void mo39555cc(Context context);

    public CalendarMessageMeta getCalendarMessageMeta() {
        C1782f m39593hB = m39593hB();
        if (m39593hB != null) {
            return m39593hB.getCalendarMessageMeta();
        }
        return null;
    }

    /* renamed from: hB */
    public C1782f m39593hB() {
        C1782f parentFragment = getParentFragment();
        if (parentFragment instanceof C1782f) {
            return parentFragment;
        }
        return null;
    }

    /* renamed from: hC */
    public String m39592hC() {
        C1782f m39593hB = m39593hB();
        if (m39593hB != null) {
            return m39593hB.m39575hL();
        }
        return null;
    }

    /* renamed from: hD */
    public int m39591hD() {
        C1782f m39593hB = m39593hB();
        return m39593hB != null ? m39593hB.getOrientation() : getResources().getConfiguration().orientation;
    }

    public void onAttach(Context context) {
        AbstractC1776a.super.onAttach(context);
        mo39555cc(context);
    }
}
