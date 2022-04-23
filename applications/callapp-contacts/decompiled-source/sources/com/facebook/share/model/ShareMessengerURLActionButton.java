package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareMessengerActionButton;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareMessengerURLActionButton.class */
public final class ShareMessengerURLActionButton extends ShareMessengerActionButton {
    public static final Parcelable.Creator<ShareMessengerURLActionButton> CREATOR = new Parcelable.Creator<ShareMessengerURLActionButton>() { // from class: com.facebook.share.model.ShareMessengerURLActionButton.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ShareMessengerURLActionButton createFromParcel(Parcel parcel) {
            return new ShareMessengerURLActionButton(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ShareMessengerURLActionButton[] newArray(int i) {
            return new ShareMessengerURLActionButton[i];
        }
    };
    private final Uri fallbackUrl;
    private final boolean isMessengerExtensionURL;
    private final boolean shouldHideWebviewShareButton;
    private final Uri url;
    private final WebviewHeightRatio webviewHeightRatio;

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareMessengerURLActionButton$Builder.class */
    public static final class Builder extends ShareMessengerActionButton.Builder<ShareMessengerURLActionButton, Builder> {
        private Uri fallbackUrl;
        private boolean isMessengerExtensionURL;
        private boolean shouldHideWebviewShareButton;
        private Uri url;
        private WebviewHeightRatio webviewHeightRatio;

        public final ShareMessengerURLActionButton build() {
            return new ShareMessengerURLActionButton(this);
        }

        public final Builder readFrom(ShareMessengerURLActionButton shareMessengerURLActionButton) {
            return shareMessengerURLActionButton == null ? this : setUrl(shareMessengerURLActionButton.getUrl()).setIsMessengerExtensionURL(shareMessengerURLActionButton.getIsMessengerExtensionURL()).setFallbackUrl(shareMessengerURLActionButton.getFallbackUrl()).setWebviewHeightRatio(shareMessengerURLActionButton.getWebviewHeightRatio()).setShouldHideWebviewShareButton(shareMessengerURLActionButton.getShouldHideWebviewShareButton());
        }

        public final Builder setFallbackUrl(Uri uri) {
            this.fallbackUrl = uri;
            return this;
        }

        public final Builder setIsMessengerExtensionURL(boolean z) {
            this.isMessengerExtensionURL = z;
            return this;
        }

        public final Builder setShouldHideWebviewShareButton(boolean z) {
            this.shouldHideWebviewShareButton = z;
            return this;
        }

        public final Builder setUrl(Uri uri) {
            this.url = uri;
            return this;
        }

        public final Builder setWebviewHeightRatio(WebviewHeightRatio webviewHeightRatio) {
            this.webviewHeightRatio = webviewHeightRatio;
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio.class */
    public enum WebviewHeightRatio {
        WebviewHeightRatioFull,
        WebviewHeightRatioTall,
        WebviewHeightRatioCompact
    }

    ShareMessengerURLActionButton(Parcel parcel) {
        super(parcel);
        this.url = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        boolean z = true;
        this.isMessengerExtensionURL = parcel.readByte() != 0;
        this.fallbackUrl = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.webviewHeightRatio = (WebviewHeightRatio) parcel.readSerializable();
        if (parcel.readByte() == 0) {
            z = false;
        }
        this.shouldHideWebviewShareButton = z;
    }

    private ShareMessengerURLActionButton(Builder builder) {
        super(builder);
        this.url = builder.url;
        this.isMessengerExtensionURL = builder.isMessengerExtensionURL;
        this.fallbackUrl = builder.fallbackUrl;
        this.webviewHeightRatio = builder.webviewHeightRatio;
        this.shouldHideWebviewShareButton = builder.shouldHideWebviewShareButton;
    }

    public final Uri getFallbackUrl() {
        return this.fallbackUrl;
    }

    public final boolean getIsMessengerExtensionURL() {
        return this.isMessengerExtensionURL;
    }

    public final boolean getShouldHideWebviewShareButton() {
        return this.shouldHideWebviewShareButton;
    }

    public final Uri getUrl() {
        return this.url;
    }

    public final WebviewHeightRatio getWebviewHeightRatio() {
        return this.webviewHeightRatio;
    }
}
