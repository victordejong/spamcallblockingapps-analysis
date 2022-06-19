.class final Lcom/google/android/gms/wearable/internal/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/internal/ak;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/wearable/internal/ak<",
        "Lcom/google/android/gms/wearable/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:[Landroid/content/IntentFilter;


# direct methods
.method constructor <init>(Ljava/lang/String;[Landroid/content/IntentFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/v;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/v;->b:[Landroid/content/IntentFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/wearable/internal/db;Lcom/google/android/gms/common/api/internal/d$b;Ljava/lang/Object;Lcom/google/android/gms/common/api/internal/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p3, Lcom/google/android/gms/wearable/f$a;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/v;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/v;->b:[Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 1152
    iget-object v0, p1, Lcom/google/android/gms/wearable/internal/db;->b:Lcom/google/android/gms/wearable/internal/bo;

    .line 1153
    invoke-static {p4, v1}, Lcom/google/android/gms/wearable/internal/de;->b(Lcom/google/android/gms/common/api/internal/i;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/de;

    move-result-object p4

    .line 1154
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/wearable/internal/bo;->a(Lcom/google/android/gms/wearable/internal/db;Lcom/google/android/gms/common/api/internal/d$b;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/de;)V

    return-void

    .line 1155
    :cond_0
    new-instance v2, Lcom/google/android/gms/wearable/internal/cj;

    invoke-direct {v2, v0, p3}, Lcom/google/android/gms/wearable/internal/cj;-><init>(Ljava/lang/String;Lcom/google/android/gms/wearable/f$a;)V

    .line 1156
    iget-object p3, p1, Lcom/google/android/gms/wearable/internal/db;->b:Lcom/google/android/gms/wearable/internal/bo;

    .line 1157
    invoke-static {p4, v0, v1}, Lcom/google/android/gms/wearable/internal/de;->a(Lcom/google/android/gms/common/api/internal/i;Ljava/lang/String;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/de;

    move-result-object p4

    .line 1158
    invoke-virtual {p3, p1, p2, v2, p4}, Lcom/google/android/gms/wearable/internal/bo;->a(Lcom/google/android/gms/wearable/internal/db;Lcom/google/android/gms/common/api/internal/d$b;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/de;)V

    return-void
.end method
