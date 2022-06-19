.class public final Lcom/google/android/gms/measurement/internal/zzfw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzas;

.field public final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzgd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgd;Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfw;->zzc:Lcom/google/android/gms/measurement/internal/zzgd;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfw;->zza:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfw;->zzb:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfw;->zzc:Lcom/google/android/gms/measurement/internal/zzgd;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfw;->zza:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfw;->zzb:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zzb(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfw;->zzc:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzw(Lcom/google/android/gms/measurement/internal/zzgd;)Lcom/google/android/gms/measurement/internal/zzkd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzK()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfw;->zzc:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzw(Lcom/google/android/gms/measurement/internal/zzgd;)Lcom/google/android/gms/measurement/internal/zzkd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfw;->zzb:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzB(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method
