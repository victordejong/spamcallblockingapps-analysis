package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.Phonemetadata;
/* loaded from: classes2-dex2jar.jar:com/google/i18n/phonenumbers/MetadataSource.class */
interface MetadataSource {
    Phonemetadata.PhoneMetadata getMetadataForNonGeographicalRegion(int i);

    Phonemetadata.PhoneMetadata getMetadataForRegion(String str);
}
