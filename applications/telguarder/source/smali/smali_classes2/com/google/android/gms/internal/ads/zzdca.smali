.class final synthetic Lcom/google/android/gms/internal/ads/zzdca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzhbi:Lcom/google/android/gms/internal/ads/zzdcb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdcb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdca;->zzhbi:Lcom/google/android/gms/internal/ads/zzdcb;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdca;->zzhbi:Lcom/google/android/gms/internal/ads/zzdcb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcb;->zzatd()Lcom/google/android/gms/internal/ads/zzdby;

    move-result-object v0

    return-object v0
.end method
