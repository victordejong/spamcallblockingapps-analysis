package fydialer;

import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
/* loaded from: classes2-dex2jar.jar:fydialer/ContactAccessor.class */
public abstract class ContactAccessor {
    private static ContactAccessor sInstance;

    public static ContactAccessor getInstance(ContentResolver contentResolver) {
        ContactAccessor contactAccessor;
        synchronized (ContactAccessor.class) {
            try {
                if (sInstance == null) {
                    try {
                        ContactAccessor contactAccessor2 = (ContactAccessor) Class.forName(Integer.parseInt(Build.VERSION.SDK) < 5 ? "fydialer.ContactAccessorSdk3_4" : "fydialer.ContactAccessorSdk5").asSubclass(ContactAccessor.class).newInstance();
                        sInstance = contactAccessor2;
                        contactAccessor2.setContentResolver(contentResolver);
                    } catch (Exception e) {
                        throw new IllegalStateException(e);
                    }
                }
                contactAccessor = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return contactAccessor;
    }

    public abstract Intent addToContacts(String str);

    public Intent getCallLogIntent() {
        Intent intent = new Intent("android.intent.action.VIEW", (Uri) null);
        intent.setType("vnd.android.cursor.dir/calls");
        return intent;
    }

    public abstract IContactSplit getContactSplit();

    public abstract Intent getContactsIntent();

    public abstract Intent getFavouritesIntent();

    public abstract Cursor recalculate(String str, boolean z);

    public abstract void setContentResolver(ContentResolver contentResolver);
}
