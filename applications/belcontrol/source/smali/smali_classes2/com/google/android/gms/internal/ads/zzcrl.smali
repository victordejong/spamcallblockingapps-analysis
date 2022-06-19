.class public final Lcom/google/android/gms/internal/ads/zzcrl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdapterT:",
        "Ljava/lang/Object;",
        "ListenerT::Lcom/google/android/gms/internal/ads/zzbsu;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final zzcio:Ljava/lang/String;

.field public final zzdnl:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdapterT;"
        }
    .end annotation
.end field

.field public final zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "ListenerT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbsu;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrl;->zzdnl:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrl;->zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcrl;->zzcio:Ljava/lang/String;

    return-void
.end method
