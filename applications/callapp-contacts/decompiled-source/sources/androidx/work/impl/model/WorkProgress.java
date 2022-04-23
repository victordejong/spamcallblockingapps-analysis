package androidx.work.impl.model;

import androidx.work.d;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkProgress.class */
public class WorkProgress {
    public final d mProgress;
    public final String mWorkSpecId;

    public WorkProgress(String str, d dVar) {
        this.mWorkSpecId = str;
        this.mProgress = dVar;
    }
}
