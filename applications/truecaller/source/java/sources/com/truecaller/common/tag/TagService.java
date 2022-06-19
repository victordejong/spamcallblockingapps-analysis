package com.truecaller.common.tag;

import android.content.Intent;
import p1727n3.p1807k.p1808a.AbstractServiceC26412a0;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/tag/TagService.class */
public class TagService extends AbstractServiceC26412a0 {

    /* renamed from: a */
    public static final /* synthetic */ int f10954a = 0;

    @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i
    public void onHandleWork(Intent intent) {
        if (AbstractApplicationC8442a.m28551L().m28549N().mo11657L().mo28580d() && intent.getIntExtra("action", -1) == 0) {
            AbstractApplicationC8442a.m28551L().m28549N().mo12713H().mo28402b();
        }
    }
}
