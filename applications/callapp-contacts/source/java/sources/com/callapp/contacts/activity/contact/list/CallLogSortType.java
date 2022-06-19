package com.callapp.contacts.activity.contact.list;

import com.callapp.contacts.util.Activities;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* JADX WARN: Init of enum SORTED_BY_DATE can be incorrect */
/* JADX WARN: Init of enum SORTED_BY_FREQ can be incorrect */
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B!\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\f\u0010\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/list/CallLogSortType;", "", "index", "", "title", "", "isDefault", "", "(Ljava/lang/String;IILjava/lang/String;Z)V", "getIndex", "()I", "()Z", "getTitle", "()Ljava/lang/String;", "SORTED_BY_DATE", "SORTED_BY_FREQ", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/CallLogSortType.class */
public enum CallLogSortType {
    SORTED_BY_DATE(0, r0, true),
    SORTED_BY_FREQ(1, r0, false, 4, null);
    
    private final int index;
    private final boolean isDefault;
    private final String title;

    static {
        C18524p.m3843b(Activities.getString(2131887736), "Activities.getString(R.string.sort_by_date)");
        C18524p.m3843b(Activities.getString(2131887737), "Activities.getString(R.string.sort_by_frequency)");
    }

    CallLogSortType(int i, String str, boolean z) {
        this.index = i;
        this.title = str;
        this.isDefault = z;
    }

    /* synthetic */ CallLogSortType(int i, String str, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, (i2 & 4) != 0 ? false : z);
    }

    public final int getIndex() {
        return this.index;
    }

    public final String getTitle() {
        return this.title;
    }

    public final boolean isDefault() {
        return this.isDefault;
    }
}
