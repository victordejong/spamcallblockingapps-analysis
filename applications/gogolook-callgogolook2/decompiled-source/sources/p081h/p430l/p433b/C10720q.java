package p081h.p430l.p433b;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
/* renamed from: h.l.b.q */
/* loaded from: classes2-dex2jar.jar:h/l/b/q.class */
public class C10720q {
    @Nullable

    /* renamed from: a */
    public Document f24428a;

    @NonNull
    /* renamed from: a */
    public List<C10706g> m10827a() {
        ArrayList arrayList = new ArrayList();
        Document document = this.f24428a;
        if (document == null) {
            return arrayList;
        }
        NodeList elementsByTagName = document.getElementsByTagName("Ad");
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            arrayList.add(new C10706g(elementsByTagName.item(i)));
        }
        return arrayList;
    }

    /* renamed from: a */
    public void m10826a(@NonNull String str) throws ParserConfigurationException, IOException, SAXException {
        Preconditions.checkNotNull(str, "xmlString cannot be null");
        String str2 = "<MPMoVideoXMLDocRoot>" + str.replaceFirst("<\\?.*\\?>", "") + "</MPMoVideoXMLDocRoot>";
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        newInstance.setCoalescing(true);
        newInstance.setExpandEntityReferences(false);
        this.f24428a = newInstance.newDocumentBuilder().parse(new InputSource(new StringReader(str2)));
    }

    @Nullable
    /* renamed from: b */
    public String m10825b() {
        return XmlUtils.getFirstMatchingStringData(this.f24428a, "MoPubCloseIcon");
    }

    @Nullable
    /* renamed from: c */
    public String m10824c() {
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(this.f24428a, "MoPubCtaText");
        if (firstMatchingStringData == null || firstMatchingStringData.length() > 15) {
            return null;
        }
        return firstMatchingStringData;
    }

    @Nullable
    /* renamed from: d */
    public String m10823d() {
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(this.f24428a, "MoPubSkipText");
        if (firstMatchingStringData == null || firstMatchingStringData.length() > 8) {
            return null;
        }
        return firstMatchingStringData;
    }

    @Nullable
    /* renamed from: e */
    public VastTracker m10822e() {
        Document document = this.f24428a;
        if (document == null) {
            return null;
        }
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(document, "Error");
        if (TextUtils.isEmpty(firstMatchingStringData)) {
            return null;
        }
        return new VastTracker(firstMatchingStringData);
    }

    @NonNull
    /* renamed from: f */
    public List<VastTracker> m10821f() {
        List<String> stringDataAsList = XmlUtils.getStringDataAsList(this.f24428a, "MP_TRACKING_URL");
        ArrayList arrayList = new ArrayList(stringDataAsList.size());
        for (String str : stringDataAsList) {
            arrayList.add(new VastTracker(str));
        }
        return arrayList;
    }
}
