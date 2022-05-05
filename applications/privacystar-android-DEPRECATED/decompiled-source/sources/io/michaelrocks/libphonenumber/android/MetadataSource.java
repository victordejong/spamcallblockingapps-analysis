package io.michaelrocks.libphonenumber.android;

import io.michaelrocks.libphonenumber.android.Phonemetadata;
/* loaded from: classes2-dex2jar.jar:io/michaelrocks/libphonenumber/android/MetadataSource.class */
interface MetadataSource {
    Phonemetadata.PhoneMetadata getAlternateFormatsForCountry(int i);

    Phonemetadata.PhoneMetadata getMetadataForNonGeographicalRegion(int i);

    Phonemetadata.PhoneMetadata getMetadataForRegion(String str);

    Phonemetadata.PhoneMetadata getShortNumberMetadataForRegion(String str);
}
