package com.google.firebase.appindexing;

import android.os.Bundle;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.appindexing.builders.IndexableBuilder;
import com.google.firebase.appindexing.internal.zza;
import com.google.firebase.appindexing.internal.zzb;
import com.google.firebase.appindexing.internal.zzu;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/Action.class */
public interface Action {

    /* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/Action$Builder.class */
    public static class Builder {
        public static final String ACTIVATE_ACTION = "ActivateAction";
        public static final String ADD_ACTION = "AddAction";
        public static final String BOOKMARK_ACTION = "BookmarkAction";
        public static final String COMMENT_ACTION = "CommentAction";
        public static final String LIKE_ACTION = "LikeAction";
        public static final String LISTEN_ACTION = "ListenAction";
        public static final String SEND_ACTION = "SendAction";
        public static final String SHARE_ACTION = "ShareAction";
        public static final String STATUS_TYPE_ACTIVE = "http://schema.org/ActiveActionStatus";
        public static final String STATUS_TYPE_COMPLETED = "http://schema.org/CompletedActionStatus";
        public static final String STATUS_TYPE_FAILED = "http://schema.org/FailedActionStatus";
        public static final String VIEW_ACTION = "ViewAction";
        public static final String WATCH_ACTION = "WatchAction";
        private final Bundle zzaw = new Bundle();
        private final String zzbu;
        private String zzbv;
        private String zzbw;
        private String zzbx;
        private zzb zzby;
        private String zzbz;

        public Builder(@NonNull String str) {
            this.zzbu = str;
        }

        public Action build() {
            Preconditions.checkNotNull(this.zzbv, "setObject is required before calling build().");
            Preconditions.checkNotNull(this.zzbw, "setObject is required before calling build().");
            return new zza(this.zzbu, this.zzbv, this.zzbw, this.zzbx, this.zzby == null ? new Metadata.Builder().zzh() : this.zzby, this.zzbz, this.zzaw);
        }

        public Builder put(@NonNull String str, @NonNull double... dArr) {
            Bundle bundle = this.zzaw;
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(dArr);
            if (dArr.length > 0) {
                if (dArr.length >= 100) {
                    zzu.zze("Input Array of elements is too big, cutting off.");
                    dArr = Arrays.copyOf(dArr, 100);
                }
                bundle.putDoubleArray(str, dArr);
                return this;
            }
            zzu.zze("Double array is empty and is ignored by put method.");
            return this;
        }

        public Builder put(@NonNull String str, @NonNull long... jArr) {
            IndexableBuilder.zza(this.zzaw, str, jArr);
            return this;
        }

        public Builder put(@NonNull String str, @NonNull Indexable... indexableArr) throws FirebaseAppIndexingInvalidArgumentException {
            IndexableBuilder.zza(this.zzaw, str, indexableArr);
            return this;
        }

        public Builder put(@NonNull String str, @NonNull String... strArr) {
            IndexableBuilder.zza(this.zzaw, str, strArr);
            return this;
        }

        public Builder put(@NonNull String str, @NonNull boolean... zArr) {
            IndexableBuilder.zza(this.zzaw, str, zArr);
            return this;
        }

        public Builder setActionStatus(@NonNull String str) {
            Preconditions.checkNotNull(str);
            this.zzbz = str;
            return this;
        }

        public Builder setMetadata(@NonNull Metadata.Builder builder) {
            Preconditions.checkNotNull(builder);
            this.zzby = builder.zzh();
            return this;
        }

        public final Builder setName(@NonNull String str) {
            Preconditions.checkNotNull(str);
            this.zzbv = str;
            return put("name", str);
        }

        public Builder setObject(@NonNull String str, @NonNull String str2) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(str2);
            this.zzbv = str;
            this.zzbw = str2;
            return this;
        }

        public Builder setObject(@NonNull String str, @NonNull String str2, @NonNull String str3) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(str2);
            Preconditions.checkNotNull(str3);
            this.zzbv = str;
            this.zzbw = str2;
            this.zzbx = str3;
            return this;
        }

        public final Builder setUrl(@NonNull String str) {
            Preconditions.checkNotNull(str);
            this.zzbw = str;
            return put("url", str);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/Action$Metadata.class */
    public interface Metadata {

        /* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/Action$Metadata$Builder.class */
        public static class Builder {
            private boolean zzca = true;
            private boolean zzcb = false;

            public Builder setUpload(boolean z) {
                this.zzca = z;
                return this;
            }

            public final zzb zzh() {
                return new zzb(this.zzca, null, null, null, false);
            }
        }
    }
}
