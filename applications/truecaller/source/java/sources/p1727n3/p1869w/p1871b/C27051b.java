package p1727n3.p1869w.p1871b;

import android.content.Context;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p1727n3.p1869w.p1870a.C27045b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.w.b.b */
/* loaded from: classes-dex2jar.jar:n3/w/b/b.class */
public class C27051b<D> {
    public Context mContext;
    public int mId;
    public AbstractC27053b<D> mListener;
    public AbstractC27052a<D> mOnLoadCanceledListener;
    public boolean mStarted = false;
    public boolean mAbandoned = false;
    public boolean mReset = true;
    public boolean mContentChanged = false;
    public boolean mProcessingChange = false;

    /* renamed from: n3.w.b.b$a */
    /* loaded from: classes-dex2jar.jar:n3/w/b/b$a.class */
    public interface AbstractC27052a<D> {
        /* renamed from: a */
        void m974a(C27051b<D> c27051b);
    }

    /* renamed from: n3.w.b.b$b */
    /* loaded from: classes-dex2jar.jar:n3/w/b/b$b.class */
    public interface AbstractC27053b<D> {
    }

    public C27051b(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public void abandon() {
        this.mAbandoned = true;
        onAbandon();
    }

    public boolean cancelLoad() {
        return onCancelLoad();
    }

    public void commitContentChanged() {
        this.mProcessingChange = false;
    }

    public String dataToString(D d) {
        StringBuilder sb = new StringBuilder(64);
        MediaSessionCompat.m43229j(d, sb);
        sb.append("}");
        return sb.toString();
    }

    public void deliverCancellation() {
        AbstractC27052a<D> abstractC27052a = this.mOnLoadCanceledListener;
        if (abstractC27052a != null) {
            abstractC27052a.m974a(this);
        }
    }

    public void deliverResult(D d) {
        C27045b.a aVar = this.mListener;
        if (aVar != null) {
            aVar.o(this, d);
        }
    }

    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.mId);
        printWriter.print(" mListener=");
        printWriter.println(this.mListener);
        if (this.mStarted || this.mContentChanged || this.mProcessingChange) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.mStarted);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.mContentChanged);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.mProcessingChange);
        }
        if (this.mAbandoned || this.mReset) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.mAbandoned);
            printWriter.print(" mReset=");
            printWriter.println(this.mReset);
        }
    }

    public void forceLoad() {
        onForceLoad();
    }

    public Context getContext() {
        return this.mContext;
    }

    public int getId() {
        return this.mId;
    }

    public boolean isAbandoned() {
        return this.mAbandoned;
    }

    public boolean isReset() {
        return this.mReset;
    }

    public boolean isStarted() {
        return this.mStarted;
    }

    public void onAbandon() {
    }

    public boolean onCancelLoad() {
        throw null;
    }

    public void onContentChanged() {
        if (this.mStarted) {
            forceLoad();
        } else {
            this.mContentChanged = true;
        }
    }

    public void onForceLoad() {
    }

    public void onReset() {
    }

    public void onStartLoading() {
        throw null;
    }

    public void onStopLoading() {
    }

    public void registerListener(int i, AbstractC27053b<D> abstractC27053b) {
        if (this.mListener == null) {
            this.mListener = abstractC27053b;
            this.mId = i;
            return;
        }
        throw new IllegalStateException("There is already a listener registered");
    }

    public void registerOnLoadCanceledListener(AbstractC27052a<D> abstractC27052a) {
        if (this.mOnLoadCanceledListener == null) {
            this.mOnLoadCanceledListener = abstractC27052a;
            return;
        }
        throw new IllegalStateException("There is already a listener registered");
    }

    public void reset() {
        onReset();
        this.mReset = true;
        this.mStarted = false;
        this.mAbandoned = false;
        this.mContentChanged = false;
        this.mProcessingChange = false;
    }

    public void rollbackContentChanged() {
        if (this.mProcessingChange) {
            onContentChanged();
        }
    }

    public final void startLoading() {
        this.mStarted = true;
        this.mReset = false;
        this.mAbandoned = false;
        onStartLoading();
    }

    public void stopLoading() {
        this.mStarted = false;
        onStopLoading();
    }

    public boolean takeContentChanged() {
        boolean z = this.mContentChanged;
        this.mContentChanged = false;
        this.mProcessingChange |= z;
        return z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        MediaSessionCompat.m43229j(this, sb);
        sb.append(" id=");
        return C22128a.m8697J2(sb, this.mId, "}");
    }

    public void unregisterListener(AbstractC27053b<D> abstractC27053b) {
        AbstractC27053b<D> abstractC27053b2 = this.mListener;
        if (abstractC27053b2 != null) {
            if (abstractC27053b2 != abstractC27053b) {
                throw new IllegalArgumentException("Attempting to unregister the wrong listener");
            }
            this.mListener = null;
            return;
        }
        throw new IllegalStateException("No listener register");
    }

    public void unregisterOnLoadCanceledListener(AbstractC27052a<D> abstractC27052a) {
        AbstractC27052a<D> abstractC27052a2 = this.mOnLoadCanceledListener;
        if (abstractC27052a2 != null) {
            if (abstractC27052a2 != abstractC27052a) {
                throw new IllegalArgumentException("Attempting to unregister the wrong listener");
            }
            this.mOnLoadCanceledListener = null;
            return;
        }
        throw new IllegalStateException("No listener register");
    }
}
