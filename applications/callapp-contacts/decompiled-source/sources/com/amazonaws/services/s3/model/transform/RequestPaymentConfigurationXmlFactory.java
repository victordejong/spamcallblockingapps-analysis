package com.amazonaws.services.s3.model.transform;

import com.amazonaws.services.s3.internal.XmlWriter;
import com.amazonaws.services.s3.model.RequestPaymentConfiguration;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory.class */
public class RequestPaymentConfigurationXmlFactory {
    public byte[] convertToXmlByteArray(RequestPaymentConfiguration requestPaymentConfiguration) {
        XmlWriter xmlWriter = new XmlWriter();
        xmlWriter.a("RequestPaymentConfiguration", "xmlns", "http://s3.amazonaws.com/doc/2006-03-01/");
        RequestPaymentConfiguration.Payer payer = requestPaymentConfiguration.getPayer();
        if (payer != null) {
            XmlWriter a2 = xmlWriter.a("Payer");
            a2.b(payer.toString());
            a2.a();
        }
        xmlWriter.a();
        return xmlWriter.b();
    }
}
