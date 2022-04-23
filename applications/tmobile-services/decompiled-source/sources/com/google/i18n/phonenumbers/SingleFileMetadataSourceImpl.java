package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.MetadataManager;
import com.google.i18n.phonenumbers.Phonemetadata;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/SingleFileMetadataSourceImpl.class */
final class SingleFileMetadataSourceImpl implements MetadataSource {

    /* renamed from: a */
    private final String f12381a;

    /* renamed from: b */
    private final MetadataLoader f12382b;

    /* renamed from: c */
    private final AtomicReference<MetadataManager.SingleFileMetadataMaps> f12383c;

    @Override // com.google.i18n.phonenumbers.MetadataSource
    /* renamed from: a */
    public Phonemetadata.PhoneMetadata mo7879a(int i) {
        return MetadataManager.m8087e(this.f12383c, this.f12381a, this.f12382b).m8084a(i);
    }

    @Override // com.google.i18n.phonenumbers.MetadataSource
    /* renamed from: b */
    public Phonemetadata.PhoneMetadata mo7878b(String str) {
        return MetadataManager.m8087e(this.f12383c, this.f12381a, this.f12382b).m8083b(str);
    }
}
