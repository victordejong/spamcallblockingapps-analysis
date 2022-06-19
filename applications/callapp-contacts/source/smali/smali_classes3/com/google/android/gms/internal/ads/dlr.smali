.class final Lcom/google/android/gms/internal/ads/dlr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/Object;

.field public final d:Lcom/google/android/gms/internal/ads/dmt;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlr;->d:Lcom/google/android/gms/internal/ads/dmt;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/dmt;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dlr;->d:Lcom/google/android/gms/internal/ads/dmt;

    return-void
.end method
