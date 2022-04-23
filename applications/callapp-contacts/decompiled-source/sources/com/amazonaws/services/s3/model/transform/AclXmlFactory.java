package com.amazonaws.services.s3.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.services.s3.internal.XmlWriter;
import com.amazonaws.services.s3.model.AccessControlList;
import com.amazonaws.services.s3.model.CanonicalGrantee;
import com.amazonaws.services.s3.model.EmailAddressGrantee;
import com.amazonaws.services.s3.model.Grant;
import com.amazonaws.services.s3.model.Grantee;
import com.amazonaws.services.s3.model.GroupGrantee;
import com.amazonaws.services.s3.model.Owner;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/AclXmlFactory.class */
public class AclXmlFactory {
    protected XmlWriter convertToXml(CanonicalGrantee canonicalGrantee, XmlWriter xmlWriter) {
        xmlWriter.a("Grantee", new String[]{"xmlns:xsi", "xsi:type"}, new String[]{"http://www.w3.org/2001/XMLSchema-instance", "CanonicalUser"});
        xmlWriter.a("ID").b(canonicalGrantee.getIdentifier()).a();
        xmlWriter.a();
        return xmlWriter;
    }

    protected XmlWriter convertToXml(EmailAddressGrantee emailAddressGrantee, XmlWriter xmlWriter) {
        xmlWriter.a("Grantee", new String[]{"xmlns:xsi", "xsi:type"}, new String[]{"http://www.w3.org/2001/XMLSchema-instance", "AmazonCustomerByEmail"});
        xmlWriter.a("EmailAddress").b(emailAddressGrantee.getIdentifier()).a();
        xmlWriter.a();
        return xmlWriter;
    }

    protected XmlWriter convertToXml(Grantee grantee, XmlWriter xmlWriter) throws AmazonClientException {
        if (grantee instanceof CanonicalGrantee) {
            return convertToXml((CanonicalGrantee) grantee, xmlWriter);
        }
        if (grantee instanceof EmailAddressGrantee) {
            return convertToXml((EmailAddressGrantee) grantee, xmlWriter);
        }
        if (grantee instanceof GroupGrantee) {
            return convertToXml((GroupGrantee) grantee, xmlWriter);
        }
        throw new AmazonClientException("Unknown Grantee type: " + grantee.getClass().getName());
    }

    protected XmlWriter convertToXml(GroupGrantee groupGrantee, XmlWriter xmlWriter) {
        xmlWriter.a("Grantee", new String[]{"xmlns:xsi", "xsi:type"}, new String[]{"http://www.w3.org/2001/XMLSchema-instance", "Group"});
        xmlWriter.a("URI").b(groupGrantee.getIdentifier()).a();
        xmlWriter.a();
        return xmlWriter;
    }

    public byte[] convertToXmlByteArray(AccessControlList accessControlList) throws AmazonClientException {
        Owner owner = accessControlList.getOwner();
        if (owner != null) {
            XmlWriter xmlWriter = new XmlWriter();
            xmlWriter.a("AccessControlPolicy", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
            xmlWriter.a("Owner");
            if (owner.getId() != null) {
                xmlWriter.a("ID").b(owner.getId()).a();
            }
            if (owner.getDisplayName() != null) {
                xmlWriter.a("DisplayName").b(owner.getDisplayName()).a();
            }
            xmlWriter.a();
            xmlWriter.a("AccessControlList");
            for (Grant grant : accessControlList.getGrants()) {
                xmlWriter.a("Grant");
                convertToXml(grant.getGrantee(), xmlWriter);
                xmlWriter.a("Permission").b(grant.getPermission().toString()).a();
                xmlWriter.a();
            }
            xmlWriter.a();
            xmlWriter.a();
            return xmlWriter.b();
        }
        throw new AmazonClientException("Invalid AccessControlList: missing an S3Owner");
    }
}
