package androidx.work;

import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.util.HashSet;
import java.util.Set;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/ContentUriTriggers.class */
public final class ContentUriTriggers {
    private final Set<Trigger> mTriggers = new HashSet();

    /* loaded from: classes-dex2jar.jar:androidx/work/ContentUriTriggers$Trigger.class */
    public static final class Trigger {
        private final boolean mTriggerForDescendants;
        @NonNull
        private final Uri mUri;

        Trigger(@NonNull Uri uri, boolean z) {
            this.mUri = uri;
            this.mTriggerForDescendants = z;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Trigger trigger = (Trigger) obj;
            if (this.mTriggerForDescendants != trigger.mTriggerForDescendants || !this.mUri.equals(trigger.mUri)) {
                z = false;
            }
            return z;
        }

        @NonNull
        public Uri getUri() {
            return this.mUri;
        }

        public int hashCode() {
            return (this.mUri.hashCode() * 31) + (this.mTriggerForDescendants ? 1 : 0);
        }

        public boolean shouldTriggerForDescendants() {
            return this.mTriggerForDescendants;
        }
    }

    public void add(@NonNull Uri uri, boolean z) {
        this.mTriggers.add(new Trigger(uri, z));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.mTriggers.equals(((ContentUriTriggers) obj).mTriggers);
    }

    @NonNull
    public Set<Trigger> getTriggers() {
        return this.mTriggers;
    }

    public int hashCode() {
        return this.mTriggers.hashCode();
    }

    public int size() {
        return this.mTriggers.size();
    }
}
