package com.facebook.share.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareMessengerActionButton;
import com.facebook.share.model.ShareMessengerGenericTemplateContent;
import com.facebook.share.model.ShareMessengerMediaTemplateContent;
import com.facebook.share.model.ShareMessengerOpenGraphMusicTemplateContent;
import com.facebook.share.model.ShareMessengerURLActionButton;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.ShareOpenGraphValueContainer;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareStoryContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/facebook/share/internal/ShareContentValidation.class */
public class ShareContentValidation {
    private static Validator ApiValidator;
    private static Validator DefaultValidator;
    private static Validator StoryValidator;
    private static Validator WebShareValidator;

    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/ShareContentValidation$ApiValidator.class */
    public static class ApiValidator extends Validator {
        private ApiValidator() {
            super();
        }

        @Override // com.facebook.share.internal.ShareContentValidation.Validator
        public void validate(ShareLinkContent shareLinkContent) {
            if (Utility.isNullOrEmpty(shareLinkContent.getQuote())) {
                return;
            }
            throw new FacebookException("Cannot share link content with quote using the share api");
        }

        @Override // com.facebook.share.internal.ShareContentValidation.Validator
        public void validate(ShareMediaContent shareMediaContent) {
            throw new FacebookException("Cannot share ShareMediaContent using the share api");
        }

        @Override // com.facebook.share.internal.ShareContentValidation.Validator
        public void validate(SharePhoto sharePhoto) {
            ShareContentValidation.validatePhotoForApi(sharePhoto, this);
        }

