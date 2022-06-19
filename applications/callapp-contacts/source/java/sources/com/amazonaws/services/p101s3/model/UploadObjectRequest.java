package com.amazonaws.services.p101s3.model;

import com.amazonaws.services.p101s3.UploadObjectObserver;
import com.amazonaws.services.p101s3.internal.MultiFileOutputStream;
import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
/* renamed from: com.amazonaws.services.s3.model.UploadObjectRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/UploadObjectRequest.class */
public class UploadObjectRequest extends AbstractPutObjectRequest implements MaterialsDescriptionProvider, Serializable {
    static final int MIN_PART_SIZE = 5242880;
    private static final long serialVersionUID = 1;
    private transient ExecutorService executorService;
    private Map<String, String> materialsDescription;
    private transient MultiFileOutputStream multiFileOutputStream;
    private transient UploadObjectObserver uploadObjectObserver;
    private ObjectMetadata uploadPartMetadata;
    private long partSize = 5242880;
    private long diskLimit = Long.MAX_VALUE;

    public UploadObjectRequest(String str, String str2, File file) {
        super(str, str2, file);
    }

    public UploadObjectRequest(String str, String str2, InputStream inputStream, ObjectMetadata objectMetadata) {
        super(str, str2, inputStream, objectMetadata);
    }

    @Override // com.amazonaws.services.p101s3.model.AbstractPutObjectRequest, com.amazonaws.AmazonWebServiceRequest
    public UploadObjectRequest clone() {
        UploadObjectRequest uploadObjectRequest = (UploadObjectRequest) super.clone();
        super.copyPutObjectBaseTo(uploadObjectRequest);
        Map<String, String> materialsDescription = getMaterialsDescription();
        ObjectMetadata uploadPartMetadata = getUploadPartMetadata();
        return uploadObjectRequest.withMaterialsDescription(materialsDescription == null ? null : new HashMap(materialsDescription)).withDiskLimit(getDiskLimit()).withExecutorService(getExecutorService()).withPartSize(getPartSize()).withUploadObjectObserver(getUploadObjectObserver()).withUploadPartMetadata(uploadPartMetadata == null ? null : uploadPartMetadata.clone());
    }

    public long getDiskLimit() {
        return this.diskLimit;
    }

    public ExecutorService getExecutorService() {
        return this.executorService;
    }

    @Override // com.amazonaws.services.p101s3.model.MaterialsDescriptionProvider
    public Map<String, String> getMaterialsDescription() {
        return this.materialsDescription;
    }

    public MultiFileOutputStream getMultiFileOutputStream() {
        return this.multiFileOutputStream;
    }

    public long getPartSize() {
        return this.partSize;
    }

    public UploadObjectObserver getUploadObjectObserver() {
        return this.uploadObjectObserver;
    }

    public ObjectMetadata getUploadPartMetadata() {
        return this.uploadPartMetadata;
    }

    public void setMaterialsDescription(Map<String, String> map) {
        this.materialsDescription = map == null ? null : Collections.unmodifiableMap(new HashMap(map));
    }

    public void setUploadPartMetadata(ObjectMetadata objectMetadata) {
        this.uploadPartMetadata = objectMetadata;
    }

    public UploadObjectRequest withDiskLimit(long j) {
        this.diskLimit = j;
        return this;
    }

    public UploadObjectRequest withExecutorService(ExecutorService executorService) {
        this.executorService = executorService;
        return this;
    }

    public UploadObjectRequest withMaterialsDescription(Map<String, String> map) {
        setMaterialsDescription(map);
        return this;
    }

    public UploadObjectRequest withMultiFileOutputStream(MultiFileOutputStream multiFileOutputStream) {
        this.multiFileOutputStream = multiFileOutputStream;
        return this;
    }

    public UploadObjectRequest withPartSize(long j) {
        if (j >= 5242880) {
            this.partSize = j;
            return this;
        }
        throw new IllegalArgumentException("partSize must be at least 5242880");
    }

    public UploadObjectRequest withUploadObjectObserver(UploadObjectObserver uploadObjectObserver) {
        this.uploadObjectObserver = uploadObjectObserver;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends UploadObjectRequest> T withUploadPartMetadata(ObjectMetadata objectMetadata) {
        setUploadPartMetadata(objectMetadata);
        return this;
    }
}
