.class final Lcom/google/android/gms/internal/ads/bug;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/crh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/crh",
        "<",
        "Lcom/google/android/gms/internal/ads/buu;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ts;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/btx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/btx;Lcom/google/android/gms/internal/ads/ts;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bug;->b:Lcom/google/android/gms/internal/ads/btx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bug;->a:Lcom/google/android/gms/internal/ads/ts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/buu;

    .line 8
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->dF:Lcom/google/android/gms/internal/ads/ect;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bug;->b:Lcom/google/android/gms/internal/ads/btx;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/btx;->a(Lcom/google/android/gms/internal/ads/btx;)Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/ads/yd;->c:I

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->dH:Lcom/google/android/gms/internal/ads/ect;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 15
    if-nez p1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bug;->a:Lcom/google/android/gms/internal/ads/ts;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ts;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    :goto_0
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bug;->a:Lcom/google/android/gms/internal/ads/ts;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/buu;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/buu;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/buu;->c:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ts;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 18
    :cond_1
    if-nez p1, :cond_2

    .line 19
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bug;->a:Lcom/google/android/gms/internal/ads/ts;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ts;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bug;->a:Lcom/google/android/gms/internal/ads/ts;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/buu;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/buu;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ts;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bug;->a:Lcom/google/android/gms/internal/ads/ts;

    const-string/jumbo v2, "Internal error. "

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ts;->a(Ljava/lang/String;)V

    .line 6
    :goto_1
    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    move-exception v0

    .line 5
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
