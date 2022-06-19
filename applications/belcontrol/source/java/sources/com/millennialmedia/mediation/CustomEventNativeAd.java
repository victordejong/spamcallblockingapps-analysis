package com.millennialmedia.mediation;

import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/mediation/CustomEventNativeAd.class */
public class CustomEventNativeAd {
    private TextComponent body;
    private TextComponent callToAction;
    private TextComponent disclaimer;
    private ImageComponent iconUrl;
    private ImageComponent mainImageUrl;
    private TextComponent rating;
    private TextComponent title;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/mediation/CustomEventNativeAd$Component.class */
    public static abstract class Component {
        public String clickThroughUrl;
        public List<String> clickTrackingUrls;
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/mediation/CustomEventNativeAd$ImageComponent.class */
    public static class ImageComponent extends Component {
        public String imageUrl;
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/mediation/CustomEventNativeAd$TextComponent.class */
    public static class TextComponent extends Component {
        public String value;
    }

    public TextComponent getBody() {
        return this.body;
    }

    public TextComponent getCallToAction() {
        return this.callToAction;
    }

    public TextComponent getDisclaimer() {
        return this.disclaimer;
    }

    public ImageComponent getIconUrl() {
        return this.iconUrl;
    }

    public ImageComponent getMainImageUrl() {
        return this.mainImageUrl;
    }

    public TextComponent getRating() {
        return this.rating;
    }

    public TextComponent getTitle() {
        return this.title;
    }

    public void setBody(TextComponent textComponent) {
        this.body = textComponent;
    }

    public void setCallToAction(TextComponent textComponent) {
        this.callToAction = textComponent;
    }

    public void setDisclaimer(TextComponent textComponent) {
        this.disclaimer = textComponent;
    }

    public void setIconUrl(ImageComponent imageComponent) {
        this.iconUrl = imageComponent;
    }

    public void setMainImageUrl(ImageComponent imageComponent) {
        this.mainImageUrl = imageComponent;
    }

    public void setRating(TextComponent textComponent) {
        this.rating = textComponent;
    }

    public void setTitle(TextComponent textComponent) {
        this.title = textComponent;
    }
}
