.class final Lcom/google/android/gms/internal/consent_sdk/zzn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/app/Application;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzb;

.field private final zzc:Lcom/google/android/gms/internal/consent_sdk/zzam;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/zzb;Lcom/google/android/gms/internal/consent_sdk/zzam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza:Landroid/app/Application;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzb;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzam;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza:Landroid/app/Application;

    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/consent_sdk/zzn;)Lcom/google/android/gms/internal/consent_sdk/zzb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzb;

    return-object p0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/consent_sdk/zzn;)Lcom/google/android/gms/internal/consent_sdk/zzam;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzam;

    return-object p0
.end method


# virtual methods
.method public final zzd(Landroid/app/Activity;Ls4/d;)Lcom/google/android/gms/internal/consent_sdk/zzbu;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/consent_sdk/zzj;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ls4/a$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza:Landroid/app/Application;

    .line 2
    invoke-direct {v0, v1}, Ls4/a$a;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, v0, Ls4/a$a;->b:Landroid/content/Context;

    iget-object v2, v0, Ls4/a$a;->a:Ljava/util/List;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zzb()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    new-instance v8, Ls4/a;

    .line 5
    invoke-direct {v8, v4, v0}, Ls4/a;-><init>(ZLs4/a$a;)V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzo;

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move-object v9, p2

    .line 7
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/consent_sdk/zzo;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzn;Landroid/app/Activity;Ls4/a;Ls4/d;Lcom/google/android/gms/internal/consent_sdk/zzm;)V

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzo;->zza(Lcom/google/android/gms/internal/consent_sdk/zzo;)Lcom/google/android/gms/internal/consent_sdk/zzbu;

    move-result-object p1

    return-object p1
.end method
