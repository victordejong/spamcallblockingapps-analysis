package com.google.firebase.appindexing;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.appindexing.builders.IndexableBuilder;
import com.google.firebase.appindexing.internal.zza;
import com.google.firebase.appindexing.internal.zzc;
import com.google.firebase.appindexing.internal.zzt;
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
        private final String zzar;
        private final Bundle zzay = new Bundle();
        private String zzeg;
        private String zzeh;
        private String zzei;
        private zzc zzej;
        private String zzek;

        public Builder(@NonNull String str) {
            this.zzar = str;
        }

        public Action build() {
            Preconditions.m14522l(this.zzeg, "setObject is required before calling build().");
            Preconditions.m14522l(this.zzeh, "setObject is required before calling build().");
            String str = this.zzar;
            String str2 = this.zzeg;
            String str3 = this.zzeh;
            String str4 = this.zzei;
            zzc zzcVar = this.zzej;
            zzc zzcVar2 = zzcVar;
            if (zzcVar == null) {
                zzcVar2 = new Metadata.Builder().zzz();
            }
            return new zza(str, str2, str3, str4, zzcVar2, this.zzek, this.zzay);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final String getName() {
            if (this.zzeg == null) {
                return null;
            }
            return new String(this.zzeg);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final String getUrl() {
            if (this.zzeh == null) {
                return null;
            }
            return new String(this.zzeh);
        }

        public Builder put(@NonNull String str, @NonNull double... dArr) {
            Bundle bundle = this.zzay;
            Preconditions.m14523k(str);
            Preconditions.m14523k(dArr);
            if (dArr.length > 0) {
                if (dArr.length >= 100) {
                    zzt.zzn("Input Array of elements is too big, cutting off.");
                    dArr = Arrays.copyOf(dArr, 100);
                }
                bundle.putDoubleArray(str, dArr);
            } else {
                zzt.zzn("Double array is empty and is ignored by put method.");
            }
            return this;
        }

        public Builder put(@NonNull String str, @NonNull long... jArr) {
            IndexableBuilder.zza(this.zzay, str, jArr);
            return this;
        }

        public Builder put(@NonNull String str, @NonNull Indexable... indexableArr) throws FirebaseAppIndexingInvalidArgumentException {
            IndexableBuilder.zza(this.zzay, str, indexableArr);
            return this;
        }

        public Builder put(@NonNull String str, @NonNull String... strArr) {
            IndexableBuilder.zza(this.zzay, str, strArr);
            return this;
        }

        public Builder put(@NonNull String str, @NonNull boolean... zArr) {
            IndexableBuilder.zza(this.zzay, str, zArr);
            return this;
        }

        public Builder setActionStatus(@NonNull String str) {
            Preconditions.m14523k(str);
            this.zzek = str;
            return this;
        }

        public Builder setMetadata(@NonNull Metadata.Builder builder) {
            Preconditions.m14523k(builder);
            this.zzej = builder.zzz();
            return this;
        }

        public final Builder setName(@NonNull String str) {
            Preconditions.m14523k(str);
            this.zzeg = str;
            return put("name", str);
        }

        public Builder setObject(@NonNull String str, @NonNull String str2) {
            Preconditions.m14523k(str);
            Preconditions.m14523k(str2);
            this.zzeg = str;
            this.zzeh = str2;
            return this;
        }

        public Builder setObject(@NonNull String str, @NonNull String str2, @NonNull String str3) {
            Preconditions.m14523k(str);
            Preconditions.m14523k(str2);
            Preconditions.m14523k(str3);
            this.zzeg = str;
            this.zzeh = str2;
            this.zzei = str3;
            return this;
        }

        public Builder setResult(@NonNull Indexable... indexableArr) throws FirebaseAppIndexingInvalidArgumentException {
            return put("result", indexableArr);
        }

        public final Builder setUrl(@NonNull String str) {
            Preconditions.m14523k(str);
            this.zzeh = str;
            return put("url", str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final String zzy() {
            return new String(this.zzek);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/Action$Metadata.class */
    public interface Metadata {

        /* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/Action$Metadata$Builder.class */
        public static class Builder {
            private boolean zzel = true;
            private boolean zzem = false;

            public Builder setUpload(boolean z) {
                this.zzel = z;
                return this;
            }

            public final zzc zzz() {
                return new zzc(this.zzel, null, null, null, false);
            }
        }
    }
}
