.class public final Lcom/google/android/gms/internal/ads/zzehw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdapterT:",
        "Ljava/lang/Object;",
        "ListenerT::Lcom/google/android/gms/internal/ads/zzdgb;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdapterT;"
        }
    .end annotation
.end field

.field public final zzc:Lcom/google/android/gms/internal/ads/zzdgb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "ListenerT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdgb;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdapterT;T",
            "ListenerT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzb:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzc:Lcom/google/android/gms/internal/ads/zzdgb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehw;->zza:Ljava/lang/String;

    return-void
.end method
