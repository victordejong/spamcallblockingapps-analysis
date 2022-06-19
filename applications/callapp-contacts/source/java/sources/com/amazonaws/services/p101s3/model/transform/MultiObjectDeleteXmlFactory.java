package com.amazonaws.services.p101s3.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.services.p101s3.internal.XmlWriter;
import com.amazonaws.services.p101s3.model.DeleteObjectsRequest;
/* renamed from: com.amazonaws.services.s3.model.transform.MultiObjectDeleteXmlFactory */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/MultiObjectDeleteXmlFactory.class */
public class MultiObjectDeleteXmlFactory {
    private void writeKeyVersion(XmlWriter xmlWriter, DeleteObjectsRequest.KeyVersion keyVersion) {
        xmlWriter.m38396a("Object");
        xmlWriter.m38396a("Key").m38390b(keyVersion.getKey()).m38397a();
        if (keyVersion.getVersion() != null) {
            xmlWriter.m38396a("VersionId").m38390b(keyVersion.getVersion()).m38397a();
        }
        xmlWriter.m38397a();
    }

    public byte[] convertToXmlByteArray(DeleteObjectsRequest deleteObjectsRequest) throws AmazonClientException {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.m38396a("Delete");
        if (deleteObjectsRequest.getQuiet()) {
            xmlWriter.m38396a("Quiet").m38390b("true").m38397a();
        }
        for (DeleteObjectsRequest.KeyVersion keyVersion : deleteObjectsRequest.getKeys()) {
            writeKeyVersion(xmlWriter, keyVersion);
        }
        xmlWriter.m38397a();
        return xmlWriter.m38391b();
    }
}
