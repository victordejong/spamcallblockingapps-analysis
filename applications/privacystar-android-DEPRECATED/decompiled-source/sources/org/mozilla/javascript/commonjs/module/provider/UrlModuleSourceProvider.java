package org.mozilla.javascript.commonjs.module.provider;

import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.Serializable;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider.class */
public class UrlModuleSourceProvider extends ModuleSourceProviderBase {
    private static final long serialVersionUID = 1;
    private final Iterable<URI> fallbackUris;
    private final Iterable<URI> privilegedUris;
    private final UrlConnectionExpiryCalculator urlConnectionExpiryCalculator;
    private final UrlConnectionSecurityDomainProvider urlConnectionSecurityDomainProvider;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator.class */
    public static class URLValidator implements Serializable {
        private static final long serialVersionUID = 1;
        private final String entityTags;
        private long expiry;
        private final long lastModified;
        private final URI uri;

        public URLValidator(URI uri, URLConnection uRLConnection, long j, UrlConnectionExpiryCalculator urlConnectionExpiryCalculator) {
            this.uri = uri;
            this.lastModified = uRLConnection.getLastModified();
            this.entityTags = getEntityTags(uRLConnection);
            this.expiry = calculateExpiry(uRLConnection, j, urlConnectionExpiryCalculator);
        }

        private long calculateExpiry(URLConnection uRLConnection, long j, UrlConnectionExpiryCalculator urlConnectionExpiryCalculator) {
            long j2 = 0;
            if ("no-cache".equals(uRLConnection.getHeaderField("Pragma"))) {
                return 0L;
            }
            String headerField = uRLConnection.getHeaderField("Cache-Control");
            if (headerField != null) {
                if (headerField.indexOf("no-cache") != -1) {
                    return 0L;
                }
                int maxAge = getMaxAge(headerField);
                if (-1 != maxAge) {
                    long currentTimeMillis = System.currentTimeMillis();
                    return (maxAge * 1000) + (currentTimeMillis - (Math.max(Math.max(0L, currentTimeMillis - uRLConnection.getDate()), uRLConnection.getHeaderFieldInt("Age", 0) * 1000) + (currentTimeMillis - j)));
                }
            }
            long headerFieldDate = uRLConnection.getHeaderFieldDate(HttpRequest.HEADER_EXPIRES, -1L);
            if (headerFieldDate != -1) {
                return headerFieldDate;
            }
            if (urlConnectionExpiryCalculator != null) {
                j2 = urlConnectionExpiryCalculator.calculateExpiry(uRLConnection);
            }
            return j2;
        }

        private String getEntityTags(URLConnection uRLConnection) {
            List<String> list = uRLConnection.getHeaderFields().get(HttpRequest.HEADER_ETAG);
            if (list == null || list.isEmpty()) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            Iterator<String> it = list.iterator();
            sb.append(it.next());
            while (it.hasNext()) {
                sb.append(", ");
                sb.append(it.next());
            }
            return sb.toString();
        }

        private int getMaxAge(String str) {
            int indexOf;
            int indexOf2 = str.indexOf("max-age");
            if (indexOf2 == -1 || (indexOf = str.indexOf(61, indexOf2 + 7)) == -1) {
                return -1;
            }
            int i = indexOf + 1;
            int indexOf3 = str.indexOf(44, i);
            try {
                return Integer.parseInt(indexOf3 == -1 ? str.substring(i) : str.substring(i, indexOf3));
            } catch (NumberFormatException e) {
                return -1;
            }
        }

        private boolean isResourceChanged(URLConnection uRLConnection) throws IOException {
            boolean z = false;
            boolean z2 = false;
            if (uRLConnection instanceof HttpURLConnection) {
                if (((HttpURLConnection) uRLConnection).getResponseCode() == 304) {
                    z2 = true;
                }
                return z2;
            }
            if (this.lastModified == uRLConnection.getLastModified()) {
                z = true;
            }
            return z;
        }

        boolean appliesTo(URI uri) {
            return this.uri.equals(uri);
        }

        void applyConditionals(URLConnection uRLConnection) {
            if (this.lastModified != 0) {
                uRLConnection.setIfModifiedSince(this.lastModified);
            }
            if (this.entityTags != null && this.entityTags.length() > 0) {
                uRLConnection.addRequestProperty(HttpRequest.HEADER_IF_NONE_MATCH, this.entityTags);
            }
        }

        boolean entityNeedsRevalidation() {
            return System.currentTimeMillis() > this.expiry;
        }

        boolean updateValidator(URLConnection uRLConnection, long j, UrlConnectionExpiryCalculator urlConnectionExpiryCalculator) throws IOException {
            boolean isResourceChanged = isResourceChanged(uRLConnection);
            if (!isResourceChanged) {
                this.expiry = calculateExpiry(uRLConnection, j, urlConnectionExpiryCalculator);
            }
            return isResourceChanged;
        }
    }

