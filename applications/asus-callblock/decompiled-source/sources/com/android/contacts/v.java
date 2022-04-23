package com.android.contacts;

import android.app.Activity;
import android.content.ContentResolver;
import android.net.Uri;
import android.nfc.NdefMessage;
import android.nfc.NdefRecord;
import android.nfc.NfcAdapter;
import android.nfc.NfcEvent;
import android.provider.ContactsContract;
import android.util.Log;
import com.android.contacts.detail.ContactDetailFragment;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/android/contacts/v.class */
public final class v implements NfcAdapter.CreateNdefMessageCallback {

    /* renamed from: a  reason: collision with root package name */
    private final ContactDetailFragment f2177a;

    private v(ContactDetailFragment contactDetailFragment) {
        this.f2177a = contactDetailFragment;
    }

    public static void a(Activity activity, ContactDetailFragment contactDetailFragment) {
        NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(activity.getApplicationContext());
        if (defaultAdapter != null) {
            defaultAdapter.setNdefPushMessageCallback(new v(contactDetailFragment), activity, new Activity[0]);
        }
    }

    @Override // android.nfc.NfcAdapter.CreateNdefMessageCallback
    public final NdefMessage createNdefMessage(NfcEvent nfcEvent) {
        NdefMessage ndefMessage;
        Uri uri = this.f2177a.getUri();
        ContentResolver contentResolver = this.f2177a.getActivity().getContentResolver();
        if (uri != null) {
            String encode = Uri.encode(uri.getPathSegments().get(2));
            Uri build = encode.equals("profile") ? ContactsContract.Profile.CONTENT_VCARD_URI.buildUpon().appendQueryParameter("nophoto", "true").build() : ContactsContract.Contacts.CONTENT_VCARD_URI.buildUpon().appendPath(encode).appendQueryParameter("nophoto", "true").build();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            try {
                InputStream openInputStream = contentResolver.openInputStream(build);
                while (true) {
                    int read = openInputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                ndefMessage = new NdefMessage(NdefRecord.createMime("text/x-vcard", byteArrayOutputStream.toByteArray()), new NdefRecord[0]);
                openInputStream.close();
            } catch (IOException e) {
                Log.e("ContactNfcHandler", "IOException creating vcard.");
                ndefMessage = null;
            }
        } else {
            Log.w("ContactNfcHandler", "No contact URI to share.");
            ndefMessage = null;
        }
        return ndefMessage;
    }
}
