package com.amazonaws.services.s3.model;

import java.io.Serializable;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/EncryptedGetObjectRequest.class */
public class EncryptedGetObjectRequest extends GetObjectRequest implements Serializable {
    private String instructionFileSuffix;
    private boolean keyWrapExpected;
    private ExtraMaterialsDescription supplemental;

    public EncryptedGetObjectRequest(S3ObjectId s3ObjectId) {
        super(s3ObjectId);
        this.supplemental = ExtraMaterialsDescription.NONE;
    }

    public EncryptedGetObjectRequest(String str, String str2) {
        this(str, str2, (String) null);
    }

    public EncryptedGetObjectRequest(String str, String str2, String str3) {
        super(str, str2, str3);
        this.supplemental = ExtraMaterialsDescription.NONE;
        setKey(str2);
        setVersionId(str3);
    }

    public EncryptedGetObjectRequest(String str, String str2, boolean z) {
        super(str, str2, z);
        this.supplemental = ExtraMaterialsDescription.NONE;
    }

    public ExtraMaterialsDescription getExtraMaterialDescription() {
        return this.supplemental;
    }

    public String getInstructionFileSuffix() {
        return this.instructionFileSuffix;
    }

    public boolean isKeyWrapExpected() {
        return this.keyWrapExpected;
    }

    public void setExtraMaterialDescription(ExtraMaterialsDescription extraMaterialsDescription) {
        ExtraMaterialsDescription extraMaterialsDescription2 = extraMaterialsDescription;
        if (extraMaterialsDescription == null) {
            extraMaterialsDescription2 = ExtraMaterialsDescription.NONE;
        }
        this.supplemental = extraMaterialsDescription2;
    }

    public void setInstructionFileSuffix(String str) {
        this.instructionFileSuffix = str;
    }

    public void setKeyWrapExpected(boolean z) {
        this.keyWrapExpected = z;
    }

    public EncryptedGetObjectRequest withExtraMaterialsDescription(ExtraMaterialsDescription extraMaterialsDescription) {
        setExtraMaterialDescription(extraMaterialsDescription);
        return this;
    }

    public EncryptedGetObjectRequest withExtraMaterialsDescription(Map<String, String> map) {
        setExtraMaterialDescription(map == null ? null : new ExtraMaterialsDescription(map));
        return this;
    }

    public EncryptedGetObjectRequest withInstructionFileSuffix(String str) {
        this.instructionFileSuffix = str;
        return this;
    }

    public EncryptedGetObjectRequest withKeyWrapExpected(boolean z) {
        this.keyWrapExpected = z;
        return this;
    }
}
