package com.phone.libphone;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/Phonemetadata$PhoneMetadataCollection.class */
public class Phonemetadata$PhoneMetadataCollection implements Externalizable {
    private static final long serialVersionUID = 1;
    private List<Phonemetadata$PhoneMetadata> metadata_ = new ArrayList();

    /* loaded from: classes2-dex2jar.jar:com/phone/libphone/Phonemetadata$PhoneMetadataCollection$Builder.class */
    public static final class Builder extends Phonemetadata$PhoneMetadataCollection {
        public Phonemetadata$PhoneMetadataCollection build() {
            return this;
        }
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public Phonemetadata$PhoneMetadataCollection addMetadata(Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata) {
        Objects.requireNonNull(phonemetadata$PhoneMetadata);
        this.metadata_.add(phonemetadata$PhoneMetadata);
        return this;
    }

    public Phonemetadata$PhoneMetadataCollection clear() {
        this.metadata_.clear();
        return this;
    }

    public int getMetadataCount() {
        return this.metadata_.size();
    }

    public List<Phonemetadata$PhoneMetadata> getMetadataList() {
        return this.metadata_;
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) {
        int readInt = objectInput.readInt();
        for (int i = 0; i < readInt; i++) {
            Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata = new Phonemetadata$PhoneMetadata();
            phonemetadata$PhoneMetadata.readExternal(objectInput);
            this.metadata_.add(phonemetadata$PhoneMetadata);
        }
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) {
        int metadataCount = getMetadataCount();
        objectOutput.writeInt(metadataCount);
        for (int i = 0; i < metadataCount; i++) {
            this.metadata_.get(i).writeExternal(objectOutput);
        }
    }
}
