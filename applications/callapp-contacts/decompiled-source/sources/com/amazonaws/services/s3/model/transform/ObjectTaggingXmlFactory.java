package com.amazonaws.services.s3.model.transform;

import com.amazonaws.services.s3.internal.XmlWriter;
import com.amazonaws.services.s3.model.ObjectTagging;
import com.amazonaws.services.s3.model.Tag;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/ObjectTaggingXmlFactory.class */
public class ObjectTaggingXmlFactory {
    public byte[] convertToXmlByteArray(ObjectTagging objectTagging) {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.a("Tagging").a("TagSet");
        for (Tag tag : objectTagging.getTagSet()) {
            xmlWriter.a("Tag");
            xmlWriter.a("Key").b(tag.getKey()).a();
            xmlWriter.a("Value").b(tag.getValue()).a();
            xmlWriter.a();
        }
        xmlWriter.a();
        xmlWriter.a();
        return xmlWriter.b();
    }
}
