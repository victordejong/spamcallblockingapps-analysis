package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.service.ZendeskCallback;
import java.io.File;
/* loaded from: classes3-dex2jar.jar:zendesk/support/UploadProvider.class */
public interface UploadProvider {
    void deleteAttachment(@NonNull String str, @Nullable ZendeskCallback<Void> zendeskCallback);

    void uploadAttachment(@NonNull String str, @NonNull File file, @NonNull String str2, @Nullable ZendeskCallback<UploadResponse> zendeskCallback);
}
