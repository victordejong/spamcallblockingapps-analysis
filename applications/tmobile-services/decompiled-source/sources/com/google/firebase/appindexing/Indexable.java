package com.google.firebase.appindexing;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.icing.zzhj;
import com.google.firebase.appindexing.builders.IndexableBuilder;
import com.google.firebase.appindexing.internal.Thing;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/Indexable.class */
public interface Indexable {
    public static final int MAX_BYTE_SIZE = 30000;
    public static final int MAX_INDEXABLES_TO_BE_UPDATED_IN_ONE_CALL = 1000;
    public static final int MAX_NESTING_DEPTH = 5;
    public static final int MAX_NUMBER_OF_FIELDS = 20;
    public static final int MAX_REPEATED_SIZE = 100;
    public static final int MAX_STRING_LENGTH = 20000;
    public static final int MAX_URL_LENGTH = 256;

    /* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/Indexable$Builder.class */
    public static class Builder extends IndexableBuilder<Builder> {
        public Builder() {
            this("Thing");
        }

        public Builder(@NonNull String str) {
            super(str);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/Indexable$Metadata.class */
    public interface Metadata {

        /* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/Indexable$Metadata$Builder.class */
        public static final class Builder {
            private boolean zzeo = zzhj.zza.m13481w().m13483q();
            private int score = zzhj.zza.m13481w().m13484p();
            private String zzep = zzhj.zza.m13481w().m13482v();
            private final Bundle zzay = new Bundle();

            public final Builder setScope(int i) {
                boolean z = i > 0 && i <= 3;
                StringBuilder sb = new StringBuilder(69);
                sb.append("The scope of this indexable is not valid, scope value is ");
                sb.append(i);
                sb.append(".");
                Preconditions.m14532b(z, sb.toString());
                IndexableBuilder.zza(this.zzay, "scope", i);
                return this;
            }

            public final Builder setScore(int i) {
                boolean z = i >= 0;
                StringBuilder sb = new StringBuilder(53);
                sb.append("Negative score values are invalid. Value: ");
                sb.append(i);
                Preconditions.m14532b(z, sb.toString());
                this.score = i;
                return this;
            }

            public final Builder setSliceUri(@NonNull Uri uri) {
                Preconditions.m14523k(uri);
                IndexableBuilder.zza(this.zzay, "grantSlicePermission", true);
                IndexableBuilder.zza(this.zzay, "sliceUri", uri.toString());
                return this;
            }

            public final Builder setWorksOffline(boolean z) {
                this.zzeo = z;
                return this;
            }

            public final Thing.zza zzaa() {
                return new Thing.zza(this.zzeo, this.score, this.zzep, this.zzay);
            }
        }
    }
}
