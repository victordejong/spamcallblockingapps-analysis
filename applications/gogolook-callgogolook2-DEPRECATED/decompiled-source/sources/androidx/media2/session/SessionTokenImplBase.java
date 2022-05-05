package androidx.media2.session;

import android.content.ComponentName;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.ObjectsCompat;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import androidx.media2.session.SessionToken;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenImplBase.class */
public final class SessionTokenImplBase implements SessionToken.SessionTokenImpl {
    public ComponentName mComponentName;
    public Bundle mExtras;
    public IBinder mISession;
    public String mPackageName;
    public String mServiceName;
    public int mType;
    public int mUid;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public SessionTokenImplBase() {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public SessionTokenImplBase(int i, int i2, String str, IMediaSession iMediaSession, Bundle bundle) {
        this.mUid = i;
        this.mType = i2;
        this.mPackageName = str;
        this.mServiceName = null;
        this.mComponentName = null;
        this.mISession = iMediaSession.asBinder();
        this.mExtras = bundle;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public SessionTokenImplBase(@NonNull ComponentName componentName, int i, int i2) {
        if (componentName != null) {
            this.mComponentName = componentName;
            this.mPackageName = componentName.getPackageName();
            this.mServiceName = componentName.getClassName();
            this.mUid = i;
            this.mType = i2;
            this.mISession = null;
            this.mExtras = null;
            return;
        }
        throw new NullPointerException("serviceComponent shouldn't be null");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SessionTokenImplBase)) {
            return false;
        }
        SessionTokenImplBase sessionTokenImplBase = (SessionTokenImplBase) obj;
        boolean z = false;
        if (this.mUid == sessionTokenImplBase.mUid) {
            z = false;
            if (TextUtils.equals(this.mPackageName, sessionTokenImplBase.mPackageName)) {
                z = false;
                if (TextUtils.equals(this.mServiceName, sessionTokenImplBase.mServiceName)) {
                    z = false;
                    if (this.mType == sessionTokenImplBase.mType) {
                        z = false;
                        if (ObjectsCompat.equals(this.mISession, sessionTokenImplBase.mISession)) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public Object getBinder() {
        return this.mISession;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ComponentName getComponentName() {
        return this.mComponentName;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    @NonNull
    public Bundle getExtras() {
        Bundle bundle = this.mExtras;
        return bundle == null ? Bundle.EMPTY : new Bundle(bundle);
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    @NonNull
    public String getPackageName() {
        return this.mPackageName;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    @Nullable
    public String getServiceName() {
        return this.mServiceName;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public int getType() {
        return this.mType;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public int getUid() {
        return this.mUid;
    }

    public int hashCode() {
        return ObjectsCompat.hash(Integer.valueOf(this.mType), Integer.valueOf(this.mUid), this.mPackageName, this.mServiceName);
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public boolean isLegacySession() {
        return false;
    }

    public String toString() {
        return "SessionToken {pkg=" + this.mPackageName + " type=" + this.mType + " service=" + this.mServiceName + " IMediaSession=" + this.mISession + " extras=" + this.mExtras + CssParser.BLOCK_END;
    }
}
