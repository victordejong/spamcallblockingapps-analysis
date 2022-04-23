package com.amazonaws.services.p017s3.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.services.p017s3.internal.Constants;
import com.amazonaws.services.p017s3.internal.ObjectExpirationResult;
import com.amazonaws.services.p017s3.internal.ServerSideEncryptionResult;
import com.amazonaws.services.p017s3.internal.ServiceUtils;
import com.amazonaws.services.p017s3.model.AmazonS3Exception;
import com.amazonaws.services.p017s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.p017s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.p017s3.model.Owner;
import com.amazonaws.services.p017s3.model.PartListing;
import com.amazonaws.services.p017s3.model.PartSummary;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Date;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.helpers.XMLReaderFactory;
/* renamed from: com.amazonaws.services.s3.model.transform.XmlResponsesSaxParser */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser.class */
public class XmlResponsesSaxParser {
    public static final Log log = LogFactory.getLog(XmlResponsesSaxParser.class);

    /* renamed from: xr */
    public XMLReader f819xr;

    /* renamed from: com.amazonaws.services.s3.model.transform.XmlResponsesSaxParser$CompleteMultipartUploadHandler */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler.class */
    public static class CompleteMultipartUploadHandler extends AbstractSSEHandler implements ObjectExpirationResult {
        public AmazonS3Exception ase;
        public String errorCode;
        public String hostId;
        public String requestId;
        public CompleteMultipartUploadResult result;

        @Override // com.amazonaws.services.p017s3.model.transform.AbstractHandler
        public void doEndElement(String str, String str2, String str3) {
            AmazonS3Exception amazonS3Exception;
            if (atTopLevel()) {
                if (str2.equals("Error") && (amazonS3Exception = this.ase) != null) {
                    amazonS3Exception.setErrorCode(this.errorCode);
                    this.ase.setRequestId(this.requestId);
                    this.ase.setExtendedRequestId(this.hostId);
                }
            } else if (m37022in("CompleteMultipartUploadResult")) {
                if (str2.equals("Location")) {
                    this.result.setLocation(getText());
                } else if (str2.equals("Bucket")) {
                    this.result.setBucketName(getText());
                } else if (str2.equals("Key")) {
                    this.result.setKey(getText());
                } else if (str2.equals("ETag")) {
                    this.result.setETag(ServiceUtils.removeQuotes(getText()));
                }
            } else if (!m37022in("Error")) {
            } else {
                if (str2.equals("Code")) {
                    this.errorCode = getText();
                } else if (str2.equals("Message")) {
                    this.ase = new AmazonS3Exception(getText());
                } else if (str2.equals("RequestId")) {
                    this.requestId = getText();
                } else if (str2.equals("HostId")) {
                    this.hostId = getText();
                }
            }
        }

        @Override // com.amazonaws.services.p017s3.model.transform.AbstractHandler
        public void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (atTopLevel() && str2.equals("CompleteMultipartUploadResult")) {
                this.result = new CompleteMultipartUploadResult();
            }
        }

        public AmazonS3Exception getAmazonS3Exception() {
            return this.ase;
        }

        public CompleteMultipartUploadResult getCompleteMultipartUploadResult() {
            return this.result;
        }

        @Override // com.amazonaws.services.p017s3.internal.ObjectExpirationResult
        public void setExpirationTime(Date date) {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.result;
            if (completeMultipartUploadResult != null) {
                completeMultipartUploadResult.setExpirationTime(date);
            }
        }

        @Override // com.amazonaws.services.p017s3.internal.ObjectExpirationResult
        public void setExpirationTimeRuleId(String str) {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.result;
            if (completeMultipartUploadResult != null) {
                completeMultipartUploadResult.setExpirationTimeRuleId(str);
            }
        }

