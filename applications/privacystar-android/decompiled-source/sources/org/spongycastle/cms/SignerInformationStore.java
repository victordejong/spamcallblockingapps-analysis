package org.spongycastle.cms;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.spongycastle.util.Iterable;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/SignerInformationStore.class */
public class SignerInformationStore implements Iterable<SignerInformation> {
    private List all;
    private Map table = new HashMap();

    public SignerInformationStore(Collection<SignerInformation> collection) {
        this.all = new ArrayList();
        for (SignerInformation signerInformation : collection) {
            SignerId sid = signerInformation.getSID();
            ArrayList arrayList = (ArrayList) this.table.get(sid);
            ArrayList arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList(1);
                this.table.put(sid, arrayList2);
            }
            arrayList2.add(signerInformation);
        }
        this.all = new ArrayList(collection);
    }

    public SignerInformationStore(SignerInformation signerInformation) {
        this.all = new ArrayList();
        this.all = new ArrayList(1);
        this.all.add(signerInformation);
        this.table.put(signerInformation.getSID(), this.all);
    }

    public SignerInformation get(SignerId signerId) {
        Collection<SignerInformation> signers = getSigners(signerId);
        return signers.size() == 0 ? null : signers.iterator().next();
    }

    public Collection<SignerInformation> getSigners() {
        return new ArrayList(this.all);
    }

    public Collection<SignerInformation> getSigners(SignerId signerId) {
        if (signerId.getIssuer() == null || signerId.getSubjectKeyIdentifier() == null) {
            ArrayList arrayList = (ArrayList) this.table.get(signerId);
            return arrayList == null ? new ArrayList() : new ArrayList(arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        Collection<SignerInformation> signers = getSigners(new SignerId(signerId.getIssuer(), signerId.getSerialNumber()));
        if (signers != null) {
            arrayList2.addAll(signers);
        }
        Collection<SignerInformation> signers2 = getSigners(new SignerId(signerId.getSubjectKeyIdentifier()));
        if (signers2 != null) {
            arrayList2.addAll(signers2);
        }
        return arrayList2;
    }

    @Override // org.spongycastle.util.Iterable, java.lang.Iterable
    public Iterator<SignerInformation> iterator() {
        return getSigners().iterator();
    }

    public int size() {
        return this.all.size();
    }
}
