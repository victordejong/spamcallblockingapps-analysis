.class public final Lcom/google/android/gms/internal/ads/zzbwv;
.super Lcom/google/android/gms/internal/ads/zzcje;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbwu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbwu;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzcje;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwv;->zza:Lcom/google/android/gms/internal/ads/zzbwu;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "LeibnizHttpUrlPinger pinging URL: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 3
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzciz;->zze(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "URL does not match oda:// scheme, falling back on HttpUrlPinger"

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzciz;->zze(Ljava/lang/String;)V

    .line 7
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzcje;->zza(Ljava/lang/String;)V

    return-void
.end method
