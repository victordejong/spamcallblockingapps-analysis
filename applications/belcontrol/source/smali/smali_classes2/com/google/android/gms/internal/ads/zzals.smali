.class public final Lcom/google/android/gms/internal/ads/zzals;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbac;


# instance fields
.field private final synthetic zzdki:Lcom/google/android/gms/internal/ads/zzalm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzalq;Lcom/google/android/gms/internal/ads/zzalm;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzals;->zzdki:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const-string v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzals;->zzdki:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbad;->reject()V

    return-void
.end method
