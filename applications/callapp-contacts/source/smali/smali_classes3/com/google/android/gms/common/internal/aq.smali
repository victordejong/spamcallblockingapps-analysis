.class abstract Lcom/google/android/gms/common/internal/aq;
.super Lcom/google/android/gms/common/internal/bb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/bb<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroid/os/Bundle;

.field final synthetic c:Lcom/google/android/gms/common/internal/d;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/internal/d;ILandroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/aq;->c:Lcom/google/android/gms/common/internal/d;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/bb;-><init>(Lcom/google/android/gms/common/internal/d;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/internal/aq;->a:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/aq;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/common/ConnectionResult;)V
.end method

.method protected abstract a()Z
.end method

.method protected final synthetic b()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/common/internal/aq;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/aq;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/aq;->c:Lcom/google/android/gms/common/internal/d;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/d;->zzi(Lcom/google/android/gms/common/internal/d;ILandroid/os/IInterface;)V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/aq;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/aq;->c:Lcom/google/android/gms/common/internal/d;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/d;->zzi(Lcom/google/android/gms/common/internal/d;ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/aq;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v1, "pendingIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/PendingIntent;

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget v1, p0, Lcom/google/android/gms/common/internal/aq;->a:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method
