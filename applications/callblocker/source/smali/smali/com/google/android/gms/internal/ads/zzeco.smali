.class public Lcom/google/android/gms/internal/ads/zzeco;
.super Ljava/io/IOException;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/deg;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeco;->a:Lcom/google/android/gms/internal/ads/deg;

    .line 3
    return-void
.end method

.method static a()Lcom/google/android/gms/internal/ads/zzeco;
    .locals 2

    .prologue
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeco;

    const-string/jumbo v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeco;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static b()Lcom/google/android/gms/internal/ads/zzeco;
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeco;

    const-string/jumbo v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeco;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static c()Lcom/google/android/gms/internal/ads/zzeco;
    .locals 2

    .prologue
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeco;

    const-string/jumbo v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeco;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static d()Lcom/google/android/gms/internal/ads/zzeco;
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeco;

    const-string/jumbo v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeco;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static e()Lcom/google/android/gms/internal/ads/zzeco;
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeco;

    const-string/jumbo v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeco;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static f()Lcom/google/android/gms/internal/ads/zzecn;
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecn;

    const-string/jumbo v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzecn;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static g()Lcom/google/android/gms/internal/ads/zzeco;
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeco;

    const-string/jumbo v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeco;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static h()Lcom/google/android/gms/internal/ads/zzeco;
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeco;

    const-string/jumbo v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeco;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static i()Lcom/google/android/gms/internal/ads/zzeco;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeco;

    const-string/jumbo v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeco;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/deg;)Lcom/google/android/gms/internal/ads/zzeco;
    .locals 0

    .prologue
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeco;->a:Lcom/google/android/gms/internal/ads/deg;

    .line 5
    return-object p0
.end method
