.class public interface abstract Lorg/bouncycastle/asn1/smime/SMIMEAttributes;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final encrypKeyPref:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final smimeCapabilities:Lorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_smimeCapabilities:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMEAttributes;->smimeCapabilities:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_encrypKeyPref:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/smime/SMIMEAttributes;->encrypKeyPref:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
