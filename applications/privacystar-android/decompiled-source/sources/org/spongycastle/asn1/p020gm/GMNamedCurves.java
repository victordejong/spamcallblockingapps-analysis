package org.spongycastle.asn1.p020gm;

import java.math.BigInteger;
import java.util.Enumeration;
import java.util.Hashtable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.p022x9.X9ECParameters;
import org.spongycastle.asn1.p022x9.X9ECParametersHolder;
import org.spongycastle.asn1.p022x9.X9ECPoint;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.util.Strings;
import org.spongycastle.util.encoders.Hex;
/* renamed from: org.spongycastle.asn1.gm.GMNamedCurves */
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/gm/GMNamedCurves.class */
public class GMNamedCurves {
    static X9ECParametersHolder sm2p256v1 = new X9ECParametersHolder() { // from class: org.spongycastle.asn1.gm.GMNamedCurves.1
        @Override // org.spongycastle.asn1.p022x9.X9ECParametersHolder
        protected X9ECParameters createParameters() {
            BigInteger fromHex = GMNamedCurves.fromHex("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF");
            BigInteger fromHex2 = GMNamedCurves.fromHex("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFC");
            BigInteger fromHex3 = GMNamedCurves.fromHex("28E9FA9E9D9F5E344D5A9E4BCF6509A7F39789F515AB8F92DDBCBD414D940E93");
            BigInteger fromHex4 = GMNamedCurves.fromHex("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF7203DF6B21C6052B53BBF40939D54123");
            BigInteger valueOf = BigInteger.valueOf(1L);
            ECCurve configureCurve = GMNamedCurves.configureCurve(new ECCurve.C2401Fp(fromHex, fromHex2, fromHex3, fromHex4, valueOf));
            return new X9ECParameters(configureCurve, new X9ECPoint(configureCurve, Hex.decode("0432C4AE2C1F1981195F9904466A39C9948FE30BBFF2660BE1715A4589334C74C7BC3736A2F4F6779C59BDCEE36B692153D0A9877CC62A474002DF32E52139F0A0")), fromHex4, valueOf, (byte[]) null);
        }
    };
    static X9ECParametersHolder wapip192v1 = new X9ECParametersHolder() { // from class: org.spongycastle.asn1.gm.GMNamedCurves.2
        @Override // org.spongycastle.asn1.p022x9.X9ECParametersHolder
        protected X9ECParameters createParameters() {
            BigInteger fromHex = GMNamedCurves.fromHex("BDB6F4FE3E8B1D9E0DA8C0D46F4C318CEFE4AFE3B6B8551F");
            BigInteger fromHex2 = GMNamedCurves.fromHex("BB8E5E8FBC115E139FE6A814FE48AAA6F0ADA1AA5DF91985");
            BigInteger fromHex3 = GMNamedCurves.fromHex("1854BEBDC31B21B7AEFC80AB0ECD10D5B1B3308E6DBF11C1");
            BigInteger fromHex4 = GMNamedCurves.fromHex("BDB6F4FE3E8B1D9E0DA8C0D40FC962195DFAE76F56564677");
            BigInteger valueOf = BigInteger.valueOf(1L);
            ECCurve configureCurve = GMNamedCurves.configureCurve(new ECCurve.C2401Fp(fromHex, fromHex2, fromHex3, fromHex4, valueOf));
            return new X9ECParameters(configureCurve, new X9ECPoint(configureCurve, Hex.decode("044AD5F7048DE709AD51236DE65E4D4B482C836DC6E410664002BB3A02D4AAADACAE24817A4CA3A1B014B5270432DB27D2")), fromHex4, valueOf, (byte[]) null);
        }
    };
    static final Hashtable objIds = new Hashtable();
    static final Hashtable curves = new Hashtable();
    static final Hashtable names = new Hashtable();

    static {
        defineCurve("wapip192v1", GMObjectIdentifiers.wapip192v1, wapip192v1);
        defineCurve("sm2p256v1", GMObjectIdentifiers.sm2p256v1, sm2p256v1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ECCurve configureCurve(ECCurve eCCurve) {
        return eCCurve;
    }

    static void defineCurve(String str, ASN1ObjectIdentifier aSN1ObjectIdentifier, X9ECParametersHolder x9ECParametersHolder) {
        objIds.put(Strings.toLowerCase(str), aSN1ObjectIdentifier);
        names.put(aSN1ObjectIdentifier, str);
        curves.put(aSN1ObjectIdentifier, x9ECParametersHolder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static BigInteger fromHex(String str) {
        return new BigInteger(1, Hex.decode(str));
    }

    public static X9ECParameters getByName(String str) {
        ASN1ObjectIdentifier oid = getOID(str);
        return oid == null ? null : getByOID(oid);
    }

    public static X9ECParameters getByOID(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        X9ECParametersHolder x9ECParametersHolder = (X9ECParametersHolder) curves.get(aSN1ObjectIdentifier);
        return x9ECParametersHolder == null ? null : x9ECParametersHolder.getParameters();
    }

    public static String getName(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return (String) names.get(aSN1ObjectIdentifier);
    }

    public static Enumeration getNames() {
        return names.elements();
    }

    public static ASN1ObjectIdentifier getOID(String str) {
        return (ASN1ObjectIdentifier) objIds.get(Strings.toLowerCase(str));
    }
}
