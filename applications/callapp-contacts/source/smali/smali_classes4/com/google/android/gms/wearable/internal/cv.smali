.class final Lcom/google/android/gms/wearable/internal/cv;
.super Lcom/google/android/gms/wearable/internal/cq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/cq<",
        "Lcom/google/android/gms/wearable/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/wearable/internal/af;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/d$b;Lcom/google/android/gms/wearable/internal/af;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/d$b<",
            "Lcom/google/android/gms/wearable/e;",
            ">;",
            "Lcom/google/android/gms/wearable/internal/af;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/cq;-><init>(Lcom/google/android/gms/common/api/internal/d$b;)V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/af;

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/cv;->a:Lcom/google/android/gms/wearable/internal/af;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/internal/zzdo;)V
    .locals 3

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/wearable/internal/zzdo;->zzdr:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/google/android/gms/wearable/internal/ab;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v2, p1, Lcom/google/android/gms/wearable/internal/zzdo;->zzdr:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/internal/ab;-><init>(Ljava/io/OutputStream;)V

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/cv;->a:Lcom/google/android/gms/wearable/internal/af;

    .line 8
    new-instance v2, Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {v2, v0}, Lcom/google/android/gms/wearable/internal/ac;-><init>(Lcom/google/android/gms/wearable/internal/ab;)V

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/internal/af;->a(Lcom/google/android/gms/wearable/internal/ag;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    new-instance v1, Lcom/google/android/gms/wearable/internal/x;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget p1, p1, Lcom/google/android/gms/wearable/internal/zzdo;->statusCode:I

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/wearable/internal/x;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/internal/cq;->a(Ljava/lang/Object;)V

    return-void
.end method
