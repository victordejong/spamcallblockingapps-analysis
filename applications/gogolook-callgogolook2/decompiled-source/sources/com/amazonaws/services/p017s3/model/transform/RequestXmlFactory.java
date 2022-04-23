package com.amazonaws.services.p017s3.model.transform;

import com.amazonaws.services.p017s3.internal.XmlWriter;
import com.amazonaws.services.p017s3.model.PartETag;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.model.transform.RequestXmlFactory */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/RequestXmlFactory.class */
public class RequestXmlFactory {
    public static byte[] convertToXmlByteArray(List<PartETag> list) {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.start("CompleteMultipartUpload");
        if (list != null) {
            Collections.sort(list, new Comparator<PartETag>() { // from class: com.amazonaws.services.s3.model.transform.RequestXmlFactory.1
                public int compare(PartETag partETag, PartETag partETag2) {
                    if (partETag.getPartNumber() < partETag2.getPartNumber()) {
                        return -1;
                    }
                    return partETag.getPartNumber() > partETag2.getPartNumber() ? 1 : 0;
                }
            });
            for (PartETag partETag : list) {
                xmlWriter.start("Part");
                xmlWriter.start("PartNumber");
                xmlWriter.value(Integer.toString(partETag.getPartNumber()));
                xmlWriter.end();
                xmlWriter.start("ETag");
                xmlWriter.value(partETag.getETag());
                xmlWriter.end();
                xmlWriter.end();
            }
        }
        xmlWriter.end();
        return xmlWriter.getBytes();
    }
}
