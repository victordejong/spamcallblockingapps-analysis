package org.bouncycastle.jce.provider;

import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralSubtree;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/PKIXNameConstraintValidator.class */
public class PKIXNameConstraintValidator {
    private Set permittedSubtreesDN;
    private Set permittedSubtreesDNS;
    private Set permittedSubtreesEmail;
    private Set permittedSubtreesIP;
    private Set permittedSubtreesURI;
    private Set excludedSubtreesDN = new HashSet();
    private Set excludedSubtreesDNS = new HashSet();
    private Set excludedSubtreesEmail = new HashSet();
    private Set excludedSubtreesURI = new HashSet();
    private Set excludedSubtreesIP = new HashSet();

    private void checkExcludedDN(Set set, ASN1Sequence aSN1Sequence) {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (withinDNSubtree(aSN1Sequence, (ASN1Sequence) it.next())) {
                throw new PKIXNameConstraintValidatorException("Subject distinguished name is from an excluded subtree");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkExcludedDNS(java.util.Set r5, java.lang.String r6) {
        /*
            r4 = this;
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto La
            return
        La:
            r0 = r5
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        L11:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L42
            r0 = r5
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r7 = r0
            r0 = r4
            r1 = r6
            r2 = r7
            boolean r0 = r0.withinDomain(r1, r2)
            if (r0 != 0) goto L38
            r0 = r6
            r1 = r7
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L38
            goto L11
        L38:
            org.bouncycastle.jce.provider.PKIXNameConstraintValidatorException r0 = new org.bouncycastle.jce.provider.PKIXNameConstraintValidatorException
            r1 = r0
            java.lang.String r2 = "DNS is from an excluded subtree."
            r1.<init>(r2)
            throw r0
        L42:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.PKIXNameConstraintValidator.checkExcludedDNS(java.util.Set, java.lang.String):void");
    }

    private void checkExcludedEmail(Set set, String str) {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (emailIsConstrained(str, (String) it.next())) {
                throw new PKIXNameConstraintValidatorException("Email address is from an excluded subtree.");
            }
        }
    }

    private void checkExcludedIP(Set set, byte[] bArr) {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (isIPConstrained(bArr, (byte[]) it.next())) {
                throw new PKIXNameConstraintValidatorException("IP is from an excluded subtree.");
            }
        }
    }

    private void checkExcludedURI(Set set, String str) {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (isUriConstrained(str, (String) it.next())) {
                throw new PKIXNameConstraintValidatorException("URI is from an excluded subtree.");
            }
        }
    }

    private void checkPermittedDN(Set set, ASN1Sequence aSN1Sequence) {
        if (set == null) {
            return;
        }
        if (set.isEmpty() && aSN1Sequence.size() == 0) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (withinDNSubtree(aSN1Sequence, (ASN1Sequence) it.next())) {
                return;
            }
        }
        throw new PKIXNameConstraintValidatorException("Subject distinguished name is not from a permitted subtree");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkPermittedDNS(java.util.Set r5, java.lang.String r6) {
        /*
            r4 = this;
            r0 = r5
            if (r0 != 0) goto L5
            return
        L5:
            r0 = r5
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        Lc:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L34
            r0 = r7
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r8 = r0
            r0 = r4
            r1 = r6
            r2 = r8
            boolean r0 = r0.withinDomain(r1, r2)
            if (r0 != 0) goto L33
            r0 = r6
            r1 = r8
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto Lc
        L33:
            return
        L34:
            r0 = r6
            int r0 = r0.length()
            if (r0 != 0) goto L45
            r0 = r5
            int r0 = r0.size()
            if (r0 != 0) goto L45
            return
        L45:
            org.bouncycastle.jce.provider.PKIXNameConstraintValidatorException r0 = new org.bouncycastle.jce.provider.PKIXNameConstraintValidatorException
            r1 = r0
            java.lang.String r2 = "DNS is not from a permitted subtree."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.PKIXNameConstraintValidator.checkPermittedDNS(java.util.Set, java.lang.String):void");
    }

    private void checkPermittedEmail(Set set, String str) {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (emailIsConstrained(str, (String) it.next())) {
                return;
            }
        }
        if (str.length() != 0 || set.size() != 0) {
            throw new PKIXNameConstraintValidatorException("Subject email address is not from a permitted subtree.");
        }
    }

    private void checkPermittedIP(Set set, byte[] bArr) {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (isIPConstrained(bArr, (byte[]) it.next())) {
                return;
            }
        }
        if (bArr.length != 0 || set.size() != 0) {
            throw new PKIXNameConstraintValidatorException("IP is not from a permitted subtree.");
        }
    }

    private void checkPermittedURI(Set set, String str) {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (isUriConstrained(str, (String) it.next())) {
                return;
            }
        }
        if (str.length() != 0 || set.size() != 0) {
            throw new PKIXNameConstraintValidatorException("URI is not from a permitted subtree.");
        }
    }

    private boolean collectionsAreEqual(Collection collection, Collection collection2) {
        boolean z;
        if (collection == collection2) {
            return true;
        }
        if (collection == null || collection2 == null || collection.size() != collection2.size()) {
            return false;
        }
        for (Object obj : collection) {
            Iterator it = collection2.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (equals(obj, it.next())) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    private static int compareTo(byte[] bArr, byte[] bArr2) {
        if (Arrays.areEqual(bArr, bArr2)) {
            return 0;
        }
        return Arrays.areEqual(max(bArr, bArr2), bArr) ? 1 : -1;
    }

    private boolean emailIsConstrained(String str, String str2) {
        String substring = str.substring(str.indexOf(64) + 1);
        return str2.indexOf(64) != -1 ? str.equalsIgnoreCase(str2) : str2.charAt(0) != '.' ? substring.equalsIgnoreCase(str2) : withinDomain(substring, str2);
    }

    private boolean equals(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return (!(obj instanceof byte[]) || !(obj2 instanceof byte[])) ? obj.equals(obj2) : Arrays.areEqual((byte[]) obj, (byte[]) obj2);
    }

    private static String extractHostFromURL(String str) {
        String substring = str.substring(str.indexOf(58) + 1);
        String str2 = substring;
        if (substring.indexOf("//") != -1) {
            str2 = substring.substring(substring.indexOf("//") + 2);
        }
        String str3 = str2;
        if (str2.lastIndexOf(58) != -1) {
            str3 = str2.substring(0, str2.lastIndexOf(58));
        }
        String substring2 = str3.substring(str3.indexOf(58) + 1);
        String substring3 = substring2.substring(substring2.indexOf(64) + 1);
        String str4 = substring3;
        if (substring3.indexOf(47) != -1) {
            str4 = substring3.substring(0, substring3.indexOf(47));
        }
        return str4;
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [byte[], byte[][]] */
    private byte[][] extractIPsAndSubnetMasks(byte[] bArr, byte[] bArr2) {
        int length = bArr.length / 2;
        byte[] bArr3 = new byte[length];
        byte[] bArr4 = new byte[length];
        System.arraycopy(bArr, 0, bArr3, 0, length);
        System.arraycopy(bArr, length, bArr4, 0, length);
        byte[] bArr5 = new byte[length];
        byte[] bArr6 = new byte[length];
        System.arraycopy(bArr2, 0, bArr5, 0, length);
        System.arraycopy(bArr2, length, bArr6, 0, length);
        return new byte[]{bArr3, bArr4, bArr5, bArr6};
    }

    private String extractNameAsString(GeneralName generalName) {
        return DERIA5String.getInstance(generalName.getName()).getString();
    }

    private int hashCollection(Collection collection) {
        int i = 0;
        if (collection == null) {
            return 0;
        }
        for (Object obj : collection) {
            i += obj instanceof byte[] ? Arrays.hashCode((byte[]) obj) : obj.hashCode();
        }
        return i;
    }

    private Set intersectDN(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(((GeneralSubtree) it.next()).getBase().getName().getDERObject());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    ASN1Sequence aSN1Sequence2 = (ASN1Sequence) it2.next();
                    if (withinDNSubtree(aSN1Sequence, aSN1Sequence2)) {
                        hashSet.add(aSN1Sequence);
                    } else if (withinDNSubtree(aSN1Sequence2, aSN1Sequence)) {
                        hashSet.add(aSN1Sequence2);
                    }
                }
            } else if (aSN1Sequence != null) {
                hashSet.add(aSN1Sequence);
            }
        }
        return hashSet;
    }

