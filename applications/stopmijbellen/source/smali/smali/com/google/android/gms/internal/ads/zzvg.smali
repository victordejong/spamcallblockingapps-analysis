.class public final synthetic Lcom/google/android/gms/internal/ads/zzvg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzvo;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzab;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzvo;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzfz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zza:Lcom/google/android/gms/internal/ads/zzvo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzc:Lcom/google/android/gms/internal/ads/zzfz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zza:Lcom/google/android/gms/internal/ads/zzvo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzc:Lcom/google/android/gms/internal/ads/zzfz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzvo;->zzl(Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzfz;)V

    return-void
.end method
