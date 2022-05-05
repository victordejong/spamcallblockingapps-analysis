package zendesk.belvedere;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStreamService.class */
class ImageStreamService {
    private static final String[] PROJECTION = {"_id", "_display_name", "_size", SettingsJsonConstants.ICON_WIDTH_KEY, SettingsJsonConstants.ICON_HEIGHT_KEY};
    private final Context context;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImageStreamService(Context context) {
        this.context = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAppAvailable(String str) {
        return Utils.isAppAvailable(str, this.context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<MediaResult> queryRecentImages(int i) {
        ArrayList arrayList = new ArrayList();
        Cursor query = this.context.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, PROJECTION, null, null, String.format(Locale.US, "%s DESC LIMIT %s", "datetaken", Integer.valueOf(i)));
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    Uri contentUri = MediaStore.Files.getContentUri("external", query.getLong(query.getColumnIndex("_id")));
                    long j = query.getLong(query.getColumnIndex("_size"));
                    long j2 = query.getLong(query.getColumnIndex(SettingsJsonConstants.ICON_WIDTH_KEY));
                    long j3 = query.getLong(query.getColumnIndex(SettingsJsonConstants.ICON_HEIGHT_KEY));
                    String string = query.getString(query.getColumnIndex("_display_name"));
                    String str = "image/jpeg";
                    if (!TextUtils.isEmpty(string)) {
                        int lastIndexOf = string.lastIndexOf(".");
                        str = "image/jpeg";
                        if (lastIndexOf != -1) {
                            str = MimeTypeMap.getSingleton().getMimeTypeFromExtension(string.substring(lastIndexOf + 1));
                        }
                    }
                    arrayList.add(new MediaResult(null, contentUri, contentUri, string, str, j, j2, j3));
                } finally {
                    if (query != null) {
                        query.close();
                    }
                }
            }
        }
        return arrayList;
    }
}
