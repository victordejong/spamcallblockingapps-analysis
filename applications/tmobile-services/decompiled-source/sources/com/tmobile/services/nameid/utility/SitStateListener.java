package com.tmobile.services.nameid.utility;

import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/SitStateListener.class */
public abstract class SitStateListener implements Comparable {

    /* renamed from: f */
    private String f14442f = UUID.randomUUID().toString();

    /* renamed from: a */
    public abstract void mo5340a(boolean z);

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj instanceof SitStateListener) {
            return ((SitStateListener) obj).f14442f.compareTo(this.f14442f);
        }
        return -1;
    }

    public boolean equals(Object obj) {
        return (obj instanceof SitStateListener) && ((SitStateListener) obj).f14442f.equals(this.f14442f);
    }

    public int hashCode() {
        return this.f14442f.hashCode();
    }
}
