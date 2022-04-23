package androidx.media2.session;

import android.content.ComponentName;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.ObjectsCompat;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import androidx.media2.session.SessionToken;
import androidx.versionedparcelable.CustomVersionedParcelable;
import androidx.versionedparcelable.VersionedParcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenImplLegacy.class */
public final class SessionTokenImplLegacy extends CustomVersionedParcelable implements SessionToken.SessionTokenImpl {
    public ComponentName mComponentName;
    public Bundle mExtras;
    public MediaSessionCompat.Token mLegacyToken;
    public Bundle mLegacyTokenBundle;
    public String mPackageName;
    public int mType;
    public int mUid;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public SessionTokenImplLegacy() {
    }

    public SessionTokenImplLegacy(ComponentName componentName, int i) {
        if (componentName != null) {
            this.mLegacyToken = null;
            this.mUid = i;
            this.mType = 101;
            this.mPackageName = componentName.getPackageName();
            this.mComponentName = componentName;
            this.mExtras = null;
            return;
        }
        throw new NullPointerException("serviceComponent shouldn't be null");
    }

    public SessionTokenImplLegacy(MediaSessionCompat.Token token, String str, int i) {
        if (token == null) {
            throw new NullPointerException("token shouldn't be null");
        } else if (str == null) {
            throw new NullPointerException("packageName shouldn't be null");
        } else if (!TextUtils.isEmpty(str)) {
            this.mLegacyToken = token;
            this.mUid = i;
            this.mPackageName = str;
            this.mComponentName = null;
            this.mType = 100;
            this.mExtras = null;
        } else {
            throw new IllegalArgumentException("packageName shouldn't be empty");
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SessionTokenImplLegacy)) {
            return false;
        }
        SessionTokenImplLegacy sessionTokenImplLegacy = (SessionTokenImplLegacy) obj;
        int i = this.mType;
        if (i != sessionTokenImplLegacy.mType) {
            return false;
        }
        if (i == 100) {
            return ObjectsCompat.equals(this.mLegacyToken, sessionTokenImplLegacy.mLegacyToken);
        }
        if (i != 101) {
            return false;
        }
        return ObjectsCompat.equals(this.mComponentName, sessionTokenImplLegacy.mComponentName);
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public Object getBinder() {
        return this.mLegacyToken;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
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
        ComponentName componentName = this.mComponentName;
        return componentName == null ? null : componentName.getClassName();
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public int getType() {
        int i = this.mType;
        return (i == 100 || i != 101) ? 0 : 2;
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public int getUid() {
        return this.mUid;
    }

    public int hashCode() {
        return ObjectsCompat.hash(Integer.valueOf(this.mType), this.mComponentName, this.mLegacyToken);
    }

    @Override // androidx.media2.session.SessionToken.SessionTokenImpl
    public boolean isLegacySession() {
        return true;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public void onPostParceling() {
        this.mLegacyToken = MediaSessionCompat.Token.fromBundle(this.mLegacyTokenBundle);
        this.mLegacyTokenBundle = null;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public void onPreParceling(boolean z) {
        MediaSessionCompat.Token token = this.mLegacyToken;
        if (token != null) {
            VersionedParcelable session2Token = token.getSession2Token();
            this.mLegacyToken.setSession2Token(null);
            this.mLegacyTokenBundle = this.mLegacyToken.toBundle();
            this.mLegacyToken.setSession2Token(session2Token);
            return;
        }
        this.mLegacyTokenBundle = null;
    }

    public String toString() {
        return "SessionToken {legacyToken=" + this.mLegacyToken + CssParser.BLOCK_END;
    }
}
