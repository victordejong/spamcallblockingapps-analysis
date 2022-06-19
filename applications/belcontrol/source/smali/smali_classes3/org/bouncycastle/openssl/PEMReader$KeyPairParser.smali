.class public abstract Lorg/bouncycastle/openssl/PEMReader$KeyPairParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "KeyPairParser"
.end annotation


# instance fields
.field public provider:Ljava/lang/String;

.field public final synthetic this$0:Lorg/bouncycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openssl/PEMReader$KeyPairParser;->this$0:Lorg/bouncycastle/openssl/PEMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/openssl/PEMReader$KeyPairParser;->provider:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public readKeyPair(Lorg/bouncycastle/util/io/pem/PemObject;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 10

    const-string v0, "exception decoding - please check password and data."

    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/util/io/pem/PemHeader;

    invoke-virtual {v4}, Lorg/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Proc-Type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "4,ENCRYPTED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lorg/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEK-Info"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lorg/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v6

    if-eqz v2, :cond_5

    iget-object p1, p0, Lorg/bouncycastle/openssl/PEMReader$KeyPairParser;->this$0:Lorg/bouncycastle/openssl/PEMReader;

    invoke-static {p1}, Lorg/bouncycastle/openssl/PEMReader;->access$400(Lorg/bouncycastle/openssl/PEMReader;)Lorg/bouncycastle/openssl/PasswordFinder;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/bouncycastle/openssl/PEMReader$KeyPairParser;->this$0:Lorg/bouncycastle/openssl/PEMReader;

    invoke-static {p1}, Lorg/bouncycastle/openssl/PEMReader;->access$400(Lorg/bouncycastle/openssl/PEMReader;)Lorg/bouncycastle/openssl/PasswordFinder;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/openssl/PasswordFinder;->getPassword()[C

    move-result-object v7

    if-eqz v7, :cond_3

    new-instance p1, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {p1, v3, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v9

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/bouncycastle/openssl/PEMReader$KeyPairParser;->provider:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/openssl/PEMUtilities;->crypt(ZLjava/lang/String;[B[CLjava/lang/String;[B)[B

    move-result-object v6

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/bouncycastle/openssl/PasswordException;

    const-string v0, "Password is null, but a password is required"

    invoke-direct {p1, v0}, Lorg/bouncycastle/openssl/PasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/openssl/PasswordException;

    const-string v0, "No password finder specified, but a password is required"

    invoke-direct {p1, v0}, Lorg/bouncycastle/openssl/PasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    :try_start_0
    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    if-eqz v2, :cond_6

    new-instance v1, Lorg/bouncycastle/openssl/PEMException;

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_6
    new-instance v0, Lorg/bouncycastle/openssl/PEMException;

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    if-eqz v2, :cond_7

    new-instance v1, Lorg/bouncycastle/openssl/PEMException;

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_7
    new-instance v0, Lorg/bouncycastle/openssl/PEMException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
