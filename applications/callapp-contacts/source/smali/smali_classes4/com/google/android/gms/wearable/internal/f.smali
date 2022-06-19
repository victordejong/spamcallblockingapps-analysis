.class final Lcom/google/android/gms/wearable/internal/f;
.super Lcom/google/android/gms/common/api/internal/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/n<",
        "Lcom/google/android/gms/wearable/internal/db;",
        "Lcom/google/android/gms/wearable/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lcom/google/android/gms/wearable/b$a;

.field private final f:[Landroid/content/IntentFilter;

.field private final g:Lcom/google/android/gms/common/api/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/i<",
            "Lcom/google/android/gms/wearable/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/b$a;[Landroid/content/IntentFilter;Lcom/google/android/gms/common/api/internal/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/b$a;",
            "[",
            "Landroid/content/IntentFilter;",
            "Lcom/google/android/gms/common/api/internal/i<",
            "Lcom/google/android/gms/wearable/b$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/common/api/internal/n;-><init>(Lcom/google/android/gms/common/api/internal/i;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/f;->e:Lcom/google/android/gms/wearable/b$a;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/f;->f:[Landroid/content/IntentFilter;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/f;->g:Lcom/google/android/gms/common/api/internal/i;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/b$a;[Landroid/content/IntentFilter;Lcom/google/android/gms/common/api/internal/i;Lcom/google/android/gms/wearable/internal/d;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/wearable/internal/f;-><init>(Lcom/google/android/gms/wearable/b$a;[Landroid/content/IntentFilter;Lcom/google/android/gms/common/api/internal/i;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/tasks/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    check-cast p1, Lcom/google/android/gms/wearable/internal/db;

    .line 7
    new-instance v0, Lcom/google/android/gms/wearable/internal/cn;

    invoke-direct {v0, p2}, Lcom/google/android/gms/wearable/internal/cn;-><init>(Lcom/google/android/gms/tasks/i;)V

    iget-object p2, p0, Lcom/google/android/gms/wearable/internal/f;->e:Lcom/google/android/gms/wearable/b$a;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/f;->g:Lcom/google/android/gms/common/api/internal/i;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/f;->f:[Landroid/content/IntentFilter;

    .line 1147
    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/db;->d:Lcom/google/android/gms/wearable/internal/bo;

    .line 1148
    invoke-static {v1, v2}, Lcom/google/android/gms/wearable/internal/de;->c(Lcom/google/android/gms/common/api/internal/i;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/de;

    move-result-object v1

    .line 1149
    invoke-virtual {v3, p1, v0, p2, v1}, Lcom/google/android/gms/wearable/internal/bo;->a(Lcom/google/android/gms/wearable/internal/db;Lcom/google/android/gms/common/api/internal/d$b;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/de;)V

    return-void
.end method
