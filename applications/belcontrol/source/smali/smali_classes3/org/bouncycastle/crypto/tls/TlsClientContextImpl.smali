.class public Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsClientContext;


# instance fields
.field private secureRandom:Ljava/security/SecureRandom;

.field private securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

.field private userObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->userObject:Ljava/lang/Object;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->secureRandom:Ljava/security/SecureRandom;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    return-void
.end method


# virtual methods
.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    return-object v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->userObject:Ljava/lang/Object;

    return-void
.end method
