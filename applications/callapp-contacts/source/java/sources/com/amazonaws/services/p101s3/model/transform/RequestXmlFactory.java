package com.amazonaws.services.p101s3.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.services.p101s3.internal.XmlWriter;
import com.amazonaws.services.p101s3.model.PartETag;
import com.amazonaws.services.p101s3.model.RestoreObjectRequest;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.model.transform.RequestXmlFactory */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/RequestXmlFactory.class */
public class RequestXmlFactory {
    public static byte[] convertToXmlByteArray(RestoreObjectRequest restoreObjectRequest) throws AmazonClientException {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.m38396a("RestoreRequest");
        xmlWriter.m38396a("Days").m38390b(Integer.toString(restoreObjectRequest.getExpirationInDays())).m38397a();
        xmlWriter.m38397a();
        return xmlWriter.m38391b();
    }

    public static byte[] convertToXmlByteArray(List<PartETag> list) {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.m38396a("CompleteMultipartUpload");
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
                xmlWriter.m38396a("Part");
                xmlWriter.m38396a("PartNumber").m38390b(Integer.toString(partETag.getPartNumber())).m38397a();
                xmlWriter.m38396a("ETag").m38390b(partETag.getETag()).m38397a();
                xmlWriter.m38397a();
            }
        }
        xmlWriter.m38397a();
        return xmlWriter.m38391b();
    }
}
