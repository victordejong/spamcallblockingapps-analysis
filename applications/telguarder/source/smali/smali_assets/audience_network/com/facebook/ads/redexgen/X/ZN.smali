.class public final Lcom/facebook/ads/redexgen/X/ZN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ZM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppCertificateHashes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/6l<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZN;->A03()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/Signature;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 66289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66290
    sget-object v0, Lcom/facebook/ads/redexgen/X/71;->A04:Lcom/facebook/ads/redexgen/X/71;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/ZN;->A01(Landroid/content/pm/Signature;Lcom/facebook/ads/redexgen/X/71;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Ljava/lang/String;

    .line 66291
    sget-object v0, Lcom/facebook/ads/redexgen/X/71;->A05:Lcom/facebook/ads/redexgen/X/71;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/ZN;->A01(Landroid/content/pm/Signature;Lcom/facebook/ads/redexgen/X/71;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A01:Ljava/lang/String;

    .line 66292
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZN;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Landroid/content/pm/Signature;Lcom/facebook/ads/redexgen/X/71;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 66293
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 66294
    .local p0, "input":Ljava/io/InputStream;
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZN;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 66295
    .local p1, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v0, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 66296
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/72;->A08([BLcom/facebook/ads/redexgen/X/71;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final A02(Ljava/lang/Integer;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 66297
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 66298
    .local p0, "jsonObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v1, 0x2

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZN;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66299
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZN;->A01:Ljava/lang/String;

    const/4 v2, 0x7

    const/4 v1, 0x2

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZN;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66300
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66301
    return-object p2
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZN;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x79t
        0xft
        0x14t
        0x11t
        0x18t
        0x74t
        0x36t
        0x68t
        0x29t
    .end array-data
.end method


# virtual methods
.method public final A82(Ljava/lang/Object;)Z
    .locals 2

    .line 66302
    check-cast p1, Lcom/facebook/ads/redexgen/X/ZN;

    .line 66303
    .local p0, "newAppCertificateHash":Lcom/facebook/ads/redexgen/X/ZN;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/ZN;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZN;->A01:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/ZN;->A01:Ljava/lang/String;

    .line 66304
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 66305
    :goto_0
    return v0

    .line 66306
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AE0()I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.String.length"
        }
    .end annotation

    .line 66307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A01:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 66308
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_0
    add-int/2addr v1, v2

    .line 66309
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic AEM(Ljava/lang/Object;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 66310
    check-cast p1, Ljava/lang/Integer;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ZN;->A02(Ljava/lang/Integer;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