    private Set intersectDNS(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            String extractNameAsString = extractNameAsString(((GeneralSubtree) it.next()).getBase());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    String str = (String) it2.next();
                    if (withinDomain(str, extractNameAsString)) {
                        hashSet.add(str);
                    } else if (withinDomain(extractNameAsString, str)) {
                        hashSet.add(extractNameAsString);
                    }
                }
            } else if (extractNameAsString != null) {
                hashSet.add(extractNameAsString);
            }
        }
        return hashSet;
    }

    private Set intersectEmail(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            String extractNameAsString = extractNameAsString(((GeneralSubtree) it.next()).getBase());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    intersectEmail(extractNameAsString, (String) it2.next(), hashSet);
                }
            } else if (extractNameAsString != null) {
                hashSet.add(extractNameAsString);
            }
        }
        return hashSet;
    }

    private void intersectEmail(String str, String str2, Set set) {
        if (str.indexOf(64) != -1) {
            String substring = str.substring(str.indexOf(64) + 1);
            if (str2.indexOf(64) != -1) {
                if (!str.equalsIgnoreCase(str2)) {
                    return;
                }
            } else if (str2.startsWith(".")) {
                if (!withinDomain(substring, str2)) {
                    return;
                }
            } else if (!substring.equalsIgnoreCase(str2)) {
                return;
            }
        } else if (str.startsWith(".")) {
            if (str2.indexOf(64) != -1) {
                if (!withinDomain(str2.substring(str.indexOf(64) + 1), str)) {
                    return;
                }
            } else if (str2.startsWith(".")) {
                if (!withinDomain(str, str2) && !str.equalsIgnoreCase(str2)) {
                    if (!withinDomain(str2, str)) {
                        return;
                    }
                }
            } else if (!withinDomain(str2, str)) {
                return;
            }
            set.add(str2);
            return;
        } else if (str2.indexOf(64) != -1) {
            if (!str2.substring(str2.indexOf(64) + 1).equalsIgnoreCase(str)) {
                return;
            }
            set.add(str2);
            return;
        } else if (str2.startsWith(".")) {
            if (!withinDomain(str, str2)) {
                return;
            }
        } else if (!str.equalsIgnoreCase(str2)) {
            return;
        }
        set.add(str);
    }

    private Set intersectIP(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            byte[] octets = ASN1OctetString.getInstance(((GeneralSubtree) it.next()).getBase().getName()).getOctets();
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    hashSet.addAll(intersectIPRange((byte[]) it2.next(), octets));
                }
            } else if (octets != null) {
                hashSet.add(octets);
            }
        }
        return hashSet;
    }

    private Set intersectIPRange(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return Collections.EMPTY_SET;
        }
        byte[][] extractIPsAndSubnetMasks = extractIPsAndSubnetMasks(bArr, bArr2);
        byte[] bArr3 = extractIPsAndSubnetMasks[0];
        byte[] bArr4 = extractIPsAndSubnetMasks[1];
        byte[] bArr5 = extractIPsAndSubnetMasks[2];
        byte[] bArr6 = extractIPsAndSubnetMasks[3];
        byte[][] minMaxIPs = minMaxIPs(bArr3, bArr4, bArr5, bArr6);
        return compareTo(max(minMaxIPs[0], minMaxIPs[2]), min(minMaxIPs[1], minMaxIPs[3])) == 1 ? Collections.EMPTY_SET : Collections.singleton(ipWithSubnetMask(m950or(minMaxIPs[0], minMaxIPs[2]), m950or(bArr4, bArr6)));
    }

    private Set intersectURI(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            String extractNameAsString = extractNameAsString(((GeneralSubtree) it.next()).getBase());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    intersectURI((String) it2.next(), extractNameAsString, hashSet);
                }
            } else if (extractNameAsString != null) {
                hashSet.add(extractNameAsString);
            }
        }
        return hashSet;
    }

    private void intersectURI(String str, String str2, Set set) {
        if (str.indexOf(64) != -1) {
            String substring = str.substring(str.indexOf(64) + 1);
            if (str2.indexOf(64) != -1) {
                if (!str.equalsIgnoreCase(str2)) {
                    return;
                }
            } else if (str2.startsWith(".")) {
                if (!withinDomain(substring, str2)) {
                    return;
                }
            } else if (!substring.equalsIgnoreCase(str2)) {
                return;
            }
        } else if (str.startsWith(".")) {
            if (str2.indexOf(64) != -1) {
                if (!withinDomain(str2.substring(str.indexOf(64) + 1), str)) {
                    return;
                }
            } else if (str2.startsWith(".")) {
                if (!withinDomain(str, str2) && !str.equalsIgnoreCase(str2)) {
                    if (!withinDomain(str2, str)) {
                        return;
                    }
                }
            } else if (!withinDomain(str2, str)) {
                return;
            }
            set.add(str2);
            return;
        } else if (str2.indexOf(64) != -1) {
            if (!str2.substring(str2.indexOf(64) + 1).equalsIgnoreCase(str)) {
                return;
            }
            set.add(str2);
            return;
        } else if (str2.startsWith(".")) {
            if (!withinDomain(str, str2)) {
                return;
            }
        } else if (!str.equalsIgnoreCase(str2)) {
            return;
        }
        set.add(str);
    }

    private byte[] ipWithSubnetMask(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length * 2];
        System.arraycopy(bArr, 0, bArr3, 0, length);
        System.arraycopy(bArr2, 0, bArr3, length, length);
        return bArr3;
    }

    private boolean isIPConstrained(byte[] bArr, byte[] bArr2) {
        byte[] bArr3;
        int length = bArr.length;
        if (length != bArr2.length / 2) {
            return false;
        }
        System.arraycopy(bArr2, length, new byte[length], 0, length);
        byte[] bArr4 = new byte[length];
        byte[] bArr5 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr4[i] = (byte) (bArr2[i] & bArr3[i]);
            bArr5[i] = (byte) (bArr[i] & bArr3[i]);
        }
        return Arrays.areEqual(bArr4, bArr5);
    }

    private boolean isUriConstrained(String str, String str2) {
        String extractHostFromURL = extractHostFromURL(str);
        return !str2.startsWith(".") ? extractHostFromURL.equalsIgnoreCase(str2) : withinDomain(extractHostFromURL, str2);
    }

    private static byte[] max(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < bArr.length; i++) {
            if ((bArr[i] & 65535) > (65535 & bArr2[i])) {
                return bArr;
            }
        }
        return bArr2;
    }

    private static byte[] min(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < bArr.length; i++) {
            if ((bArr[i] & 65535) < (65535 & bArr2[i])) {
                return bArr;
            }
        }
        return bArr2;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [byte[], byte[][]] */
    private byte[][] minMaxIPs(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int length = bArr.length;
        byte[] bArr5 = new byte[length];
        byte[] bArr6 = new byte[length];
        byte[] bArr7 = new byte[length];
        byte[] bArr8 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr5[i] = (byte) (bArr[i] & bArr2[i]);
            bArr6[i] = (byte) ((bArr[i] & bArr2[i]) | (bArr2[i] ^ (-1)));
            bArr7[i] = (byte) (bArr3[i] & bArr4[i]);
            bArr8[i] = (byte) ((bArr3[i] & bArr4[i]) | (bArr4[i] ^ (-1)));
        }
        return new byte[]{bArr5, bArr6, bArr7, bArr8};
    }

    /* renamed from: or */
    private static byte[] m950or(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr3[i] = (byte) (bArr[i] | bArr2[i]);
        }
        return bArr3;
    }

    private String stringifyIP(byte[] bArr) {
        String str = "";
        for (int i = 0; i < bArr.length / 2; i++) {
            str = str + Integer.toString(bArr[i] & 255) + ".";
        }
        String str2 = str.substring(0, str.length() - 1) + "/";
        for (int length = bArr.length / 2; length < bArr.length; length++) {
            str2 = str2 + Integer.toString(bArr[length] & 255) + ".";
        }
        return str2.substring(0, str2.length() - 1);
    }

    private String stringifyIPCollection(Set set) {
        String str;
        Iterator it = set.iterator();
        String str2 = "[";
        while (true) {
            str = str2;
            if (!it.hasNext()) {
                break;
            }
            str2 = str + stringifyIP((byte[]) it.next()) + ",";
        }
        String str3 = str;
        if (str.length() > 1) {
            str3 = str.substring(0, str.length() - 1);
        }
        return str3 + "]";
    }

    private Set unionDN(Set set, ASN1Sequence aSN1Sequence) {
        if (set.isEmpty()) {
            if (aSN1Sequence == null) {
                return set;
            }
            set.add(aSN1Sequence);
            return set;
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ASN1Sequence aSN1Sequence2 = (ASN1Sequence) it.next();
            if (withinDNSubtree(aSN1Sequence, aSN1Sequence2)) {
                hashSet.add(aSN1Sequence2);
            } else {
                if (!withinDNSubtree(aSN1Sequence2, aSN1Sequence)) {
                    hashSet.add(aSN1Sequence2);
                }
                hashSet.add(aSN1Sequence);
            }
        }
        return hashSet;
    }

    private Set unionEmail(Set set, String str) {
        if (set.isEmpty()) {
            if (str == null) {
                return set;
            }
            set.add(str);
            return set;
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            unionEmail((String) it.next(), str, hashSet);
        }
        return hashSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0073, code lost:
        if (withinDomain(r7.substring(r6.indexOf(64) + 1), r6) != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009c, code lost:
        if (withinDomain(r7, r6) != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a8, code lost:
        if (withinDomain(r7, r6) != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c8, code lost:
        if (r7.substring(r6.indexOf(64) + 1).equalsIgnoreCase(r6) != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00dd, code lost:
        if (withinDomain(r6, r7) != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00e8, code lost:
        if (r6.equalsIgnoreCase(r7) != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00eb, code lost:
        r8.add(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0027, code lost:
        if (r6.equalsIgnoreCase(r7) != false) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void unionEmail(java.lang.String r6, java.lang.String r7, java.util.Set r8) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.PKIXNameConstraintValidator.unionEmail(java.lang.String, java.lang.String, java.util.Set):void");
    }

    private Set unionIP(Set set, byte[] bArr) {
        if (set.isEmpty()) {
            if (bArr == null) {
                return set;
            }
            set.add(bArr);
            return set;
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            hashSet.addAll(unionIPRange((byte[]) it.next(), bArr));
        }
        return hashSet;
    }

    private Set unionIPRange(byte[] bArr, byte[] bArr2) {
        HashSet hashSet = new HashSet();
        boolean areEqual = Arrays.areEqual(bArr, bArr2);
        hashSet.add(bArr);
        if (!areEqual) {
            hashSet.add(bArr2);
        }
        return hashSet;
    }

    private Set unionURI(Set set, String str) {
        if (set.isEmpty()) {
            if (str == null) {
                return set;
            }
            set.add(str);
            return set;
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            unionURI((String) it.next(), str, hashSet);
        }
        return hashSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0073, code lost:
        if (withinDomain(r7.substring(r6.indexOf(64) + 1), r6) != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009c, code lost:
        if (withinDomain(r7, r6) != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a8, code lost:
        if (withinDomain(r7, r6) != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c8, code lost:
        if (r7.substring(r6.indexOf(64) + 1).equalsIgnoreCase(r6) != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00dd, code lost:
        if (withinDomain(r6, r7) != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00e8, code lost:
        if (r6.equalsIgnoreCase(r7) != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00eb, code lost:
        r8.add(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0027, code lost:
        if (r6.equalsIgnoreCase(r7) != false) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void unionURI(java.lang.String r6, java.lang.String r7, java.util.Set r8) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.PKIXNameConstraintValidator.unionURI(java.lang.String, java.lang.String, java.util.Set):void");
    }

    private static boolean withinDNSubtree(ASN1Sequence aSN1Sequence, ASN1Sequence aSN1Sequence2) {
        if (aSN1Sequence2.size() >= 1 && aSN1Sequence2.size() <= aSN1Sequence.size()) {
            for (int size = aSN1Sequence2.size() - 1; size >= 0; size--) {
                if (!aSN1Sequence2.getObjectAt(size).equals(aSN1Sequence.getObjectAt(size))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    private boolean withinDomain(String str, String str2) {
        String str3 = str2;
        if (str2.startsWith(".")) {
            str3 = str2.substring(1);
        }
        String[] split = Strings.split(str3, '.');
        String[] split2 = Strings.split(str, '.');
        if (split2.length <= split.length) {
            return false;
        }
        int length = split2.length - split.length;
        for (int i = -1; i < split.length; i++) {
            if (i == -1) {
                if (split2[i + length].equals("")) {
                    return false;
                }
            } else if (!split[i].equalsIgnoreCase(split2[i + length])) {
                return false;
            }
        }
        return true;
    }

    public void addExcludedSubtree(GeneralSubtree generalSubtree) {
        GeneralName base = generalSubtree.getBase();
        int tagNo = base.getTagNo();
        if (tagNo == 1) {
            this.excludedSubtreesEmail = unionEmail(this.excludedSubtreesEmail, extractNameAsString(base));
        } else if (tagNo == 2) {
            this.excludedSubtreesDNS = unionDNS(this.excludedSubtreesDNS, extractNameAsString(base));
        } else if (tagNo == 4) {
            this.excludedSubtreesDN = unionDN(this.excludedSubtreesDN, (ASN1Sequence) base.getName().getDERObject());
        } else if (tagNo == 6) {
            this.excludedSubtreesURI = unionURI(this.excludedSubtreesURI, extractNameAsString(base));
        } else if (tagNo != 7) {
        } else {
            this.excludedSubtreesIP = unionIP(this.excludedSubtreesIP, ASN1OctetString.getInstance(base.getName()).getOctets());
        }
    }

    public void checkExcluded(GeneralName generalName) {
        int tagNo = generalName.getTagNo();
        if (tagNo == 1) {
            checkExcludedEmail(this.excludedSubtreesEmail, extractNameAsString(generalName));
        } else if (tagNo == 2) {
            checkExcludedDNS(this.excludedSubtreesDNS, DERIA5String.getInstance(generalName.getName()).getString());
        } else if (tagNo == 4) {
            checkExcludedDN(ASN1Sequence.getInstance(generalName.getName().getDERObject()));
        } else if (tagNo == 6) {
            checkExcludedURI(this.excludedSubtreesURI, DERIA5String.getInstance(generalName.getName()).getString());
        } else if (tagNo != 7) {
        } else {
            checkExcludedIP(this.excludedSubtreesIP, ASN1OctetString.getInstance(generalName.getName()).getOctets());
        }
    }

    public void checkExcludedDN(ASN1Sequence aSN1Sequence) {
        checkExcludedDN(this.excludedSubtreesDN, aSN1Sequence);
    }

    public void checkPermitted(GeneralName generalName) {
        int tagNo = generalName.getTagNo();
        if (tagNo == 1) {
            checkPermittedEmail(this.permittedSubtreesEmail, extractNameAsString(generalName));
        } else if (tagNo == 2) {
            checkPermittedDNS(this.permittedSubtreesDNS, DERIA5String.getInstance(generalName.getName()).getString());
        } else if (tagNo == 4) {
            checkPermittedDN(ASN1Sequence.getInstance(generalName.getName().getDERObject()));
        } else if (tagNo == 6) {
            checkPermittedURI(this.permittedSubtreesURI, DERIA5String.getInstance(generalName.getName()).getString());
        } else if (tagNo != 7) {
        } else {
            checkPermittedIP(this.permittedSubtreesIP, ASN1OctetString.getInstance(generalName.getName()).getOctets());
        }
    }

    public void checkPermittedDN(ASN1Sequence aSN1Sequence) {
        checkPermittedDN(this.permittedSubtreesDN, aSN1Sequence);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PKIXNameConstraintValidator)) {
            return false;
        }
        PKIXNameConstraintValidator pKIXNameConstraintValidator = (PKIXNameConstraintValidator) obj;
        boolean z = false;
        if (collectionsAreEqual(pKIXNameConstraintValidator.excludedSubtreesDN, this.excludedSubtreesDN)) {
            z = false;
            if (collectionsAreEqual(pKIXNameConstraintValidator.excludedSubtreesDNS, this.excludedSubtreesDNS)) {
                z = false;
                if (collectionsAreEqual(pKIXNameConstraintValidator.excludedSubtreesEmail, this.excludedSubtreesEmail)) {
                    z = false;
                    if (collectionsAreEqual(pKIXNameConstraintValidator.excludedSubtreesIP, this.excludedSubtreesIP)) {
                        z = false;
                        if (collectionsAreEqual(pKIXNameConstraintValidator.excludedSubtreesURI, this.excludedSubtreesURI)) {
                            z = false;
                            if (collectionsAreEqual(pKIXNameConstraintValidator.permittedSubtreesDN, this.permittedSubtreesDN)) {
                                z = false;
                                if (collectionsAreEqual(pKIXNameConstraintValidator.permittedSubtreesDNS, this.permittedSubtreesDNS)) {
                                    z = false;
                                    if (collectionsAreEqual(pKIXNameConstraintValidator.permittedSubtreesEmail, this.permittedSubtreesEmail)) {
                                        z = false;
                                        if (collectionsAreEqual(pKIXNameConstraintValidator.permittedSubtreesIP, this.permittedSubtreesIP)) {
                                            z = false;
                                            if (collectionsAreEqual(pKIXNameConstraintValidator.permittedSubtreesURI, this.permittedSubtreesURI)) {
                                                z = true;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return hashCollection(this.excludedSubtreesDN) + hashCollection(this.excludedSubtreesDNS) + hashCollection(this.excludedSubtreesEmail) + hashCollection(this.excludedSubtreesIP) + hashCollection(this.excludedSubtreesURI) + hashCollection(this.permittedSubtreesDN) + hashCollection(this.permittedSubtreesDNS) + hashCollection(this.permittedSubtreesEmail) + hashCollection(this.permittedSubtreesIP) + hashCollection(this.permittedSubtreesURI);
    }

    public void intersectEmptyPermittedSubtree(int i) {
        if (i == 1) {
            this.permittedSubtreesEmail = new HashSet();
        } else if (i == 2) {
            this.permittedSubtreesDNS = new HashSet();
        } else if (i == 4) {
            this.permittedSubtreesDN = new HashSet();
        } else if (i == 6) {
            this.permittedSubtreesURI = new HashSet();
        } else if (i != 7) {
        } else {
            this.permittedSubtreesIP = new HashSet();
        }
    }

    public void intersectPermittedSubtree(ASN1Sequence aSN1Sequence) {
        HashMap hashMap = new HashMap();
        Enumeration objects = aSN1Sequence.getObjects();
        while (objects.hasMoreElements()) {
            GeneralSubtree generalSubtree = GeneralSubtree.getInstance(objects.nextElement());
            Integer num = new Integer(generalSubtree.getBase().getTagNo());
            if (hashMap.get(num) == null) {
                hashMap.put(num, new HashSet());
            }
            ((Set) hashMap.get(num)).add(generalSubtree);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            if (intValue == 1) {
                this.permittedSubtreesEmail = intersectEmail(this.permittedSubtreesEmail, (Set) entry.getValue());
            } else if (intValue == 2) {
                this.permittedSubtreesDNS = intersectDNS(this.permittedSubtreesDNS, (Set) entry.getValue());
            } else if (intValue == 4) {
                this.permittedSubtreesDN = intersectDN(this.permittedSubtreesDN, (Set) entry.getValue());
            } else if (intValue == 6) {
                this.permittedSubtreesURI = intersectURI(this.permittedSubtreesURI, (Set) entry.getValue());
            } else if (intValue == 7) {
                this.permittedSubtreesIP = intersectIP(this.permittedSubtreesIP, (Set) entry.getValue());
            }
        }
    }

    public String toString() {
        String str = "permitted:\n";
        String str2 = str;
        if (this.permittedSubtreesDN != null) {
            str2 = (str + "DN:\n") + this.permittedSubtreesDN.toString() + "\n";
        }
        String str3 = str2;
        if (this.permittedSubtreesDNS != null) {
            str3 = (str2 + "DNS:\n") + this.permittedSubtreesDNS.toString() + "\n";
        }
        String str4 = str3;
        if (this.permittedSubtreesEmail != null) {
            str4 = (str3 + "Email:\n") + this.permittedSubtreesEmail.toString() + "\n";
        }
        String str5 = str4;
        if (this.permittedSubtreesURI != null) {
            str5 = (str4 + "URI:\n") + this.permittedSubtreesURI.toString() + "\n";
        }
        String str6 = str5;
        if (this.permittedSubtreesIP != null) {
            str6 = (str5 + "IP:\n") + stringifyIPCollection(this.permittedSubtreesIP) + "\n";
        }
        String str7 = str6 + "excluded:\n";
        String str8 = str7;
        if (!this.excludedSubtreesDN.isEmpty()) {
            str8 = (str7 + "DN:\n") + this.excludedSubtreesDN.toString() + "\n";
        }
        String str9 = str8;
        if (!this.excludedSubtreesDNS.isEmpty()) {
            str9 = (str8 + "DNS:\n") + this.excludedSubtreesDNS.toString() + "\n";
        }
        String str10 = str9;
        if (!this.excludedSubtreesEmail.isEmpty()) {
            str10 = (str9 + "Email:\n") + this.excludedSubtreesEmail.toString() + "\n";
        }
        String str11 = str10;
        if (!this.excludedSubtreesURI.isEmpty()) {
            str11 = (str10 + "URI:\n") + this.excludedSubtreesURI.toString() + "\n";
        }
        String str12 = str11;
        if (!this.excludedSubtreesIP.isEmpty()) {
            str12 = (str11 + "IP:\n") + stringifyIPCollection(this.excludedSubtreesIP) + "\n";
        }
        return str12;
    }

    public Set unionDNS(Set set, String str) {
        if (set.isEmpty()) {
            if (str == null) {
                return set;
            }
            set.add(str);
            return set;
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (!withinDomain(str2, str)) {
                boolean withinDomain = withinDomain(str, str2);
                hashSet.add(str2);
                if (withinDomain) {
                }
            }
            hashSet.add(str);
        }
        return hashSet;
    }
}
