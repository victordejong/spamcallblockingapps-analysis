package org.bouncycastle.asn1.cryptopro;

import java.math.BigInteger;
import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.math.p012ec.ECCurve;
import org.bouncycastle.math.p012ec.ECFieldElement;
import org.bouncycastle.math.p012ec.ECPoint;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves.class */
public class ECGOST3410NamedCurves {
    public static final Hashtable names;
    public static final Hashtable objIds;
    public static final Hashtable params;

    static {
        Hashtable hashtable = new Hashtable();
        objIds = hashtable;
        Hashtable hashtable2 = new Hashtable();
        params = hashtable2;
        Hashtable hashtable3 = new Hashtable();
        names = hashtable3;
        BigInteger bigInteger = new BigInteger("115792089237316195423570985008687907853269984665640564039457584007913129639319");
        BigInteger bigInteger2 = new BigInteger("115792089237316195423570985008687907853073762908499243225378155805079068850323");
        ECCurve.C1607Fp c1607Fp = new ECCurve.C1607Fp(bigInteger, new BigInteger("115792089237316195423570985008687907853269984665640564039457584007913129639316"), new BigInteger("166"));
        ECDomainParameters eCDomainParameters = new ECDomainParameters(c1607Fp, new ECPoint.C1609Fp(c1607Fp, new ECFieldElement.C1608Fp(c1607Fp.getQ(), new BigInteger("1")), new ECFieldElement.C1608Fp(c1607Fp.getQ(), new BigInteger("64033881142927202683649881450433473985931760268884941288852745803908878638612"))), bigInteger2);
        DERObjectIdentifier dERObjectIdentifier = CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_A;
        hashtable2.put(dERObjectIdentifier, eCDomainParameters);
        BigInteger bigInteger3 = new BigInteger("115792089237316195423570985008687907853269984665640564039457584007913129639319");
        BigInteger bigInteger4 = new BigInteger("115792089237316195423570985008687907853073762908499243225378155805079068850323");
        ECCurve.C1607Fp c1607Fp2 = new ECCurve.C1607Fp(bigInteger3, new BigInteger("115792089237316195423570985008687907853269984665640564039457584007913129639316"), new BigInteger("166"));
        ECDomainParameters eCDomainParameters2 = new ECDomainParameters(c1607Fp2, new ECPoint.C1609Fp(c1607Fp2, new ECFieldElement.C1608Fp(c1607Fp2.getQ(), new BigInteger("1")), new ECFieldElement.C1608Fp(c1607Fp2.getQ(), new BigInteger("64033881142927202683649881450433473985931760268884941288852745803908878638612"))), bigInteger4);
        DERObjectIdentifier dERObjectIdentifier2 = CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_XchA;
        hashtable2.put(dERObjectIdentifier2, eCDomainParameters2);
        BigInteger bigInteger5 = new BigInteger("57896044618658097711785492504343953926634992332820282019728792003956564823193");
        BigInteger bigInteger6 = new BigInteger("57896044618658097711785492504343953927102133160255826820068844496087732066703");
        ECCurve.C1607Fp c1607Fp3 = new ECCurve.C1607Fp(bigInteger5, new BigInteger("57896044618658097711785492504343953926634992332820282019728792003956564823190"), new BigInteger("28091019353058090096996979000309560759124368558014865957655842872397301267595"));
        ECDomainParameters eCDomainParameters3 = new ECDomainParameters(c1607Fp3, new ECPoint.C1609Fp(c1607Fp3, new ECFieldElement.C1608Fp(bigInteger5, new BigInteger("1")), new ECFieldElement.C1608Fp(bigInteger5, new BigInteger("28792665814854611296992347458380284135028636778229113005756334730996303888124"))), bigInteger6);
        DERObjectIdentifier dERObjectIdentifier3 = CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_B;
        hashtable2.put(dERObjectIdentifier3, eCDomainParameters3);
        BigInteger bigInteger7 = new BigInteger("70390085352083305199547718019018437841079516630045180471284346843705633502619");
        BigInteger bigInteger8 = new BigInteger("70390085352083305199547718019018437840920882647164081035322601458352298396601");
        ECCurve.C1607Fp c1607Fp4 = new ECCurve.C1607Fp(bigInteger7, new BigInteger("70390085352083305199547718019018437841079516630045180471284346843705633502616"), new BigInteger("32858"));
        ECDomainParameters eCDomainParameters4 = new ECDomainParameters(c1607Fp4, new ECPoint.C1609Fp(c1607Fp4, new ECFieldElement.C1608Fp(bigInteger7, new BigInteger("0")), new ECFieldElement.C1608Fp(bigInteger7, new BigInteger("29818893917731240733471273240314769927240550812383695689146495261604565990247"))), bigInteger8);
        DERObjectIdentifier dERObjectIdentifier4 = CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_XchB;
        hashtable2.put(dERObjectIdentifier4, eCDomainParameters4);
        BigInteger bigInteger9 = new BigInteger("70390085352083305199547718019018437841079516630045180471284346843705633502619");
        BigInteger bigInteger10 = new BigInteger("70390085352083305199547718019018437840920882647164081035322601458352298396601");
        ECCurve.C1607Fp c1607Fp5 = new ECCurve.C1607Fp(bigInteger9, new BigInteger("70390085352083305199547718019018437841079516630045180471284346843705633502616"), new BigInteger("32858"));
        ECDomainParameters eCDomainParameters5 = new ECDomainParameters(c1607Fp5, new ECPoint.C1609Fp(c1607Fp5, new ECFieldElement.C1608Fp(bigInteger9, new BigInteger("0")), new ECFieldElement.C1608Fp(bigInteger9, new BigInteger("29818893917731240733471273240314769927240550812383695689146495261604565990247"))), bigInteger10);
        DERObjectIdentifier dERObjectIdentifier5 = CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_C;
        hashtable2.put(dERObjectIdentifier5, eCDomainParameters5);
        hashtable.put("GostR3410-2001-CryptoPro-A", dERObjectIdentifier);
        hashtable.put("GostR3410-2001-CryptoPro-B", dERObjectIdentifier3);
        hashtable.put("GostR3410-2001-CryptoPro-C", dERObjectIdentifier5);
        hashtable.put("GostR3410-2001-CryptoPro-XchA", dERObjectIdentifier2);
        hashtable.put("GostR3410-2001-CryptoPro-XchB", dERObjectIdentifier4);
        hashtable3.put(dERObjectIdentifier, "GostR3410-2001-CryptoPro-A");
        hashtable3.put(dERObjectIdentifier3, "GostR3410-2001-CryptoPro-B");
        hashtable3.put(dERObjectIdentifier5, "GostR3410-2001-CryptoPro-C");
        hashtable3.put(dERObjectIdentifier2, "GostR3410-2001-CryptoPro-XchA");
        hashtable3.put(dERObjectIdentifier4, "GostR3410-2001-CryptoPro-XchB");
    }

    public static ECDomainParameters getByName(String str) {
        DERObjectIdentifier dERObjectIdentifier = (DERObjectIdentifier) objIds.get(str);
        if (dERObjectIdentifier != null) {
            return (ECDomainParameters) params.get(dERObjectIdentifier);
        }
        return null;
    }

    public static ECDomainParameters getByOID(DERObjectIdentifier dERObjectIdentifier) {
        return (ECDomainParameters) params.get(dERObjectIdentifier);
    }

    public static String getName(DERObjectIdentifier dERObjectIdentifier) {
        return (String) names.get(dERObjectIdentifier);
    }

    public static Enumeration getNames() {
        return objIds.keys();
    }

    public static DERObjectIdentifier getOID(String str) {
        return (DERObjectIdentifier) objIds.get(str);
    }
}
