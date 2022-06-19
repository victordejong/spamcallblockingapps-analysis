.class public final Lcom/google/android/gms/internal/measurement/zzbi;
.super Lcom/google/android/gms/internal/measurement/zzu;
.source ""


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzgm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbi;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbi;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzgm;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public final zze()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbi;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
