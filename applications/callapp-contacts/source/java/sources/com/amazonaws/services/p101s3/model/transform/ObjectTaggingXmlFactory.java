package com.amazonaws.services.p101s3.model.transform;

import com.amazonaws.services.p101s3.internal.XmlWriter;
import com.amazonaws.services.p101s3.model.ObjectTagging;
import com.amazonaws.services.p101s3.model.Tag;
/* renamed from: com.amazonaws.services.s3.model.transform.ObjectTaggingXmlFactory */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/ObjectTaggingXmlFactory.class */
public class ObjectTaggingXmlFactory {
    public byte[] convertToXmlByteArray(ObjectTagging objectTagging) {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.m38396a("Tagging").m38396a("TagSet");
        for (Tag tag : objectTagging.getTagSet()) {
            xmlWriter.m38396a("Tag");
            xmlWriter.m38396a("Key").m38390b(tag.getKey()).m38397a();
            xmlWriter.m38396a("Value").m38390b(tag.getValue()).m38397a();
            xmlWriter.m38397a();
        }
        xmlWriter.m38397a();
        xmlWriter.m38397a();
        return xmlWriter.m38391b();
    }
}
