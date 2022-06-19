.class public final Lcom/google/android/gms/internal/measurement/zzbo;
.super Lcom/google/android/gms/internal/measurement/zzbg;
.source ""


# instance fields
.field public final synthetic zza:Landroid/app/Activity;

.field public final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzm;

.field public final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzbq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzbq;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/zzm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbo;->zzc:Lcom/google/android/gms/internal/measurement/zzbq;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbo;->zza:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzbo;->zzb:Lcom/google/android/gms/internal/measurement/zzm;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzbq;->zza:Lcom/google/android/gms/internal/measurement/zzbr;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbg;-><init>(Lcom/google/android/gms/internal/measurement/zzbr;Z)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbo;->zzc:Lcom/google/android/gms/internal/measurement/zzbq;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzbq;->zza:Lcom/google/android/gms/internal/measurement/zzbr;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzbr;->zzR(Lcom/google/android/gms/internal/measurement/zzbr;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbo;->zza:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzbo;->zzb:Lcom/google/android/gms/internal/measurement/zzm;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzbg;->zzi:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzp;->onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzs;J)V

    return-void
.end method
