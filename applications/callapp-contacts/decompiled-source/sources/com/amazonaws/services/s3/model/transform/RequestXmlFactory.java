package com.amazonaws.services.s3.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.services.s3.internal.XmlWriter;
import com.amazonaws.services.s3.model.PartETag;
import com.amazonaws.services.s3.model.RestoreObjectRequest;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/RequestXmlFactory.class */
public class RequestXmlFactory {
    public static byte[] convertToXmlByteArray(RestoreObjectRequest restoreObjectRequest) throws AmazonClientException {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.a("RestoreRequest");
        xmlWriter.a("Days").b(Integer.toString(restoreObjectRequest.getExpirationInDays())).a();
        xmlWriter.a();
        return xmlWriter.b();
    }

    public static byte[] convertToXmlByteArray(List<PartETag> list) {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.a("CompleteMultipartUpload");
        if (list != null) {
            Collections.sort(list, new Comparator<PartETag>() { // from class: com.amazonaws.services.s3.model.transform.RequestXmlFactory.1
                public final int compare(PartETag partETag, PartETag partETag2) {
                    if (partETag.getPartNumber() < partETag2.getPartNumber()) {
                        return -1;
                    }
                    return partETag.getPartNumber() > partETag2.getPartNumber() ? 1 : 0;
                }
            });
            for (PartETag partETag : list) {
                xmlWriter.a("Part");
                xmlWriter.a("PartNumber").b(Integer.toString(partETag.getPartNumber())).a();
                xmlWriter.a("ETag").b(partETag.getETag()).a();
                xmlWriter.a();
            }
        }
        xmlWriter.a();
        return xmlWriter.b();
    }
}
