.class final Lcom/google/android/gms/wearable/internal/p;
.super Lcom/google/android/gms/wearable/internal/do;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/wearable/internal/do<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/common/api/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/wearable/internal/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/wearable/internal/ak<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/g;Ljava/lang/Object;Lcom/google/android/gms/common/api/internal/i;Lcom/google/android/gms/wearable/internal/ak;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            "TT;",
            "Lcom/google/android/gms/common/api/internal/i<",
            "TT;>;",
            "Lcom/google/android/gms/wearable/internal/ak<",
            "TT;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/do;-><init>(Lcom/google/android/gms/common/api/g;)V

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/p;->a:Ljava/lang/Object;

    .line 5
    invoke-static {p3}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/i;

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/p;->b:Lcom/google/android/gms/common/api/internal/i;

    .line 6
    invoke-static {p4}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/ak;

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/p;->g:Lcom/google/android/gms/wearable/internal/ak;

    return-void
.end method

.method static a(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/wearable/internal/ak;Ljava/lang/Object;)Lcom/google/android/gms/common/api/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/g;",
            "Lcom/google/android/gms/wearable/internal/ak<",
            "TT;>;TT;)",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/g;->b()Lcom/google/android/gms/common/api/internal/i;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/wearable/internal/p;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/google/android/gms/wearable/internal/p;-><init>(Lcom/google/android/gms/common/api/g;Ljava/lang/Object;Lcom/google/android/gms/common/api/internal/i;Lcom/google/android/gms/wearable/internal/ak;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .locals 1

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/p;->a:Ljava/lang/Object;

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/p;->b:Lcom/google/android/gms/common/api/internal/i;

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/common/api/a$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    check-cast p1, Lcom/google/android/gms/wearable/internal/db;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/p;->g:Lcom/google/android/gms/wearable/internal/ak;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/p;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/p;->b:Lcom/google/android/gms/common/api/internal/i;

    invoke-interface {v0, p1, p0, v1, v2}, Lcom/google/android/gms/wearable/internal/ak;->a(Lcom/google/android/gms/wearable/internal/db;Lcom/google/android/gms/common/api/internal/d$b;Ljava/lang/Object;Lcom/google/android/gms/common/api/internal/i;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/p;->a:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/p;->b:Lcom/google/android/gms/common/api/internal/i;

    return-void
.end method
