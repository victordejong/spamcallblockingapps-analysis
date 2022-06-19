package com.freshchat.consumer.sdk;

import android.net.Uri;
import com.freshchat.consumer.sdk.p057j.C1626as;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/FreshchatImageLoaderRequest.class */
public class FreshchatImageLoaderRequest {
    private int errorResId;
    private boolean maintainAspectRatio;
    private int placeholderResId;
    private int targetHeight;
    private int targetWidth;
    private TransformType transformToApply;
    private final Uri uri;

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType.class */
    public enum TransformType {
        CIRCULAR
    }

    /* renamed from: com.freshchat.consumer.sdk.FreshchatImageLoaderRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a.class */
    public static class C1297a {
        private int errorResId;
        private boolean maintainAspectRatio;
        private int placeholderResId;
        private int targetHeight;
        private int targetWidth;
        private TransformType transformToApply;
        private final Uri uri;

        public C1297a(String str) {
            String m40230aH = C1626as.m40230aH(str);
            if (!C1626as.isEmpty(m40230aH)) {
                this.uri = Uri.parse(m40230aH);
                return;
            }
            throw new IllegalArgumentException("Path must not be empty.");
        }

        /* renamed from: G */
        public C1297a m41535G(int i) {
            this.placeholderResId = i;
            return this;
        }

        /* renamed from: H */
        public C1297a m41534H(int i) {
            this.errorResId = i;
            return this;
        }

        /* renamed from: a */
        public C1297a m41533a(int i, int i2) {
            return m41532a(i, i2, true);
        }

        /* renamed from: a */
        public C1297a m41532a(int i, int i2, boolean z) {
            this.targetWidth = i;
            this.targetHeight = i2;
            this.maintainAspectRatio = z;
            return this;
        }

        /* renamed from: a */
        public C1297a m41531a(TransformType transformType) {
            this.transformToApply = transformType;
            return this;
        }

        /* renamed from: dM */
        public FreshchatImageLoaderRequest m41530dM() {
            FreshchatImageLoaderRequest freshchatImageLoaderRequest = new FreshchatImageLoaderRequest(this.uri);
            freshchatImageLoaderRequest.placeholderResId = this.placeholderResId;
            freshchatImageLoaderRequest.errorResId = this.errorResId;
            freshchatImageLoaderRequest.transformToApply = this.transformToApply;
            freshchatImageLoaderRequest.maintainAspectRatio = this.maintainAspectRatio;
            freshchatImageLoaderRequest.targetWidth = this.targetWidth;
            freshchatImageLoaderRequest.targetHeight = this.targetHeight;
            return freshchatImageLoaderRequest;
        }
    }

    private FreshchatImageLoaderRequest(Uri uri) {
        this.uri = uri;
    }

    public int getErrorResId() {
        return this.errorResId;
    }

    public int getPlaceholderResId() {
        return this.placeholderResId;
    }

    public int getTargetHeight() {
        return this.targetHeight;
    }

    public int getTargetWidth() {
        return this.targetWidth;
    }

    public TransformType getTransformToApply() {
        return this.transformToApply;
    }

    public Uri getUri() {
        return this.uri;
    }

    public void setMaintainAspectRatio(boolean z) {
        this.maintainAspectRatio = z;
    }

    public void setTargetHeight(int i) {
        this.targetHeight = i;
    }

    public void setTargetWidth(int i) {
        this.targetWidth = i;
    }

    public void setTransformToApply(TransformType transformType) {
        this.transformToApply = transformType;
    }

    public boolean shouldMaintainAspectRatio() {
        return this.maintainAspectRatio;
    }
}
