.class final Lcom/google/android/gms/common/api/internal/zaax;
.super Lcom/google/android/gms/internal/base/zap;
.source "SourceFile"


# instance fields
.field public final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaaz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaaz;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaax;->zaa:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/base/zap;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f

    const-string v1, "Unknown message id: "

    const-string v2, "GoogleApiClientImpl"

    .line 2
    invoke-static {v0, v1, p1, v2}, La6/d;->g(ILjava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaax;->zaa:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaz;->zah(Lcom/google/android/gms/common/api/internal/zaaz;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaax;->zaa:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaz;->zai(Lcom/google/android/gms/common/api/internal/zaaz;)V

    return-void
.end method
