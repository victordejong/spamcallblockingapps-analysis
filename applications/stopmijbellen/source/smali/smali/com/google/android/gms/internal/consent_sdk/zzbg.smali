.class public final Lcom/google/android/gms/internal/consent_sdk/zzbg;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/os/Handler;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzbm;

.field private zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzbi;Landroid/os/Handler;Lcom/google/android/gms/internal/consent_sdk/zzbm;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbg;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbg;->zza:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzbg;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzbm;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/consent_sdk/zzbg;)Lcom/google/android/gms/internal/consent_sdk/zzbm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbg;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzbm;

    return-object p0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/consent_sdk/zzbg;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "consent://"

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/consent_sdk/zzbg;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbg;->zzc:Z

    return p0
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/consent_sdk/zzbg;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbg;->zzc:Z

    return p1
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "("

    const-string v1, ");"

    invoke-static {v2, p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbg;->zza:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzbd;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbd;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbg;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