        @Override // com.amazonaws.services.p017s3.model.transform.AbstractSSEHandler
        public ServerSideEncryptionResult sseResult() {
            return this.result;
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.XmlResponsesSaxParser$InitiateMultipartUploadHandler */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$InitiateMultipartUploadHandler.class */
    public static class InitiateMultipartUploadHandler extends AbstractHandler {
        public final InitiateMultipartUploadResult result = new InitiateMultipartUploadResult();

        @Override // com.amazonaws.services.p017s3.model.transform.AbstractHandler
        public void doEndElement(String str, String str2, String str3) {
            if (!m37022in("InitiateMultipartUploadResult")) {
                return;
            }
            if (str2.equals("Bucket")) {
                this.result.setBucketName(getText());
            } else if (str2.equals("Key")) {
                this.result.setKey(getText());
            } else if (str2.equals("UploadId")) {
                this.result.setUploadId(getText());
            }
        }

        @Override // com.amazonaws.services.p017s3.model.transform.AbstractHandler
        public void doStartElement(String str, String str2, String str3, Attributes attributes) {
        }

        public InitiateMultipartUploadResult getInitiateMultipartUploadResult() {
            return this.result;
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.transform.XmlResponsesSaxParser$ListPartsHandler */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler.class */
    public static class ListPartsHandler extends AbstractHandler {
        public Owner currentOwner;
        public PartSummary currentPart;
        public final PartListing result = new PartListing();

        @Override // com.amazonaws.services.p017s3.model.transform.AbstractHandler
        public void doEndElement(String str, String str2, String str3) {
            if (m37022in("ListPartsResult")) {
                if (str2.equals("Bucket")) {
                    this.result.setBucketName(getText());
                } else if (str2.equals("Key")) {
                    this.result.setKey(getText());
                } else if (str2.equals("UploadId")) {
                    this.result.setUploadId(getText());
                } else if (str2.equals("Owner")) {
                    this.result.setOwner(this.currentOwner);
                    this.currentOwner = null;
                } else if (str2.equals("Initiator")) {
                    this.result.setInitiator(this.currentOwner);
                    this.currentOwner = null;
                } else if (str2.equals("StorageClass")) {
                    this.result.setStorageClass(getText());
                } else if (str2.equals("PartNumberMarker")) {
                    this.result.setPartNumberMarker(parseInteger(getText()).intValue());
                } else if (str2.equals("NextPartNumberMarker")) {
                    this.result.setNextPartNumberMarker(parseInteger(getText()).intValue());
                } else if (str2.equals("MaxParts")) {
                    this.result.setMaxParts(parseInteger(getText()).intValue());
                } else if (str2.equals("EncodingType")) {
                    this.result.setEncodingType(XmlResponsesSaxParser.checkForEmptyString(getText()));
                } else if (str2.equals("IsTruncated")) {
                    this.result.setTruncated(Boolean.parseBoolean(getText()));
                } else if (str2.equals("Part")) {
                    this.result.getParts().add(this.currentPart);
                    this.currentPart = null;
                }
            } else if (m37022in("ListPartsResult", "Part")) {
                if (str2.equals("PartNumber")) {
                    this.currentPart.setPartNumber(Integer.parseInt(getText()));
                } else if (str2.equals("LastModified")) {
                    this.currentPart.setLastModified(ServiceUtils.parseIso8601Date(getText()));
                } else if (str2.equals("ETag")) {
                    this.currentPart.setETag(ServiceUtils.removeQuotes(getText()));
                } else if (str2.equals("Size")) {
                    this.currentPart.setSize(Long.parseLong(getText()));
                }
            } else if (!m37022in("ListPartsResult", "Owner") && !m37022in("ListPartsResult", "Initiator")) {
            } else {
                if (str2.equals("ID")) {
                    this.currentOwner.setId(XmlResponsesSaxParser.checkForEmptyString(getText()));
                } else if (str2.equals("DisplayName")) {
                    this.currentOwner.setDisplayName(XmlResponsesSaxParser.checkForEmptyString(getText()));
                }
            }
        }

        @Override // com.amazonaws.services.p017s3.model.transform.AbstractHandler
        public void doStartElement(String str, String str2, String str3, Attributes attributes) {
            if (!m37022in("ListPartsResult")) {
                return;
            }
            if (str2.equals("Part")) {
                this.currentPart = new PartSummary();
            } else if (str2.equals("Owner") || str2.equals("Initiator")) {
                this.currentOwner = new Owner();
            }
        }

        public PartListing getListPartsResult() {
            return this.result;
        }

        public final Integer parseInteger(String str) {
            String checkForEmptyString = XmlResponsesSaxParser.checkForEmptyString(getText());
            if (checkForEmptyString == null) {
                return null;
            }
            return Integer.valueOf(Integer.parseInt(checkForEmptyString));
        }
    }

    public XmlResponsesSaxParser() throws AmazonClientException {
        this.f819xr = null;
        try {
            this.f819xr = XMLReaderFactory.createXMLReader();
        } catch (SAXException e) {
            System.setProperty("org.xml.sax.driver", "org.xmlpull.v1.sax2.Driver");
            try {
                this.f819xr = XMLReaderFactory.createXMLReader();
            } catch (SAXException e2) {
                throw new AmazonClientException("Couldn't initialize a sax driver for the XMLReader", e);
            }
        }
    }

    public static String checkForEmptyString(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return str;
    }

    public CompleteMultipartUploadHandler parseCompleteMultipartUploadResponse(InputStream inputStream) throws IOException {
        CompleteMultipartUploadHandler completeMultipartUploadHandler = new CompleteMultipartUploadHandler();
        parseXmlInputStream(completeMultipartUploadHandler, inputStream);
        return completeMultipartUploadHandler;
    }

    public InitiateMultipartUploadHandler parseInitiateMultipartUploadResponse(InputStream inputStream) throws IOException {
        InitiateMultipartUploadHandler initiateMultipartUploadHandler = new InitiateMultipartUploadHandler();
        parseXmlInputStream(initiateMultipartUploadHandler, inputStream);
        return initiateMultipartUploadHandler;
    }

    public ListPartsHandler parseListPartsResponse(InputStream inputStream) throws IOException {
        ListPartsHandler listPartsHandler = new ListPartsHandler();
        parseXmlInputStream(listPartsHandler, inputStream);
        return listPartsHandler;
    }

    public void parseXmlInputStream(DefaultHandler defaultHandler, InputStream inputStream) throws IOException {
        try {
            if (log.isDebugEnabled()) {
                Log log2 = log;
                log2.debug("Parsing XML response document with handler: " + defaultHandler.getClass());
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Constants.DEFAULT_ENCODING));
            this.f819xr.setContentHandler(defaultHandler);
            this.f819xr.setErrorHandler(defaultHandler);
            this.f819xr.parse(new InputSource(bufferedReader));
        } catch (IOException e) {
            throw e;
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                if (log.isErrorEnabled()) {
                    log.error("Unable to close response InputStream up after XML parse failure", e2);
                }
            }
            throw new AmazonClientException("Failed to parse XML document with handler " + defaultHandler.getClass(), th);
        }
    }
}
