.class public Lcom/google/android/gms/internal/ads/zzelo;
.super Ljava/io/IOException;
.source ""


# instance fields
.field private zzirf:Lcom/google/android/gms/internal/ads/zzemo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzirf:Lcom/google/android/gms/internal/ads/zzemo;

    return-void
.end method

.method public static zzbja()Lcom/google/android/gms/internal/ads/zzelo;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzelo;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzelo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzbjb()Lcom/google/android/gms/internal/ads/zzelo;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzelo;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzelo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzbjc()Lcom/google/android/gms/internal/ads/zzelo;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzelo;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzelo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzbjd()Lcom/google/android/gms/internal/ads/zzelo;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzelo;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzelo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzbje()Lcom/google/android/gms/internal/ads/zzelo;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzelo;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzelo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzbjf()Lcom/google/android/gms/internal/ads/zzeln;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeln;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeln;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzbjg()Lcom/google/android/gms/internal/ads/zzelo;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzelo;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzelo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzbjh()Lcom/google/android/gms/internal/ads/zzelo;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzelo;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzelo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzbji()Lcom/google/android/gms/internal/ads/zzelo;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzelo;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzelo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zzl(Lcom/google/android/gms/internal/ads/zzemo;)Lcom/google/android/gms/internal/ads/zzelo;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzirf:Lcom/google/android/gms/internal/ads/zzemo;

    return-object p0
.end method
