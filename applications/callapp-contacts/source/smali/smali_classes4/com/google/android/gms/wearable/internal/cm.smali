.class final Lcom/google/android/gms/wearable/internal/cm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/d$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/d$b<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/tasks/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/i<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/cm;->a:Lcom/google/android/gms/tasks/i;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 6
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/wearable/internal/cm;->a:Lcom/google/android/gms/tasks/i;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/i;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v1, 0xfa2

    if-ne v0, v1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/wearable/internal/cm;->a:Lcom/google/android/gms/tasks/i;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/i;->a(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/cm;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/cm;->a:Lcom/google/android/gms/tasks/i;

    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/i;->a(Ljava/lang/Exception;)V

    return-void
.end method
