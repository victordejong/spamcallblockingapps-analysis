.class public final Lcom/google/android/gms/internal/ads/axg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/app;
.implements Lcom/google/android/gms/internal/ads/auf;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/sx;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/ta;

.field private final d:Landroid/view/View;

.field private e:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/internal/ads/dwv$a$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/ta;Landroid/view/View;Lcom/google/android/gms/internal/ads/dwv$a$a;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axg;->a:Lcom/google/android/gms/internal/ads/sx;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/axg;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/axg;->c:Lcom/google/android/gms/internal/ads/ta;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/axg;->d:Landroid/view/View;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/axg;->f:Lcom/google/android/gms/internal/ads/dwv$a$a;

    .line 7
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axg;->c:Lcom/google/android/gms/internal/ads/ta;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axg;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ta;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/axg;->e:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axg;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axg;->f:Lcom/google/android/gms/internal/ads/dwv$a$a;

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$a$a;->e:Lcom/google/android/gms/internal/ads/dwv$a$a;

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "/Rewarded"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/axg;->e:Ljava/lang/String;

    .line 17
    return-void

    .line 16
    :cond_0
    const-string/jumbo v0, "/Interstitial"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/qr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axg;->c:Lcom/google/android/gms/internal/ads/ta;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axg;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axg;->c:Lcom/google/android/gms/internal/ads/ta;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axg;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axg;->c:Lcom/google/android/gms/internal/ads/ta;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/axg;->b:Landroid/content/Context;

    .line 23
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/ta;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/axg;->a:Lcom/google/android/gms/internal/ads/sx;

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/sx;->a()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qr;->a()Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qr;->b()I

    move-result v5

    .line 27
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    const-string/jumbo v1, "Remote Exception to get reward item."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axg;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axg;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axg;->c:Lcom/google/android/gms/internal/ads/ta;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axg;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axg;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ta;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axg;->a:Lcom/google/android/gms/internal/ads/sx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sx;->a(Z)V

    .line 11
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axg;->a:Lcom/google/android/gms/internal/ads/sx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sx;->a(Z)V

    .line 13
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method
