.class public final Lcom/google/android/gms/internal/measurement/zzem;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/measurement/zzen;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzen;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzem;->zza:Lcom/google/android/gms/internal/measurement/zzen;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzem;->zza:Lcom/google/android/gms/internal/measurement/zzen;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzen;->zzc()V

    return-void
.end method
