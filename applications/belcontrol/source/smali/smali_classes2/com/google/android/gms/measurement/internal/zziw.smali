.class public final Lcom/google/android/gms/measurement/internal/zziw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Landroid/content/ComponentName;

.field public final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzja;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzja;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziw;->zzb:Lcom/google/android/gms/measurement/internal/zzja;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zziw;->zza:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziw;->zzb:Lcom/google/android/gms/measurement/internal/zzja;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzja;->zza:Lcom/google/android/gms/measurement/internal/zzjb;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziw;->zza:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjb;->zzJ(Lcom/google/android/gms/measurement/internal/zzjb;Landroid/content/ComponentName;)V

    return-void
.end method
