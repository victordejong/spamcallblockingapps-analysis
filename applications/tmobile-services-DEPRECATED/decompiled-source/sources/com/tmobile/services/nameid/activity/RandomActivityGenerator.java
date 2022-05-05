package com.tmobile.services.nameid.activity;

import com.tmobile.services.nameid.utility.LogUtil;
import java.util.Random;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/RandomActivityGenerator.class */
public class RandomActivityGenerator {
    public RandomActivityGenerator() {
        this(System.currentTimeMillis());
    }

    public RandomActivityGenerator(long j) {
        new Random(j);
        LogUtil.m5639h("RandomActivityGenerator#", "Constructed with seed = " + j);
    }
}
