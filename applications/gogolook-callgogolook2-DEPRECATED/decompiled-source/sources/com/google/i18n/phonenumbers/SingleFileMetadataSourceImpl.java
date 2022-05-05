package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.MetadataManager;
import com.google.i18n.phonenumbers.Phonemetadata;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/i18n/phonenumbers/SingleFileMetadataSourceImpl.class */
public final class SingleFileMetadataSourceImpl implements MetadataSource {
    public final MetadataLoader metadataLoader;
    public final String phoneNumberMetadataFileName;
    public final AtomicReference<MetadataManager.SingleFileMetadataMaps> phoneNumberMetadataRef;

    public SingleFileMetadataSourceImpl(MetadataLoader metadataLoader) {
        this(MetadataManager.SINGLE_FILE_PHONE_NUMBER_METADATA_FILE_NAME, metadataLoader);
    }

    public SingleFileMetadataSourceImpl(String str, MetadataLoader metadataLoader) {
        this.phoneNumberMetadataRef = new AtomicReference<>();
        this.phoneNumberMetadataFileName = str;
        this.metadataLoader = metadataLoader;
    }

    @Override // com.google.i18n.phonenumbers.MetadataSource
    public Phonemetadata.PhoneMetadata getMetadataForNonGeographicalRegion(int i) {
        return MetadataManager.getSingleFileMetadataMaps(this.phoneNumberMetadataRef, this.phoneNumberMetadataFileName, this.metadataLoader).get(i);
    }

    @Override // com.google.i18n.phonenumbers.MetadataSource
    public Phonemetadata.PhoneMetadata getMetadataForRegion(String str) {
        return MetadataManager.getSingleFileMetadataMaps(this.phoneNumberMetadataRef, this.phoneNumberMetadataFileName, this.metadataLoader).get(str);
    }
}
