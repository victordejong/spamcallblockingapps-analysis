package com.amazonaws.services.s3.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.services.s3.internal.XmlWriter;
import com.amazonaws.services.s3.model.DeleteObjectsRequest;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory.class */
public class MultiObjectDeleteXmlFactory {
    private void writeKeyVersion(XmlWriter xmlWriter, DeleteObjectsRequest.KeyVersion keyVersion) {
        xmlWriter.a("Object");
        xmlWriter.a("Key").b(keyVersion.getKey()).a();
        if (keyVersion.getVersion() != null) {
            xmlWriter.a("VersionId").b(keyVersion.getVersion()).a();
        }
        xmlWriter.a();
    }

    public byte[] convertToXmlByteArray(DeleteObjectsRequest deleteObjectsRequest) throws AmazonClientException {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.a("Delete");
        if (deleteObjectsRequest.getQuiet()) {
            xmlWriter.a("Quiet").b("true").a();
        }
        for (DeleteObjectsRequest.KeyVersion keyVersion : deleteObjectsRequest.getKeys()) {
            writeKeyVersion(xmlWriter, keyVersion);
        }
        xmlWriter.a();
        return xmlWriter.b();
    }
}
