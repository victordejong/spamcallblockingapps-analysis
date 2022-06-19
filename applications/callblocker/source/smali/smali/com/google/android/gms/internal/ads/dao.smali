.class public final Lcom/google/android/gms/internal/ads/dao;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 11
    const-string/jumbo v0, "^projects/%s/locations/%s/keyRings/%s/cryptoKeys/%s$"

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "([0-9a-zA-Z\\-\\.\\_~])+"

    aput-object v2, v1, v4

    const-string/jumbo v2, "([0-9a-zA-Z\\-\\.\\_~])+"

    aput-object v2, v1, v5

    const-string/jumbo v2, "([0-9a-zA-Z\\-\\.\\_~])+"

    aput-object v2, v1, v3

    const-string/jumbo v2, "([0-9a-zA-Z\\-\\.\\_~])+"

    aput-object v2, v1, v6

    .line 12
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dao;->a:Ljava/util/regex/Pattern;

    .line 14
    const-string/jumbo v0, "^projects/%s/locations/%s/keyRings/%s/cryptoKeys/%s/cryptoKeyVersions/%s$"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "([0-9a-zA-Z\\-\\.\\_~])+"

    aput-object v2, v1, v4

    const-string/jumbo v2, "([0-9a-zA-Z\\-\\.\\_~])+"

    aput-object v2, v1, v5

    const-string/jumbo v2, "([0-9a-zA-Z\\-\\.\\_~])+"

    aput-object v2, v1, v3

    const-string/jumbo v2, "([0-9a-zA-Z\\-\\.\\_~])+"

    aput-object v2, v1, v6

    const-string/jumbo v2, "([0-9a-zA-Z\\-\\.\\_~])+"

    aput-object v2, v1, v7

    .line 15
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dao;->b:Ljava/util/regex/Pattern;

    .line 17
    return-void
.end method

.method public static a(I)V
    .locals 5

    .prologue
    .line 1
    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    .line 2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "invalid key size %d; only 128-bit and 256-bit AES keys are supported"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    shl-int/lit8 v4, p0, 0x3

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 4
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_0
    return-void
.end method

.method public static a(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6
    if-ltz p0, :cond_0

    if-lez p0, :cond_1

    .line 7
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "key has version %d; only keys with version in range [0..%d] are supported"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 9
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    return-void
.end method
