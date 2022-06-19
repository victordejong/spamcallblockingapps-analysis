package p000;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
/* renamed from: qh1 */
/* loaded from: classes3-dex2jar.jar:qh1.class */
public class qh1 {

    /* renamed from: a */
    public Document f7838a;

    /* renamed from: a */
    public List<ih1> m791a() {
        ArrayList arrayList = new ArrayList();
        Document document = this.f7838a;
        if (document == null) {
            return arrayList;
        }
        NodeList elementsByTagName = document.getElementsByTagName("Ad");
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            arrayList.add(new ih1(elementsByTagName.item(i)));
        }
        return arrayList;
    }

    /* renamed from: b */
    public String m790b() {
        return XmlUtils.getFirstMatchingStringData(this.f7838a, "MoPubCloseIcon");
    }

    /* renamed from: c */
    public String m789c() {
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(this.f7838a, "MoPubCtaText");
        if (firstMatchingStringData == null || firstMatchingStringData.length() > 15) {
            return null;
        }
        return firstMatchingStringData;
    }

    /* renamed from: d */
    public String m788d() {
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(this.f7838a, "MoPubSkipText");
        if (firstMatchingStringData == null || firstMatchingStringData.length() > 8) {
            return null;
        }
        return firstMatchingStringData;
    }

    /* renamed from: e */
    public VastTracker m787e() {
        Document document = this.f7838a;
        if (document == null) {
            return null;
        }
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(document, "Error");
        if (!TextUtils.isEmpty(firstMatchingStringData)) {
            return new VastTracker.Builder(firstMatchingStringData).build();
        }
        return null;
    }

    /* renamed from: f */
    public List<VastTracker> m786f() {
        List<String> stringDataAsList = XmlUtils.getStringDataAsList(this.f7838a, "MP_TRACKING_URL");
        ArrayList arrayList = new ArrayList(stringDataAsList.size());
        for (String str : stringDataAsList) {
            arrayList.add(new VastTracker.Builder(str).build());
        }
        return arrayList;
    }

    /* renamed from: g */
    public void m785g(String str) {
        Preconditions.checkNotNull(str, "xmlString cannot be null");
        String str2 = "<MPMoVideoXMLDocRoot>" + str.replaceFirst("<\\?.*\\?>", "") + "</MPMoVideoXMLDocRoot>";
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        newInstance.setCoalescing(true);
        newInstance.setExpandEntityReferences(false);
        this.f7838a = newInstance.newDocumentBuilder().parse(new InputSource(new StringReader(str2)));
    }
}