    public UrlModuleSourceProvider(Iterable<URI> iterable, Iterable<URI> iterable2) {
        this(iterable, iterable2, new DefaultUrlConnectionExpiryCalculator(), null);
    }

    public UrlModuleSourceProvider(Iterable<URI> iterable, Iterable<URI> iterable2, UrlConnectionExpiryCalculator urlConnectionExpiryCalculator, UrlConnectionSecurityDomainProvider urlConnectionSecurityDomainProvider) {
        this.privilegedUris = iterable;
        this.fallbackUris = iterable2;
        this.urlConnectionExpiryCalculator = urlConnectionExpiryCalculator;
        this.urlConnectionSecurityDomainProvider = urlConnectionSecurityDomainProvider;
    }

    private void close(URLConnection uRLConnection) {
        try {
            uRLConnection.getInputStream().close();
        } catch (IOException e) {
            onFailedClosingUrlConnection(uRLConnection, e);
        }
    }

    private static String getCharacterEncoding(URLConnection uRLConnection) {
        ParsedContentType parsedContentType = new ParsedContentType(uRLConnection.getContentType());
        String encoding = parsedContentType.getEncoding();
        if (encoding != null) {
            return encoding;
        }
        String contentType = parsedContentType.getContentType();
        return (contentType == null || !contentType.startsWith("text/")) ? "utf-8" : "8859_1";
    }

    private static Reader getReader(URLConnection uRLConnection) throws IOException {
        return new InputStreamReader(uRLConnection.getInputStream(), getCharacterEncoding(uRLConnection));
    }

    private Object getSecurityDomain(URLConnection uRLConnection) {
        return this.urlConnectionSecurityDomainProvider == null ? null : this.urlConnectionSecurityDomainProvider.getSecurityDomain(uRLConnection);
    }

    private ModuleSource loadFromPathList(String str, Object obj, Iterable<URI> iterable) throws IOException, URISyntaxException {
        if (iterable == null) {
            return null;
        }
        for (URI uri : iterable) {
            ModuleSource loadFromUri = loadFromUri(uri.resolve(str), uri, obj);
            if (loadFromUri != null) {
                return loadFromUri;
            }
        }
        return null;
    }

