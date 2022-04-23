package androidx.core.app;

import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.core.app.JobIntentService;
import p459j.p460a.p582w0.C14080m2;
/* loaded from: classes-dex2jar.jar:androidx/core/app/WhoscallJobIntentService.class */
public abstract class WhoscallJobIntentService extends JobIntentService {

    /* loaded from: classes-dex2jar.jar:androidx/core/app/WhoscallJobIntentService$GenericWorkItemWrapper.class */
    public static class GenericWorkItemWrapper implements JobIntentService.GenericWorkItem {
        public JobIntentService.GenericWorkItem mGenericWorkItem;

        public GenericWorkItemWrapper(@NonNull JobIntentService.GenericWorkItem genericWorkItem) {
            this.mGenericWorkItem = genericWorkItem;
        }

        @Override // androidx.core.app.JobIntentService.GenericWorkItem
        public void complete() {
            try {
                this.mGenericWorkItem.complete();
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }

        @Override // androidx.core.app.JobIntentService.GenericWorkItem
        public Intent getIntent() {
            return this.mGenericWorkItem.getIntent();
        }
    }

    @Override // androidx.core.app.JobIntentService
    public JobIntentService.GenericWorkItem dequeueWork() {
        try {
            JobIntentService.GenericWorkItem dequeueWork = super.dequeueWork();
            if (dequeueWork != null) {
                return new GenericWorkItemWrapper(dequeueWork);
            }
            return null;
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return null;
        }
    }
}
