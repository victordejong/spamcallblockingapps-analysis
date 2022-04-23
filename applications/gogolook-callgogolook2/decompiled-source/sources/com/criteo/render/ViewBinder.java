package com.criteo.render;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/criteo/render/ViewBinder.class */
public class ViewBinder {
    public final int advertiserDescriptionId;
    public final int advertiserDomainId;
    public final int advertiserImageId;
    public final int advertiserLegalTextId;
    public final int callToActionId;
    public final int discriptionId;
    @NonNull
    public final Map<String, Integer> extras;
    public final int layoutId;
    public final int mainImageId;
    public final int priceId;
    public final int privacyInformationIconImageId;
    public final int titleId;

    /* loaded from: classes-dex2jar.jar:com/criteo/render/ViewBinder$Builder.class */
    public static final class Builder {
        public int advertiserDescriptionId;
        public int advertiserDomainId;
        public int advertiserImageId;
        public int advertiserLegalTextId;
        public int callToActionId;
        public int descriptionId;
        @NonNull
        public Map<String, Integer> extras;
        public int layoutId;
        public int mainImageId;
        public int priceId;
        public int privacyInformationIconImageId;
        public int titleId;

        public Builder(int i) {
            this.extras = Collections.emptyMap();
            this.layoutId = i;
            this.extras = new HashMap();
        }

        @NonNull
        public final Builder advertiserDescriptionId(int i) {
            this.advertiserDescriptionId = i;
            return this;
        }

        @NonNull
        public final Builder advertiserDomainId(int i) {
            this.advertiserDomainId = i;
            return this;
        }

        @NonNull
        public final Builder advertiserImageId(int i) {
            this.advertiserImageId = i;
            return this;
        }

        @NonNull
        public final Builder advertiserLegalTextId(int i) {
            this.advertiserLegalTextId = i;
            return this;
        }

        @NonNull
        public final ViewBinder build() {
            return new ViewBinder(this);
        }

        @NonNull
        public final Builder callToActionId(int i) {
            this.callToActionId = i;
            return this;
        }

        @NonNull
        public final Builder descriptionId(int i) {
            this.descriptionId = i;
            return this;
        }

        @NonNull
        public final Builder mainImageId(int i) {
            this.mainImageId = i;
            return this;
        }

        @NonNull
        public final Builder priceId(int i) {
            this.priceId = i;
            return this;
        }

        @NonNull
        public final Builder privacyIconImageId(int i) {
            this.privacyInformationIconImageId = i;
            return this;
        }

        @NonNull
        public final Builder titleId(int i) {
            this.titleId = i;
            return this;
        }
    }

    public ViewBinder(@NonNull Builder builder) {
        this.layoutId = builder.layoutId;
        this.titleId = builder.titleId;
        this.discriptionId = builder.descriptionId;
        this.callToActionId = builder.callToActionId;
        this.mainImageId = builder.mainImageId;
        this.priceId = builder.priceId;
        this.privacyInformationIconImageId = builder.privacyInformationIconImageId;
        this.advertiserImageId = builder.advertiserImageId;
        this.advertiserDescriptionId = builder.advertiserDescriptionId;
        this.advertiserDomainId = builder.advertiserDomainId;
        this.advertiserLegalTextId = builder.advertiserLegalTextId;
        this.extras = builder.extras;
    }
}
