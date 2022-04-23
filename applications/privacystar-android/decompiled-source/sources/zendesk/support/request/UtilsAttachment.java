package zendesk.support.request;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.p001v4.content.ContextCompat;
import android.text.TextUtils;
import com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction;
import com.zendesk.sdk.C1790R;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.io.File;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import zendesk.belvedere.Belvedere;
import zendesk.belvedere.MediaResult;
import zendesk.support.IdUtil;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/UtilsAttachment.class */
public class UtilsAttachment {
    private static final String ATTACHMENT_SEPARATOR = ", ";
    private static final String ATTACHMENT_TEXT_BODY = "[%s]";
    private static final String PATH_PLACEHOLDER = "%s%s%s";
    private static final String SUPPORT_BELVEDERE_BASE_PATH = String.format(Locale.US, PATH_PLACEHOLDER, "zendesk", File.separator, "support");
    private static final String REQUEST_BELVEDERE_PATH = String.format(Locale.US, PATH_PLACEHOLDER, SUPPORT_BELVEDERE_BASE_PATH, File.separator, MessageCenterInteraction.KEY_PROFILE_REQUEST);
    private static final AttachmentNameComparator REQUEST_ATTACHMENT_COMPARATOR = new AttachmentNameComparator();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/UtilsAttachment$AttachmentNameComparator.class */
    public static class AttachmentNameComparator implements Comparator<StateRequestAttachment> {
        private AttachmentNameComparator() {
        }

        public int compare(StateRequestAttachment stateRequestAttachment, StateRequestAttachment stateRequestAttachment2) {
            return stateRequestAttachment.getName().compareTo(stateRequestAttachment2.getName());
        }
    }

    private UtilsAttachment() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Drawable getAppIcon(Context context, @Nullable ResolveInfo resolveInfo) {
        Drawable loadIcon = resolveInfo != null ? resolveInfo.loadIcon(context.getPackageManager()) : null;
        return loadIcon != null ? loadIcon : ContextCompat.getDrawable(context, 17301651);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ResolveInfo getAppInfoForFile(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        MediaResult file = Belvedere.from(context).getFile("tmp", str);
        if (file == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(file.getUri());
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        if (!CollectionUtils.isEmpty(queryIntentActivities)) {
            return queryIntentActivities.get(0);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CharSequence getAppName(Context context, @Nullable ResolveInfo resolveInfo) {
        CharSequence charSequence = "";
        if (resolveInfo != null) {
            charSequence = resolveInfo.loadLabel(context.getPackageManager());
        }
        return !TextUtils.isEmpty(charSequence) ? charSequence : context.getString(C1790R.string.request_attachment_generic_unknown_app);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getAttachmentSubDir(String str, long j) {
        return String.format(Locale.US, PATH_PLACEHOLDER, str, File.separator, Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getCacheDirForRequestId(String str) {
        return String.format(Locale.US, PATH_PLACEHOLDER, REQUEST_BELVEDERE_PATH, File.separator, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getContentDescriptionForAttachmentButton(Context context, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getString(C1790R.string.request_menu_button_label_add_attachments));
        sb.append(". ");
        if (i == 0) {
            sb.append(context.getString(C1790R.string.f317x5c772881));
        } else if (i == 1) {
            sb.append(context.getString(C1790R.string.f318x73d0b8a8));
        } else {
            sb.append(context.getString(C1790R.string.f316x38b7f720, Integer.valueOf(i)));
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MediaResult getLocalFile(Belvedere belvedere, String str, long j, String str2) {
        return belvedere.getFile(getAttachmentSubDir(getCacheDirForRequestId(str), j), str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getMessageBodyForAttachments(List<StateRequestAttachment> list) {
        List copyOf = CollectionUtils.copyOf(list);
        Collections.sort(copyOf, REQUEST_ATTACHMENT_COMPARATOR);
        StringBuilder sb = new StringBuilder();
        int size = copyOf.size();
        for (int i = 0; i < size; i++) {
            sb.append(((StateRequestAttachment) copyOf.get(i)).getName());
            if (i < size - 1) {
                sb.append(ATTACHMENT_SEPARATOR);
            }
        }
        return String.format(Locale.US, ATTACHMENT_TEXT_BODY, sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getTemporaryRequestCacheDir() {
        return String.format(Locale.US, PATH_PLACEHOLDER, REQUEST_BELVEDERE_PATH, File.separator, IdUtil.newStringId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean hasAttachmentBody(StateMessage stateMessage) {
        if (!CollectionUtils.isNotEmpty(stateMessage.getAttachments())) {
            return false;
        }
        return stateMessage.getBody().equals(getMessageBodyForAttachments(stateMessage.getAttachments()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isImageAttachment(StateRequestAttachment stateRequestAttachment) {
        String mimeType = stateRequestAttachment.getMimeType();
        return StringUtils.hasLength(mimeType) && mimeType.toLowerCase(Locale.US).startsWith("image");
    }
}
