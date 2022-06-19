.class Lcom/google/android/gms/wearable/internal/cq;
.super Lcom/google/android/gms/wearable/internal/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/wearable/internal/a;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/common/api/internal/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/d$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/d$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/d$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/cq;->a:Lcom/google/android/gms/common/api/internal/d$b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/cq;->a:Lcom/google/android/gms/common/api/internal/d$b;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/d$b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/cq;->a:Lcom/google/android/gms/common/api/internal/d$b;

    :cond_0
    return-void
.end method
