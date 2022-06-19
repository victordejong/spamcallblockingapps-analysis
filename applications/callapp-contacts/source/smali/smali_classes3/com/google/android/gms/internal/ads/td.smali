.class final Lcom/google/android/gms/internal/ads/td;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/gms/internal/ads/sz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/tb;Lcom/google/android/gms/internal/ads/sz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/td;->a:J

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/td;->b:Lcom/google/android/gms/internal/ads/sz;

    return-void
.end method
