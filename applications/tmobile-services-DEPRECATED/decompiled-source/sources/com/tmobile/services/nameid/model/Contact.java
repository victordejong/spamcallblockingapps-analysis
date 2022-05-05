package com.tmobile.services.nameid.model;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.provider.MediaStore;
import androidx.annotation.NonNull;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PhoneNumberHelper;
import java.io.IOException;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/Contact.class */
public class Contact {
    @Nullable

    /* renamed from: id */
    private String f13608id;
    @Nullable
    private boolean isEmail;
    @Nullable
    private String lookupKey;
    @Nullable
    private String name;
    @Nullable
    private String number;
    @Nullable
    private String photoId;
    @Nullable
    private String uri;

    public Bitmap getContactImage(Context context) {
        Bitmap bitmap;
        if (shouldShowContactImage()) {
            try {
                bitmap = MediaStore.Images.Media.getBitmap(context.getContentResolver(), Uri.parse(this.uri));
            } catch (IOException e) {
                LogUtil.m5641f("Contact#getContactImage", "error getting contact uri", e);
            }
            return bitmap;
        }
        bitmap = null;
        return bitmap;
    }

    @NonNull
    public String getDisplayNumber(@Nullable String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return PhoneNumberHelper.m5412g(this.number, str2);
    }

    @Nullable
    public String getId() {
        return this.f13608id;
    }

    @Nullable
    public String getLookupKey() {
        return this.lookupKey;
    }

    @Nullable
    public String getName() {
        String str = this.name;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    @Nullable
    public String getNumber() {
        return this.number;
    }

    @Nullable
    public String getPhotoId() {
        return this.photoId;
    }

    @Nullable
    public String getUri() {
        return this.uri;
    }

    @Nullable
    public boolean isEmail() {
        return this.isEmail;
    }

    public void setId(@Nullable String str) {
        this.f13608id = str;
    }

    public void setIsEmail(boolean z) {
        this.isEmail = z;
    }

    public void setLookupKey(@Nullable String str) {
        this.lookupKey = str;
    }

    public void setName(@Nullable String str) {
        this.name = str;
    }

    public void setNumber(@Nullable String str) {
        this.number = str;
    }

    public void setPhotoId(@Nullable String str) {
        this.photoId = str;
    }

    public void setUri(@Nullable String str) {
        this.uri = str;
    }

    public boolean shouldShowContactImage() {
        return getUri() != null && !getUri().isEmpty();
    }

    public boolean shouldShowInitials() {
        boolean z = true;
        if (!(getName() != null && !getName().isEmpty()) || shouldShowContactImage()) {
            z = false;
        }
        return z;
    }

    public String toString() {
        return "Contact{number='" + this.number + "', name='" + this.name + "', uri='" + this.uri + "', id='" + this.f13608id + "', photoId='" + this.photoId + "', lookupKey='" + this.lookupKey + "', isEmail=" + this.isEmail + '}';
    }
}