    @Override // org.mozilla.javascript.commonjs.module.provider.ModuleSourceProviderBase
    protected boolean entityNeedsRevalidation(Object obj) {
        return !(obj instanceof URLValidator) || ((URLValidator) obj).entityNeedsRevalidation();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003d, code lost:
        if (r11.appliesTo(r9) != false) goto L_0x0045;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected org.mozilla.javascript.commonjs.module.provider.ModuleSource loadFromActualUri(java.net.URI r9, java.net.URI r10, java.lang.Object r11) throws java.io.IOException {
        /*
            r8 = this;
            r0 = r10
            if (r0 != 0) goto L_0x000a
            r0 = 0
            r12 = r0
            goto L_0x0010
        L_0x000a:
            r0 = r10
            java.net.URL r0 = r0.toURL()
            r12 = r0
        L_0x0010:
            java.net.URL r0 = new java.net.URL
            r1 = r0
            r2 = r12
            r3 = r9
            java.lang.String r3 = r3.toString()
            r1.<init>(r2, r3)
            r12 = r0
            long r0 = java.lang.System.currentTimeMillis()
            r13 = r0
            r0 = r8
            r1 = r12
            java.net.URLConnection r0 = r0.openUrlConnection(r1)
            r12 = r0
            r0 = r11
            boolean r0 = r0 instanceof org.mozilla.javascript.commonjs.module.provider.UrlModuleSourceProvider.URLValidator
            if (r0 == 0) goto L_0x0043
            r0 = r11
            org.mozilla.javascript.commonjs.module.provider.UrlModuleSourceProvider$URLValidator r0 = (org.mozilla.javascript.commonjs.module.provider.UrlModuleSourceProvider.URLValidator) r0
            r11 = r0
            r0 = r11
            r1 = r9
            boolean r0 = r0.appliesTo(r1)
            if (r0 == 0) goto L_0x0043
            goto L_0x0045
        L_0x0043:
            r0 = 0
            r11 = r0
        L_0x0045:
            r0 = r11
            if (r0 == 0) goto L_0x004f
            r0 = r11
            r1 = r12
            r0.applyConditionals(r1)
        L_0x004f:
            r0 = r12
            r0.connect()     // Catch: IOException -> 0x00a3, RuntimeException -> 0x00ac, FileNotFoundException -> 0x00b5
            r0 = r11
            if (r0 == 0) goto L_0x0071
            r0 = r11
            r1 = r12
            r2 = r13
            r3 = r8
            org.mozilla.javascript.commonjs.module.provider.UrlConnectionExpiryCalculator r3 = r3.urlConnectionExpiryCalculator     // Catch: IOException -> 0x00a3, RuntimeException -> 0x00ac, FileNotFoundException -> 0x00b5
            boolean r0 = r0.updateValidator(r1, r2, r3)     // Catch: IOException -> 0x00a3, RuntimeException -> 0x00ac, FileNotFoundException -> 0x00b5
            if (r0 == 0) goto L_0x0071
            r0 = r8
            r1 = r12
            r0.close(r1)     // Catch: IOException -> 0x00a3, RuntimeException -> 0x00ac, FileNotFoundException -> 0x00b5
            org.mozilla.javascript.commonjs.module.provider.ModuleSource r0 = org.mozilla.javascript.commonjs.module.provider.UrlModuleSourceProvider.NOT_MODIFIED     // Catch: IOException -> 0x00a3, RuntimeException -> 0x00ac, FileNotFoundException -> 0x00b5
            return r0
        L_0x0071:
            r0 = r12
            java.io.Reader r0 = getReader(r0)     // Catch: IOException -> 0x00a3, RuntimeException -> 0x00ac, FileNotFoundException -> 0x00b5
            r15 = r0
            r0 = r8
            r1 = r12
            java.lang.Object r0 = r0.getSecurityDomain(r1)     // Catch: IOException -> 0x00a3, RuntimeException -> 0x00ac, FileNotFoundException -> 0x00b5
            r11 = r0
            org.mozilla.javascript.commonjs.module.provider.UrlModuleSourceProvider$URLValidator r0 = new org.mozilla.javascript.commonjs.module.provider.UrlModuleSourceProvider$URLValidator     // Catch: IOException -> 0x00a3, RuntimeException -> 0x00ac, FileNotFoundException -> 0x00b5
            r16 = r0
            r0 = r16
            r1 = r9
            r2 = r12
            r3 = r13
            r4 = r8
            org.mozilla.javascript.commonjs.module.provider.UrlConnectionExpiryCalculator r4 = r4.urlConnectionExpiryCalculator     // Catch: IOException -> 0x00a3, RuntimeException -> 0x00ac, FileNotFoundException -> 0x00b5
            r0.<init>(r1, r2, r3, r4)     // Catch: IOException -> 0x00a3, RuntimeException -> 0x00ac, FileNotFoundException -> 0x00b5
            org.mozilla.javascript.commonjs.module.provider.ModuleSource r0 = new org.mozilla.javascript.commonjs.module.provider.ModuleSource     // Catch: IOException -> 0x00a3, RuntimeException -> 0x00ac, FileNotFoundException -> 0x00b5
            r1 = r0
            r2 = r15
            r3 = r11
            r4 = r9
            r5 = r10
            r6 = r16
            r1.<init>(r2, r3, r4, r5, r6)     // Catch: IOException -> 0x00a3, RuntimeException -> 0x00ac, FileNotFoundException -> 0x00b5
            r9 = r0
            r0 = r9
            return r0
        L_0x00a3:
            r9 = move-exception
            r0 = r8
            r1 = r12
            r0.close(r1)
            r0 = r9
            throw r0
        L_0x00ac:
            r9 = move-exception
            r0 = r8
            r1 = r12
            r0.close(r1)
            r0 = r9
            throw r0
        L_0x00b5:
            r9 = move-exception
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.commonjs.module.provider.UrlModuleSourceProvider.loadFromActualUri(java.net.URI, java.net.URI, java.lang.Object):org.mozilla.javascript.commonjs.module.provider.ModuleSource");
    }

    @Override // org.mozilla.javascript.commonjs.module.provider.ModuleSourceProviderBase
    protected ModuleSource loadFromFallbackLocations(String str, Object obj) throws IOException, URISyntaxException {
        return loadFromPathList(str, obj, this.fallbackUris);
    }

    @Override // org.mozilla.javascript.commonjs.module.provider.ModuleSourceProviderBase
    protected ModuleSource loadFromPrivilegedLocations(String str, Object obj) throws IOException, URISyntaxException {
        return loadFromPathList(str, obj, this.privilegedUris);
    }

    @Override // org.mozilla.javascript.commonjs.module.provider.ModuleSourceProviderBase
    protected ModuleSource loadFromUri(URI uri, URI uri2, Object obj) throws IOException, URISyntaxException {
        ModuleSource loadFromActualUri = loadFromActualUri(new URI(uri + ".js"), uri2, obj);
        return loadFromActualUri != null ? loadFromActualUri : loadFromActualUri(uri, uri2, obj);
    }

    protected void onFailedClosingUrlConnection(URLConnection uRLConnection, IOException iOException) {
    }

    protected URLConnection openUrlConnection(URL url) throws IOException {
        return url.openConnection();
    }
}
