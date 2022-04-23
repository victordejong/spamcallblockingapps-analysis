package org.spongycastle.cert.dane.fetcher;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import javax.naming.Binding;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import org.spongycastle.cert.dane.DANEEntry;
import org.spongycastle.cert.dane.DANEEntryFetcher;
import org.spongycastle.cert.dane.DANEEntryFetcherFactory;
import org.spongycastle.cert.dane.DANEException;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/dane/fetcher/JndiDANEFetcherFactory.class */
public class JndiDANEFetcherFactory implements DANEEntryFetcherFactory {
    private static final String DANE_TYPE = "65500";
    private List dnsServerList = new ArrayList();
    private boolean isAuthoritative;

    @Override // org.spongycastle.cert.dane.DANEEntryFetcherFactory
    public DANEEntryFetcher build(final String str) {
        final Hashtable hashtable = new Hashtable();
        hashtable.put("java.naming.factory.initial", "com.sun.jndi.dns.DnsContextFactory");
        hashtable.put("java.naming.authoritative", this.isAuthoritative ? "true" : "false");
        if (this.dnsServerList.size() > 0) {
            StringBuffer stringBuffer = new StringBuffer();
            Iterator it = this.dnsServerList.iterator();
            while (it.hasNext()) {
                if (stringBuffer.length() > 0) {
                    stringBuffer.append(" ");
                }
                stringBuffer.append("dns://" + it.next());
            }
            hashtable.put("java.naming.provider.url", stringBuffer.toString());
        }
        return new DANEEntryFetcher() { // from class: org.spongycastle.cert.dane.fetcher.JndiDANEFetcherFactory.1
            @Override // org.spongycastle.cert.dane.DANEEntryFetcher
            public List getEntries() throws DANEException {
                ArrayList arrayList = new ArrayList();
                try {
                    InitialDirContext initialDirContext = new InitialDirContext(hashtable);
                    if (str.indexOf("_smimecert.") > 0) {
                        initialDirContext.listBindings(str);
                        Attributes attributes = initialDirContext.getAttributes(str, new String[]{JndiDANEFetcherFactory.DANE_TYPE});
                        if (attributes.get(JndiDANEFetcherFactory.DANE_TYPE) != null) {
                            byte[] bArr = (byte[]) attributes.get(JndiDANEFetcherFactory.DANE_TYPE).get();
                            if (DANEEntry.isValidCertificate(bArr)) {
                                try {
                                    arrayList.add(new DANEEntry(str, bArr));
                                } catch (IOException e) {
                                    throw new DANEException("Exception parsing entry: " + e.getMessage(), e);
                                }
                            }
                        }
                        return arrayList;
                    }
                    NamingEnumeration listBindings = initialDirContext.listBindings("_smimecert." + str);
                    while (listBindings.hasMore()) {
                        DirContext dirContext = (DirContext) ((Binding) listBindings.next()).getObject();
                        Attributes attributes2 = initialDirContext.getAttributes(dirContext.getNameInNamespace().substring(1, dirContext.getNameInNamespace().length() - 1), new String[]{JndiDANEFetcherFactory.DANE_TYPE});
                        if (attributes2.get(JndiDANEFetcherFactory.DANE_TYPE) != null) {
                            byte[] bArr2 = (byte[]) attributes2.get(JndiDANEFetcherFactory.DANE_TYPE).get();
                            if (DANEEntry.isValidCertificate(bArr2)) {
                                try {
                                    String nameInNamespace = dirContext.getNameInNamespace();
                                    arrayList.add(new DANEEntry(nameInNamespace.substring(1, nameInNamespace.length() - 1), bArr2));
                                } catch (IOException e2) {
                                    throw new DANEException("Exception parsing entry: " + e2.getMessage(), e2);
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                    return arrayList;
                } catch (NamingException e3) {
                    throw new DANEException("Exception dealing with DNS: " + e3.getMessage(), e3);
                }
            }
        };
    }

    public JndiDANEFetcherFactory setAuthoritative(boolean z) {
        this.isAuthoritative = z;
        return this;
    }

    public JndiDANEFetcherFactory usingDNSServer(String str) {
        this.dnsServerList.add(str);
        return this;
    }
}
