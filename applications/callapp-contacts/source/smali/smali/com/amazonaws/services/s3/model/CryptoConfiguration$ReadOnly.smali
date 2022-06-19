.class final Lcom/amazonaws/services/s3/model/CryptoConfiguration$ReadOnly;
.super Lcom/amazonaws/services/s3/model/CryptoConfiguration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/CryptoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReadOnly"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/model/CryptoConfiguration$1;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration$ReadOnly;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 250
    invoke-super {p0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->clone()Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public final isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final setCryptoMode(Lcom/amazonaws/services/s3/model/CryptoMode;)V
    .locals 0

    .line 266
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setCryptoProvider(Ljava/security/Provider;)V
    .locals 0

    .line 260
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setIgnoreMissingInstructionFile(Z)V
    .locals 0

    .line 273
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setKmsRegion(Lcom/amazonaws/regions/Regions;)V
    .locals 0

    .line 280
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setStorageMode(Lcom/amazonaws/services/s3/model/CryptoStorageMode;)V
    .locals 0

    .line 254
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final withCryptoMode(Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .locals 0

    .line 269
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final withCryptoProvider(Ljava/security/Provider;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .locals 0

    .line 263
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final withIgnoreMissingInstructionFile(Z)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .locals 0

    .line 277
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final withKmsRegion(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .locals 0

    .line 283
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final withStorageMode(Lcom/amazonaws/services/s3/model/CryptoStorageMode;)Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .locals 0

    .line 257
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