        @Override // com.facebook.share.internal.ShareContentValidation.Validator
        public void validate(ShareVideoContent shareVideoContent) {
            if (Utility.isNullOrEmpty(shareVideoContent.getPlaceId())) {
                if (!Utility.isNullOrEmpty(shareVideoContent.getPeopleIds())) {
                    throw new FacebookException("Cannot share video content with people IDs using the share api");
                }
                if (!Utility.isNullOrEmpty(shareVideoContent.getRef())) {
                    throw new FacebookException("Cannot share video content with referrer URL using the share api");
                }
                return;
            }
            throw new FacebookException("Cannot share video content with place IDs using the share api");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/ShareContentValidation$StoryShareValidator.class */
    public static class StoryShareValidator extends Validator {
        private StoryShareValidator() {
            super();
        }

        @Override // com.facebook.share.internal.ShareContentValidation.Validator
        public void validate(ShareStoryContent shareStoryContent) {
            ShareContentValidation.validateStoryContent(shareStoryContent, this);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/ShareContentValidation$Validator.class */
    public static class Validator {
        private boolean isOpenGraphContent;

        private Validator() {
            this.isOpenGraphContent = false;
        }

        public boolean isOpenGraphContent() {
            return this.isOpenGraphContent;
        }

        public void validate(ShareCameraEffectContent shareCameraEffectContent) {
            ShareContentValidation.validateCameraEffectContent(shareCameraEffectContent, this);
        }

        public void validate(ShareLinkContent shareLinkContent) {
            ShareContentValidation.validateLinkContent(shareLinkContent, this);
        }

        public void validate(ShareMedia shareMedia) {
            ShareContentValidation.validateMedium(shareMedia, this);
        }

        public void validate(ShareMediaContent shareMediaContent) {
            ShareContentValidation.validateMediaContent(shareMediaContent, this);
        }

        public void validate(ShareMessengerGenericTemplateContent shareMessengerGenericTemplateContent) {
            ShareContentValidation.validateShareMessengerGenericTemplateContent(shareMessengerGenericTemplateContent);
        }

        public void validate(ShareMessengerMediaTemplateContent shareMessengerMediaTemplateContent) {
            ShareContentValidation.validateShareMessengerMediaTemplateContent(shareMessengerMediaTemplateContent);
        }

        public void validate(ShareMessengerOpenGraphMusicTemplateContent shareMessengerOpenGraphMusicTemplateContent) {
            ShareContentValidation.validateMessengerOpenGraphMusicTemplate(shareMessengerOpenGraphMusicTemplateContent);
        }

        public void validate(ShareOpenGraphAction shareOpenGraphAction) {
            ShareContentValidation.validateOpenGraphAction(shareOpenGraphAction, this);
        }

        public void validate(ShareOpenGraphContent shareOpenGraphContent) {
            this.isOpenGraphContent = true;
            ShareContentValidation.validateOpenGraphContent(shareOpenGraphContent, this);
        }

        public void validate(ShareOpenGraphObject shareOpenGraphObject) {
            ShareContentValidation.validateOpenGraphObject(shareOpenGraphObject, this);
        }

        public void validate(ShareOpenGraphValueContainer shareOpenGraphValueContainer, boolean z) {
            ShareContentValidation.validateOpenGraphValueContainer(shareOpenGraphValueContainer, this, z);
        }

        public void validate(SharePhoto sharePhoto) {
            ShareContentValidation.validatePhotoForNativeDialog(sharePhoto, this);
        }

        public void validate(SharePhotoContent sharePhotoContent) {
            ShareContentValidation.validatePhotoContent(sharePhotoContent, this);
        }

        public void validate(ShareStoryContent shareStoryContent) {
            ShareContentValidation.validateStoryContent(shareStoryContent, this);
        }

        public void validate(ShareVideo shareVideo) {
            ShareContentValidation.validateVideo(shareVideo, this);
        }

        public void validate(ShareVideoContent shareVideoContent) {
            ShareContentValidation.validateVideoContent(shareVideoContent, this);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/ShareContentValidation$WebShareValidator.class */
    public static class WebShareValidator extends Validator {
        private WebShareValidator() {
            super();
        }

        @Override // com.facebook.share.internal.ShareContentValidation.Validator
        public void validate(ShareMediaContent shareMediaContent) {
            throw new FacebookException("Cannot share ShareMediaContent via web sharing dialogs");
        }

        @Override // com.facebook.share.internal.ShareContentValidation.Validator
        public void validate(SharePhoto sharePhoto) {
            ShareContentValidation.validatePhotoForWebDialog(sharePhoto, this);
        }

        @Override // com.facebook.share.internal.ShareContentValidation.Validator
        public void validate(ShareVideoContent shareVideoContent) {
            throw new FacebookException("Cannot share ShareVideoContent via web sharing dialogs");
        }
    }

    private static Validator getApiValidator() {
        if (ApiValidator == null) {
            ApiValidator = new ApiValidator();
        }
        return ApiValidator;
    }

    private static Validator getDefaultValidator() {
        if (DefaultValidator == null) {
            DefaultValidator = new Validator();
        }
        return DefaultValidator;
    }

    private static Validator getStoryValidator() {
        if (StoryValidator == null) {
            StoryValidator = new StoryShareValidator();
        }
        return StoryValidator;
    }

    private static Validator getWebShareValidator() {
        if (WebShareValidator == null) {
            WebShareValidator = new WebShareValidator();
        }
        return WebShareValidator;
    }

    private static void validate(ShareContent shareContent, Validator validator) throws FacebookException {
        if (shareContent != null) {
            if (shareContent instanceof ShareLinkContent) {
                validator.validate((ShareLinkContent) shareContent);
                return;
            } else if (shareContent instanceof SharePhotoContent) {
                validator.validate((SharePhotoContent) shareContent);
                return;
            } else if (shareContent instanceof ShareVideoContent) {
                validator.validate((ShareVideoContent) shareContent);
                return;
            } else if (shareContent instanceof ShareOpenGraphContent) {
                validator.validate((ShareOpenGraphContent) shareContent);
                return;
            } else if (shareContent instanceof ShareMediaContent) {
                validator.validate((ShareMediaContent) shareContent);
                return;
            } else if (shareContent instanceof ShareCameraEffectContent) {
                validator.validate((ShareCameraEffectContent) shareContent);
                return;
            } else if (shareContent instanceof ShareMessengerOpenGraphMusicTemplateContent) {
                validator.validate((ShareMessengerOpenGraphMusicTemplateContent) shareContent);
                return;
            } else if (shareContent instanceof ShareMessengerMediaTemplateContent) {
                validator.validate((ShareMessengerMediaTemplateContent) shareContent);
                return;
            } else if (shareContent instanceof ShareMessengerGenericTemplateContent) {
                validator.validate((ShareMessengerGenericTemplateContent) shareContent);
                return;
            } else if (!(shareContent instanceof ShareStoryContent)) {
                return;
            } else {
                validator.validate((ShareStoryContent) shareContent);
                return;
            }
        }
        throw new FacebookException("Must provide non-null content to share");
    }

    public static void validateCameraEffectContent(ShareCameraEffectContent shareCameraEffectContent, Validator validator) {
        if (!Utility.isNullOrEmpty(shareCameraEffectContent.getEffectId())) {
            return;
        }
        throw new FacebookException("Must specify a non-empty effectId");
    }

    public static void validateForApiShare(ShareContent shareContent) {
        validate(shareContent, getApiValidator());
    }

    public static void validateForMessage(ShareContent shareContent) {
        validate(shareContent, getDefaultValidator());
    }

    public static void validateForNativeShare(ShareContent shareContent) {
        validate(shareContent, getDefaultValidator());
    }

    public static void validateForStoryShare(ShareContent shareContent) {
        validate(shareContent, getStoryValidator());
    }

    public static void validateForWebShare(ShareContent shareContent) {
        validate(shareContent, getWebShareValidator());
    }

    public static void validateLinkContent(ShareLinkContent shareLinkContent, Validator validator) {
        Uri imageUrl = shareLinkContent.getImageUrl();
        if (imageUrl == null || Utility.isWebUri(imageUrl)) {
            return;
        }
        throw new FacebookException("Image Url must be an http:// or https:// url");
    }

    public static void validateMediaContent(ShareMediaContent shareMediaContent, Validator validator) {
        List<ShareMedia> media = shareMediaContent.getMedia();
        if (media == null || media.isEmpty()) {
            throw new FacebookException("Must specify at least one medium in ShareMediaContent.");
        }
        if (media.size() > 6) {
            throw new FacebookException(String.format(Locale.ROOT, "Cannot add more than %d media.", 6));
        }
        for (ShareMedia shareMedia : media) {
            validator.validate(shareMedia);
        }
    }

    public static void validateMedium(ShareMedia shareMedia, Validator validator) {
        if (shareMedia instanceof SharePhoto) {
            validator.validate((SharePhoto) shareMedia);
        } else if (!(shareMedia instanceof ShareVideo)) {
            throw new FacebookException(String.format(Locale.ROOT, "Invalid media type: %s", shareMedia.getClass().getSimpleName()));
        } else {
            validator.validate((ShareVideo) shareMedia);
        }
    }

    public static void validateMessengerOpenGraphMusicTemplate(ShareMessengerOpenGraphMusicTemplateContent shareMessengerOpenGraphMusicTemplateContent) {
        if (!Utility.isNullOrEmpty(shareMessengerOpenGraphMusicTemplateContent.getPageId())) {
            if (shareMessengerOpenGraphMusicTemplateContent.getUrl() == null) {
                throw new FacebookException("Must specify url for ShareMessengerOpenGraphMusicTemplateContent");
            }
            validateShareMessengerActionButton(shareMessengerOpenGraphMusicTemplateContent.getButton());
            return;
        }
        throw new FacebookException("Must specify Page Id for ShareMessengerOpenGraphMusicTemplateContent");
    }

    public static void validateOpenGraphAction(ShareOpenGraphAction shareOpenGraphAction, Validator validator) {
        if (shareOpenGraphAction != null) {
            if (Utility.isNullOrEmpty(shareOpenGraphAction.getActionType())) {
                throw new FacebookException("ShareOpenGraphAction must have a non-empty actionType");
            }
            validator.validate(shareOpenGraphAction, false);
            return;
        }
        throw new FacebookException("Must specify a non-null ShareOpenGraphAction");
    }

    public static void validateOpenGraphContent(ShareOpenGraphContent shareOpenGraphContent, Validator validator) {
        validator.validate(shareOpenGraphContent.getAction());
        String previewPropertyName = shareOpenGraphContent.getPreviewPropertyName();
        if (!Utility.isNullOrEmpty(previewPropertyName)) {
            if (shareOpenGraphContent.getAction().get(previewPropertyName) != null) {
                return;
            }
            throw new FacebookException("Property \"" + previewPropertyName + "\" was not found on the action. The name of the preview property must match the name of an action property.");
        }
        throw new FacebookException("Must specify a previewPropertyName.");
    }

    private static void validateOpenGraphKey(String str, boolean z) {
        if (!z) {
            return;
        }
        String[] split = str.split(":");
        if (split.length < 2) {
            throw new FacebookException("Open Graph keys must be namespaced: %s", str);
        }
        for (String str2 : split) {
            if (str2.isEmpty()) {
                throw new FacebookException("Invalid key found in Open Graph dictionary: %s", str);
            }
        }
    }

    public static void validateOpenGraphObject(ShareOpenGraphObject shareOpenGraphObject, Validator validator) {
        if (shareOpenGraphObject != null) {
            validator.validate(shareOpenGraphObject, true);
            return;
        }
        throw new FacebookException("Cannot share a null ShareOpenGraphObject");
    }

    public static void validateOpenGraphValueContainer(ShareOpenGraphValueContainer shareOpenGraphValueContainer, Validator validator, boolean z) {
        for (String str : shareOpenGraphValueContainer.keySet()) {
            validateOpenGraphKey(str, z);
            Object obj = shareOpenGraphValueContainer.get(str);
            if (obj instanceof List) {
                for (Object obj2 : (List) obj) {
                    if (obj2 == null) {
                        throw new FacebookException("Cannot put null objects in Lists in ShareOpenGraphObjects and ShareOpenGraphActions");
                    }
                    validateOpenGraphValueContainerObject(obj2, validator);
                }
                continue;
            } else {
                validateOpenGraphValueContainerObject(obj, validator);
            }
        }
    }

    private static void validateOpenGraphValueContainerObject(Object obj, Validator validator) {
        if (obj instanceof ShareOpenGraphObject) {
            validator.validate((ShareOpenGraphObject) obj);
        } else if (!(obj instanceof SharePhoto)) {
        } else {
            validator.validate((SharePhoto) obj);
        }
    }

    private static void validatePhoto(SharePhoto sharePhoto) {
        if (sharePhoto != null) {
            Bitmap bitmap = sharePhoto.getBitmap();
            Uri imageUrl = sharePhoto.getImageUrl();
            if (bitmap != null || imageUrl != null) {
                return;
            }
            throw new FacebookException("SharePhoto does not have a Bitmap or ImageUrl specified");
        }
        throw new FacebookException("Cannot share a null SharePhoto");
    }

    public static void validatePhotoContent(SharePhotoContent sharePhotoContent, Validator validator) {
        List<SharePhoto> photos = sharePhotoContent.getPhotos();
        if (photos == null || photos.isEmpty()) {
            throw new FacebookException("Must specify at least one Photo in SharePhotoContent.");
        }
        if (photos.size() > 6) {
            throw new FacebookException(String.format(Locale.ROOT, "Cannot add more than %d photos.", 6));
        }
        for (SharePhoto sharePhoto : photos) {
            validator.validate(sharePhoto);
        }
    }

    public static void validatePhotoForApi(SharePhoto sharePhoto, Validator validator) {
        validatePhoto(sharePhoto);
        Bitmap bitmap = sharePhoto.getBitmap();
        Uri imageUrl = sharePhoto.getImageUrl();
        if (bitmap != null || !Utility.isWebUri(imageUrl) || validator.isOpenGraphContent()) {
            return;
        }
        throw new FacebookException("Cannot set the ImageUrl of a SharePhoto to the Uri of an image on the web when sharing SharePhotoContent");
    }

    public static void validatePhotoForNativeDialog(SharePhoto sharePhoto, Validator validator) {
        validatePhotoForApi(sharePhoto, validator);
        if (sharePhoto.getBitmap() != null || !Utility.isWebUri(sharePhoto.getImageUrl())) {
            Validate.hasContentProvider(FacebookSdk.getApplicationContext());
        }
    }

    public static void validatePhotoForWebDialog(SharePhoto sharePhoto, Validator validator) {
        validatePhoto(sharePhoto);
    }

    private static void validateShareMessengerActionButton(ShareMessengerActionButton shareMessengerActionButton) {
        if (shareMessengerActionButton == null) {
            return;
        }
        if (Utility.isNullOrEmpty(shareMessengerActionButton.getTitle())) {
            throw new FacebookException("Must specify title for ShareMessengerActionButton");
        }
        if (!(shareMessengerActionButton instanceof ShareMessengerURLActionButton)) {
            return;
        }
        validateShareMessengerURLActionButton((ShareMessengerURLActionButton) shareMessengerActionButton);
    }

    public static void validateShareMessengerGenericTemplateContent(ShareMessengerGenericTemplateContent shareMessengerGenericTemplateContent) {
        if (!Utility.isNullOrEmpty(shareMessengerGenericTemplateContent.getPageId())) {
            if (shareMessengerGenericTemplateContent.getGenericTemplateElement() == null) {
                throw new FacebookException("Must specify element for ShareMessengerGenericTemplateContent");
            }
            if (Utility.isNullOrEmpty(shareMessengerGenericTemplateContent.getGenericTemplateElement().getTitle())) {
                throw new FacebookException("Must specify title for ShareMessengerGenericTemplateElement");
            }
            validateShareMessengerActionButton(shareMessengerGenericTemplateContent.getGenericTemplateElement().getButton());
            return;
        }
        throw new FacebookException("Must specify Page Id for ShareMessengerGenericTemplateContent");
    }

    public static void validateShareMessengerMediaTemplateContent(ShareMessengerMediaTemplateContent shareMessengerMediaTemplateContent) {
        if (!Utility.isNullOrEmpty(shareMessengerMediaTemplateContent.getPageId())) {
            if (shareMessengerMediaTemplateContent.getMediaUrl() == null && Utility.isNullOrEmpty(shareMessengerMediaTemplateContent.getAttachmentId())) {
                throw new FacebookException("Must specify either attachmentId or mediaURL for ShareMessengerMediaTemplateContent");
            }
            validateShareMessengerActionButton(shareMessengerMediaTemplateContent.getButton());
            return;
        }
        throw new FacebookException("Must specify Page Id for ShareMessengerMediaTemplateContent");
    }

    private static void validateShareMessengerURLActionButton(ShareMessengerURLActionButton shareMessengerURLActionButton) {
        if (shareMessengerURLActionButton.getUrl() != null) {
            return;
        }
        throw new FacebookException("Must specify url for ShareMessengerURLActionButton");
    }

    public static void validateStoryContent(ShareStoryContent shareStoryContent, Validator validator) {
        if (shareStoryContent == null || (shareStoryContent.getBackgroundAsset() == null && shareStoryContent.getStickerAsset() == null)) {
            throw new FacebookException("Must pass the Facebook app a background asset, a sticker asset, or both");
        }
        if (shareStoryContent.getBackgroundAsset() != null) {
            validator.validate(shareStoryContent.getBackgroundAsset());
        }
        if (shareStoryContent.getStickerAsset() == null) {
            return;
        }
        validator.validate(shareStoryContent.getStickerAsset());
    }

    public static void validateVideo(ShareVideo shareVideo, Validator validator) {
        if (shareVideo != null) {
            Uri localUrl = shareVideo.getLocalUrl();
            if (localUrl == null) {
                throw new FacebookException("ShareVideo does not have a LocalUrl specified");
            }
            if (!Utility.isContentUri(localUrl) && !Utility.isFileUri(localUrl)) {
                throw new FacebookException("ShareVideo must reference a video that is on the device");
            }
            return;
        }
        throw new FacebookException("Cannot share a null ShareVideo");
    }

    public static void validateVideoContent(ShareVideoContent shareVideoContent, Validator validator) {
        validator.validate(shareVideoContent.getVideo());
        SharePhoto previewPhoto = shareVideoContent.getPreviewPhoto();
        if (previewPhoto != null) {
            validator.validate(previewPhoto);
        }
    }
}
