package zendesk.belvedere;

import android.graphics.BitmapFactory;
import android.support.annotation.NonNull;
import android.util.Pair;
import java.io.File;
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/BitmapUtils.class */
public class BitmapUtils {
    public static Pair<Integer, Integer> getImageDimensions(@NonNull File file) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        return Pair.create(Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
    }
}
