package com.amazonaws.services.p101s3.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.services.p101s3.internal.XmlWriter;
import com.amazonaws.services.p101s3.model.AccessControlList;
import com.amazonaws.services.p101s3.model.CanonicalGrantee;
import com.amazonaws.services.p101s3.model.EmailAddressGrantee;
import com.amazonaws.services.p101s3.model.Grant;
import com.amazonaws.services.p101s3.model.Grantee;
import com.amazonaws.services.p101s3.model.GroupGrantee;
import com.amazonaws.services.p101s3.model.Owner;
/* renamed from: com.amazonaws.services.s3.model.transform.AclXmlFactory */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/AclXmlFactory.class */
public class AclXmlFactory {
    protected XmlWriter convertToXml(CanonicalGrantee canonicalGrantee, XmlWriter xmlWriter) {
        xmlWriter.m38392a("Grantee", new String[]{"xmlns:xsi", "xsi:type"}, new String[]{"http://www.w3.org/2001/XMLSchema-instance", "CanonicalUser"});
        xmlWriter.m38396a("ID").m38390b(canonicalGrantee.getIdentifier()).m38397a();
        xmlWriter.m38397a();
        return xmlWriter;
    }

    protected XmlWriter convertToXml(EmailAddressGrantee emailAddressGrantee, XmlWriter xmlWriter) {
        xmlWriter.m38392a("Grantee", new String[]{"xmlns:xsi", "xsi:type"}, new String[]{"http://www.w3.org/2001/XMLSchema-instance", "AmazonCustomerByEmail"});
        xmlWriter.m38396a("EmailAddress").m38390b(emailAddressGrantee.getIdentifier()).m38397a();
        xmlWriter.m38397a();
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
        xmlWriter.m38392a("Grantee", new String[]{"xmlns:xsi", "xsi:type"}, new String[]{"http://www.w3.org/2001/XMLSchema-instance", "Group"});
        xmlWriter.m38396a("URI").m38390b(groupGrantee.getIdentifier()).m38397a();
        xmlWriter.m38397a();
        return xmlWriter;
    }

    public byte[] convertToXmlByteArray(AccessControlList accessControlList) throws AmazonClientException {
        Owner owner = accessControlList.getOwner();
        if (owner != null) {
            XmlWriter xmlWriter = new XmlWriter();
            xmlWriter.m38394a("AccessControlPolicy", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
            xmlWriter.m38396a("Owner");
            if (owner.getId() != null) {
                xmlWriter.m38396a("ID").m38390b(owner.getId()).m38397a();
            }
            if (owner.getDisplayName() != null) {
                xmlWriter.m38396a("DisplayName").m38390b(owner.getDisplayName()).m38397a();
            }
            xmlWriter.m38397a();
            xmlWriter.m38396a("AccessControlList");
            for (Grant grant : accessControlList.getGrants()) {
                xmlWriter.m38396a("Grant");
                convertToXml(grant.getGrantee(), xmlWriter);
                xmlWriter.m38396a("Permission").m38390b(grant.getPermission().toString()).m38397a();
                xmlWriter.m38397a();
            }
            xmlWriter.m38397a();
            xmlWriter.m38397a();
            return xmlWriter.m38391b();
        }
        throw new AmazonClientException("Invalid AccessControlList: missing an S3Owner");
    }
}
