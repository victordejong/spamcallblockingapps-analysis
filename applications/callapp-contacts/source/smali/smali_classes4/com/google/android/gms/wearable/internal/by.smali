.class final Lcom/google/android/gms/wearable/internal/by;
.super Lcom/google/android/gms/common/api/internal/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/u<",
        "Lcom/google/android/gms/wearable/internal/db;",
        "Lcom/google/android/gms/wearable/l$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/wearable/l$a;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/l$a;Lcom/google/android/gms/common/api/internal/i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/l$a;",
            "Lcom/google/android/gms/common/api/internal/i$a<",
            "Lcom/google/android/gms/wearable/l$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/u;-><init>(Lcom/google/android/gms/common/api/internal/i$a;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/by;->b:Lcom/google/android/gms/wearable/l$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/l$a;Lcom/google/android/gms/common/api/internal/i$a;Lcom/google/android/gms/wearable/internal/bw;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/by;-><init>(Lcom/google/android/gms/wearable/l$a;Lcom/google/android/gms/common/api/internal/i$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/tasks/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/wearable/internal/db;

    .line 5
    new-instance v0, Lcom/google/android/gms/wearable/internal/cm;

    invoke-direct {v0, p2}, Lcom/google/android/gms/wearable/internal/cm;-><init>(Lcom/google/android/gms/tasks/i;)V

    iget-object p2, p0, Lcom/google/android/gms/wearable/internal/by;->b:Lcom/google/android/gms/wearable/l$a;

    .line 1162
    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/db;->c:Lcom/google/android/gms/wearable/internal/bo;

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/android/gms/wearable/internal/bo;->a(Lcom/google/android/gms/wearable/internal/db;Lcom/google/android/gms/common/api/internal/d$b;Ljava/lang/Object;)V

    return-void
.end method
