package com.callapp.contacts.model.contact;

import com.callapp.contacts.model.objectbox.PhotoUrlsConverter;
import com.callapp.framework.util.StringUtils;
import com.google.common.base.C15386j;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/PhotoUrls.class */
public class PhotoUrls implements Comparable<PhotoUrls> {
    private final DataSource dataSource;
    private final String photoUrl;
    private final String thumbnail;

    public PhotoUrls(String str, DataSource dataSource) {
        this(str, str, dataSource);
    }

    public PhotoUrls(String str, String str2, DataSource dataSource) {
        this.photoUrl = str;
        this.thumbnail = str2;
        this.dataSource = dataSource;
    }

    public int compareTo(PhotoUrls photoUrls) {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PhotoUrls photoUrls = (PhotoUrls) obj;
        return C15386j.m8951a(this.photoUrl, photoUrls.photoUrl) && C15386j.m8951a(this.thumbnail, photoUrls.thumbnail) && C15386j.m8951a(this.dataSource, photoUrls.dataSource);
    }

    public DataSource getDataSource() {
        return this.dataSource;
    }

    public String getPhotoUrl() {
        return StringUtils.m26045b((CharSequence) this.photoUrl) ? this.photoUrl : this.thumbnail;
    }

    public String getThumbnail() {
        return StringUtils.m26045b((CharSequence) this.thumbnail) ? this.thumbnail : this.photoUrl;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.photoUrl, this.thumbnail, this.dataSource});
    }

    public boolean isEmpty() {
        return StringUtils.m26059a((CharSequence) this.photoUrl) && StringUtils.m26059a((CharSequence) this.thumbnail);
    }

    public boolean isNotEmpty() {
        return StringUtils.m26045b((CharSequence) this.photoUrl) || StringUtils.m26045b((CharSequence) this.thumbnail);
    }

    public String toDatabaseValue() {
        String str = "";
        if (StringUtils.m26045b((CharSequence) this.photoUrl)) {
            str = "" + this.photoUrl;
        }
        String str2 = str;
        if (StringUtils.m26045b((CharSequence) this.thumbnail)) {
            str2 = str + PhotoUrlsConverter.del + this.thumbnail;
        }
        return str2;
    }

    public String toString() {
        return "PhotoUrls{photoUrl='" + this.photoUrl + "', thumbnail='" + this.thumbnail + "', dataSource=" + this.dataSource + '}';
    }
}
