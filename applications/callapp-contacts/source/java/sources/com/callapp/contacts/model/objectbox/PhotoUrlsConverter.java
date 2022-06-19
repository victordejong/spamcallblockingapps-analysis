package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.contact.PhotoUrls;
import com.callapp.framework.util.StringUtils;
import io.objectbox.converter.PropertyConverter;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PhotoUrlsConverter.class */
public class PhotoUrlsConverter implements PropertyConverter<PhotoUrls, String> {
    public static final String del = "@##@";

    public static PhotoUrls PhotoUrls(String str) {
        if (StringUtils.m26045b((CharSequence) str)) {
            String[] split = str.split(del);
            return new PhotoUrls((split.length <= 0 || !StringUtils.m26045b((CharSequence) split[0])) ? null : split[0], (split.length <= 1 || !StringUtils.m26045b((CharSequence) split[1])) ? null : split[1], null);
        }
        return null;
    }

    public String convertToDatabaseValue(PhotoUrls photoUrls) {
        if (photoUrls == null) {
            return null;
        }
        return photoUrls.toDatabaseValue();
    }

    public PhotoUrls convertToEntityProperty(String str) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return null;
        }
        try {
            return PhotoUrls(str);
        } catch (IllegalArgumentException e) {
            return null;
        }
    }
}
