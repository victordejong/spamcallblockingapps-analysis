.class final synthetic Lcom/google/android/gms/internal/ads/abv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/abs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/abs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abv;->a:Lcom/google/android/gms/internal/ads/abs;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abv;->a:Lcom/google/android/gms/internal/ads/abs;

    .line 1172
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlb()Lcom/google/android/gms/internal/ads/egn;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abs;->a:Lcom/google/android/gms/internal/ads/zzti;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/egn;->b(Lcom/google/android/gms/internal/ads/zzti;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
