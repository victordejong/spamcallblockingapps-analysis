.class public Lorg/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "X509AttributeCertificateParser"
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/bouncycastle/openssl/PEMReader;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/openssl/PEMReader;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser;->this$0:Lorg/bouncycastle/openssl/PEMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/openssl/PEMReader;Lorg/bouncycastle/openssl/PEMReader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;)V

    return-void
.end method


# virtual methods
.method public parseObject(Lorg/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;

    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;-><init>([B)V

    return-object v0
.end method
