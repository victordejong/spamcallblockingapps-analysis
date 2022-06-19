package com.amazonaws.services.p101s3.model.transform;

import com.amazonaws.services.p101s3.internal.XmlWriter;
import com.amazonaws.services.p101s3.model.RequestPaymentConfiguration;
/* renamed from: com.amazonaws.services.s3.model.transform.RequestPaymentConfigurationXmlFactory */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory.class */
public class RequestPaymentConfigurationXmlFactory {
    public byte[] convertToXmlByteArray(RequestPaymentConfiguration requestPaymentConfiguration) {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.m38394a("RequestPaymentConfiguration", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        RequestPaymentConfiguration.Payer payer = requestPaymentConfiguration.getPayer();
        if (payer != null) {
            XmlWriter m38396a = xmlWriter.m38396a("Payer");
            m38396a.m38390b(payer.toString());
            m38396a.m38397a();
        }
        xmlWriter.m38397a();
        return xmlWriter.m38391b();
    }
}
