.class public final Lcom/google/android/gms/internal/ads/ajp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/lw;

.field final b:Ljava/util/concurrent/Executor;

.field c:Lcom/google/android/gms/internal/ads/aju;

.field final d:Lcom/google/android/gms/internal/ads/hi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/hi<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lcom/google/android/gms/internal/ads/hi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/hi<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/lw;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/ajo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ajo;-><init>(Lcom/google/android/gms/internal/ads/ajp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ajp;->d:Lcom/google/android/gms/internal/ads/hi;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/ajq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ajq;-><init>(Lcom/google/android/gms/internal/ads/ajp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ajp;->e:Lcom/google/android/gms/internal/ads/hi;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ajp;->f:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ajp;->a:Lcom/google/android/gms/internal/ads/lw;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ajp;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method final a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "hashCode"

    .line 23
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajp;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
