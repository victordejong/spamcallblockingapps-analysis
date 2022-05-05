package zendesk.belvedere;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import zendesk.belvedere.BelvedereUi;
import zendesk.belvedere.ImageStreamMvp;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStreamModel.class */
public class ImageStreamModel implements ImageStreamMvp.Model {
    private static final String GOOGLE_PHOTOS_PACKAGE_NAME = "com.google.android.apps.photos";
    private static final int MAX_IMAGES = 500;
    private final List<MediaResult> additionalMediaResults;
    private final boolean fullScreenOnly;
    private final ImageStreamService imageStreamService;
    private final long maxFileSize;
    private final List<MediaIntent> mediaIntents;
    private final List<MediaResult> selectedMediaResults;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImageStreamModel(Context context, BelvedereUi.UiConfig uiConfig) {
        this.imageStreamService = new ImageStreamService(context);
        this.mediaIntents = uiConfig.getIntents();
        this.selectedMediaResults = uiConfig.getSelectedItems();
        this.additionalMediaResults = uiConfig.getExtraItems();
        this.maxFileSize = uiConfig.getMaxFileSize();
        this.fullScreenOnly = uiConfig.showFullScreenOnly();
    }

    @VisibleForTesting
    ImageStreamModel(ImageStreamService imageStreamService, long j, List<MediaIntent> list, List<MediaResult> list2, List<MediaResult> list3, boolean z) {
        this.imageStreamService = imageStreamService;
        this.maxFileSize = j;
        this.mediaIntents = list;
        this.selectedMediaResults = list2;
        this.additionalMediaResults = list3;
        this.fullScreenOnly = z;
    }

    private MediaIntent getIntentForTarget(int i) {
        for (MediaIntent mediaIntent : this.mediaIntents) {
            if (mediaIntent.getTarget() == i) {
                return mediaIntent;
            }
        }
        return null;
    }

    private List<MediaResult> mergeMediaResultLists(List<MediaResult> list, List<MediaResult> list2) {
        HashSet hashSet = new HashSet(list.size());
        for (MediaResult mediaResult : list) {
            hashSet.add(mediaResult.getOriginalUri());
        }
        ArrayList arrayList = new ArrayList(list.size() + list2.size());
        arrayList.addAll(list);
        for (int size = list2.size() - 1; size >= 0; size--) {
            MediaResult mediaResult2 = list2.get(size);
            if (!hashSet.contains(mediaResult2.getOriginalUri())) {
                arrayList.add(0, mediaResult2);
            }
        }
        return arrayList;
    }

    @Override // zendesk.belvedere.ImageStreamMvp.Model
    public List<MediaResult> addToSelectedItems(MediaResult mediaResult) {
        this.selectedMediaResults.add(mediaResult);
        return this.selectedMediaResults;
    }

    @Override // zendesk.belvedere.ImageStreamMvp.Model
    public MediaIntent getCameraIntent() {
        return getIntentForTarget(2);
    }

    @Override // zendesk.belvedere.ImageStreamMvp.Model
    public MediaIntent getDocumentIntent() {
        return getIntentForTarget(1);
    }

    @Override // zendesk.belvedere.ImageStreamMvp.Model
    public MediaIntent getGooglePhotosIntent() {
        MediaIntent documentIntent = getDocumentIntent();
        if (documentIntent == null) {
            return null;
        }
        Intent intent = documentIntent.getIntent();
        intent.setPackage(GOOGLE_PHOTOS_PACKAGE_NAME);
        intent.setAction("android.intent.action.GET_CONTENT");
        return documentIntent;
    }

    @Override // zendesk.belvedere.ImageStreamMvp.Model
    public List<MediaResult> getLatestImages() {
        return mergeMediaResultLists(this.imageStreamService.queryRecentImages(500), mergeMediaResultLists(this.additionalMediaResults, this.selectedMediaResults));
    }

    @Override // zendesk.belvedere.ImageStreamMvp.Model
    public long getMaxFileSize() {
        return this.maxFileSize;
    }

    @Override // zendesk.belvedere.ImageStreamMvp.Model
    public List<MediaResult> getSelectedMediaResults() {
        return this.selectedMediaResults;
    }

    @Override // zendesk.belvedere.ImageStreamMvp.Model
    public boolean hasCameraIntent() {
        return getCameraIntent() != null;
    }

    @Override // zendesk.belvedere.ImageStreamMvp.Model
    public boolean hasDocumentIntent() {
        return getDocumentIntent() != null;
    }

    @Override // zendesk.belvedere.ImageStreamMvp.Model
    public boolean hasGooglePhotosIntent() {
        return getDocumentIntent() != null && this.imageStreamService.isAppAvailable(GOOGLE_PHOTOS_PACKAGE_NAME);
    }

    @Override // zendesk.belvedere.ImageStreamMvp.Model
    public List<MediaResult> removeFromSelectedItems(MediaResult mediaResult) {
        this.selectedMediaResults.remove(mediaResult);
        return this.selectedMediaResults;
    }

    @Override // zendesk.belvedere.ImageStreamMvp.Model
    public boolean showFullScreenOnly() {
        return this.fullScreenOnly;
    }
}
