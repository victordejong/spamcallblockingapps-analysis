.class final Lcom/google/android/gms/wearable/internal/j;
.super Lcom/google/android/gms/wearable/internal/do;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/do<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/android/gms/wearable/f$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/wearable/f$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/do;-><init>(Lcom/google/android/gms/common/api/g;)V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/f$a;

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/j;->b:Lcom/google/android/gms/wearable/f$a;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/j;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/j;->b:Lcom/google/android/gms/wearable/f$a;

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/common/api/a$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    check-cast p1, Lcom/google/android/gms/wearable/internal/db;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/j;->b:Lcom/google/android/gms/wearable/f$a;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/j;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1167
    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/db;->b:Lcom/google/android/gms/wearable/internal/bo;

    invoke-virtual {v1, p1, p0, v0}, Lcom/google/android/gms/wearable/internal/bo;->a(Lcom/google/android/gms/wearable/internal/db;Lcom/google/android/gms/common/api/internal/d$b;Ljava/lang/Object;)V

    goto :goto_0

    .line 1168
    :cond_0
    new-instance v2, Lcom/google/android/gms/wearable/internal/cj;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/wearable/internal/cj;-><init>(Ljava/lang/String;Lcom/google/android/gms/wearable/f$a;)V

    .line 1169
    iget-object v0, p1, Lcom/google/android/gms/wearable/internal/db;->b:Lcom/google/android/gms/wearable/internal/bo;

    invoke-virtual {v0, p1, p0, v2}, Lcom/google/android/gms/wearable/internal/bo;->a(Lcom/google/android/gms/wearable/internal/db;Lcom/google/android/gms/common/api/internal/d$b;Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/j;->b:Lcom/google/android/gms/wearable/f$a;

    return-void
.end method
