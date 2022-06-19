package fydialer;

import android.database.Cursor;
import android.net.Uri;
/* loaded from: classes2-dex2jar.jar:fydialer/IContactSplit.class */
public interface IContactSplit {
    Uri getCallUri(Uri uri);

    Uri getContactUri(Uri uri);

    String getDisplayName(Cursor cursor);

    Uri getLookupUri(Cursor cursor);
}
