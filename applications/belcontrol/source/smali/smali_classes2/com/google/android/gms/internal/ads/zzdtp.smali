.class public final synthetic Lcom/google/android/gms/internal/ads/zzdtp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final zzhta:Lcom/google/android/gms/internal/ads/zzdto;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdto;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtp;->zzhta:Lcom/google/android/gms/internal/ads/zzdto;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtp;->zzhta:Lcom/google/android/gms/internal/ads/zzdto;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdto;->zzc(Ljava/lang/Exception;)V

    return-void
.end method
