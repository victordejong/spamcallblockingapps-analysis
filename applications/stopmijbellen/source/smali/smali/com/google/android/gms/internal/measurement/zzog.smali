.class public final Lcom/google/android/gms/internal/measurement/zzog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzib<",
        "Lcom/google/android/gms/internal/measurement/zzoh;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzog;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzib<",
            "Lcom/google/android/gms/internal/measurement/zzoh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzog;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzog;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzog;->zza:Lcom/google/android/gms/internal/measurement/zzog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzoi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzoi;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzib;)Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzog;->zzb:Lcom/google/android/gms/internal/measurement/zzib;

    return-void
.end method

.method public static zzb()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzog;->zza:Lcom/google/android/gms/internal/measurement/zzog;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzog;->zzf()Lcom/google/android/gms/internal/measurement/zzoh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzoh;->zza()Z

    const/4 v0, 0x1

    return v0
.end method

.method public static zzc()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzog;->zza:Lcom/google/android/gms/internal/measurement/zzog;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzog;->zzf()Lcom/google/android/gms/internal/measurement/zzoh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzoh;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zzd()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzog;->zza:Lcom/google/android/gms/internal/measurement/zzog;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzog;->zzf()Lcom/google/android/gms/internal/measurement/zzoh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzoh;->zzc()Z

    move-result v0

    return v0
.end method

.method public static zze()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzog;->zza:Lcom/google/android/gms/internal/measurement/zzog;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzog;->zzf()Lcom/google/android/gms/internal/measurement/zzoh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzoh;->zzd()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzog;->zzf()Lcom/google/android/gms/internal/measurement/zzoh;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/measurement/zzoh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzog;->zzb:Lcom/google/android/gms/internal/measurement/zzib;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzoh;

    return-object v0
.end method
