package zendesk.support.request;

import android.support.p004v7.app.AppCompatActivity;
import com.zendesk.sdk.C1790R;
import com.zendesk.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import zendesk.belvedere.BelvedereUi;
import zendesk.belvedere.MediaResult;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/AttachmentHelper.class */
class AttachmentHelper {
    private final int[] touchableItems;
    private long maxFileSize = -1;
    private List<StateRequestAttachment> selectedAttachments = new ArrayList();
    private List<StateRequestAttachment> additionalAttachments = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public AttachmentHelper(int... iArr) {
        this.touchableItems = iArr;
    }

    private List<MediaResult> requestAttachmentsToMediaResult(List<StateRequestAttachment> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (StateRequestAttachment stateRequestAttachment : list) {
            arrayList.add(StateRequestAttachment.convert(stateRequestAttachment));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<StateRequestAttachment> getSelectedAttachments() {
        return CollectionUtils.copyOf(this.selectedAttachments);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void showImagePicker(AppCompatActivity appCompatActivity) {
        BelvedereUi.ImageStreamBuilder withExtraItems = BelvedereUi.imageStream(appCompatActivity).withCameraIntent().withDocumentIntent("*/*", true).withSelectedItems(requestAttachmentsToMediaResult(this.selectedAttachments)).withFullScreenOnly(appCompatActivity.getResources().getBoolean(C1790R.bool.zs_request_image_picker_full_screen)).withExtraItems(requestAttachmentsToMediaResult(this.additionalAttachments));
        BelvedereUi.ImageStreamBuilder imageStreamBuilder = withExtraItems;
        if (this.touchableItems != null) {
            imageStreamBuilder = withExtraItems;
            if (this.touchableItems.length > 0) {
                imageStreamBuilder = withExtraItems.withTouchableItems(this.touchableItems);
            }
        }
        BelvedereUi.ImageStreamBuilder imageStreamBuilder2 = imageStreamBuilder;
        if (this.maxFileSize > 0) {
            imageStreamBuilder2 = imageStreamBuilder.withMaxFileSize(this.maxFileSize);
        }
        imageStreamBuilder2.showPopup(appCompatActivity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateAttachments(Collection<StateRequestAttachment> collection, Collection<StateRequestAttachment> collection2) {
        this.selectedAttachments = CollectionUtils.copyOf(new ArrayList(collection));
        this.additionalAttachments = CollectionUtils.copyOf(new ArrayList(collection2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateMaxFileSize(long j) {
        this.maxFileSize = j;
    }
}
