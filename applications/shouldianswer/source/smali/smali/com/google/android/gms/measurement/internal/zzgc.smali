.class final Lcom/google/android/gms/measurement/internal/zzgc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.2.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzhc;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzga;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzga;Lcom/google/android/gms/measurement/internal/zzhc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzhc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zza:Lcom/google/android/gms/measurement/internal/zzhc;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzga;->zza(Lcom/google/android/gms/measurement/internal/zzga;Lcom/google/android/gms/measurement/internal/zzhc;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgc;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zza()V

    return-void
.end method
