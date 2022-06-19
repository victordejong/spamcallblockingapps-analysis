package com.tenor.android.core.model.impl;

import com.tenor.android.core.util.AbstractListUtils;
import e.m.e.d0.b;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/model/impl/BadgeInfo.class */
public class BadgeInfo implements Serializable {
    private static final long serialVersionUID = 2519123239149906317L;
    private List<ItemBadge> badges;
    @b("view_acceptance_fraction")
    private float threshold;

    public List<ItemBadge> getBadges() {
        return hasBadges() ? this.badges : Collections.emptyList();
    }

    public float getThreshold() {
        float f = this.threshold;
        if (f < 0.01f || f > 1.0f) {
            f = 1.0f;
        }
        return f;
    }

    public boolean hasBadges() {
        return !AbstractListUtils.isEmpty(this.badges);
    }
}
