package io.fabric.sdk.android;

import android.content.Context;
import io.fabric.sdk.android.services.concurrency.AbstractC1535d;
import io.fabric.sdk.android.services.concurrency.AbstractC1546l;
import io.fabric.sdk.android.services.p068b.C1494p;
import java.io.File;
import java.util.Collection;
/* renamed from: io.fabric.sdk.android.h */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/h.class */
public abstract class AbstractC1459h<Result> implements Comparable<AbstractC1459h> {
    Context context;
    C1449c fabric;
    C1494p idManager;
    AbstractC1455f<Result> initializationCallback;
    C1458g<Result> initializationTask = new C1458g<>(this);
    final AbstractC1535d dependsOnAnnotation = (AbstractC1535d) getClass().getAnnotation(AbstractC1535d.class);

    public int compareTo(AbstractC1459h abstractC1459h) {
        if (containsAnnotatedDependency(abstractC1459h)) {
            return 1;
        }
        if (abstractC1459h.containsAnnotatedDependency(this)) {
            return -1;
        }
        if (hasAnnotatedDependency() && !abstractC1459h.hasAnnotatedDependency()) {
            return 1;
        }
        return (hasAnnotatedDependency() || !abstractC1459h.hasAnnotatedDependency()) ? 0 : -1;
    }

    boolean containsAnnotatedDependency(AbstractC1459h abstractC1459h) {
        if (hasAnnotatedDependency()) {
            for (Class<?> cls : this.dependsOnAnnotation.m3351a()) {
                if (cls.isAssignableFrom(abstractC1459h.getClass())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public abstract Result doInBackground();

    public Context getContext() {
        return this.context;
    }

    public Collection<AbstractC1546l> getDependencies() {
        return this.initializationTask.getDependencies();
    }

    public C1449c getFabric() {
        return this.fabric;
    }

    public C1494p getIdManager() {
        return this.idManager;
    }

    public abstract String getIdentifier();

    public String getPath() {
        return ".Fabric" + File.separator + getIdentifier();
    }

    public abstract String getVersion();

    boolean hasAnnotatedDependency() {
        return this.dependsOnAnnotation != null;
    }

    public final void initialize() {
        this.initializationTask.m3348a(this.fabric.m3574e(), (Object[]) new Void[]{null});
    }

    public void injectParameters(Context context, C1449c c1449c, AbstractC1455f<Result> abstractC1455f, C1494p c1494p) {
        this.fabric = c1449c;
        this.context = new C1453d(context, getIdentifier(), getPath());
        this.initializationCallback = abstractC1455f;
        this.idManager = c1494p;
    }

    public void onCancelled(Result result) {
    }

    public void onPostExecute(Result result) {
    }

    public boolean onPreExecute() {
        return true;
    }
}
