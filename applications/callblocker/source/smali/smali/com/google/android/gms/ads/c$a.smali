.class public Lcom/google/android/gms/ads/c$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/dzg;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dzg;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/ads/c$a;->a:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/ads/c$a;->b:Lcom/google/android/gms/internal/ads/dzg;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1
    const-string/jumbo v0, "context cannot be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->b()Lcom/google/android/gms/internal/ads/dyl;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/kl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/kl;-><init>()V

    .line 4
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/dyl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko;)Lcom/google/android/gms/internal/ads/dzg;

    move-result-object v1

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/c$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dzg;)V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/b/d;)Lcom/google/android/gms/ads/c$a;
    .locals 2

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->b:Lcom/google/android/gms/internal/ads/dzg;

    new-instance v1, Lcom/google/android/gms/internal/ads/bl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/bl;-><init>(Lcom/google/android/gms/ads/b/d;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dzg;->a(Lcom/google/android/gms/internal/ads/bl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-object p0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string/jumbo v1, "Failed to specify native ad options"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/b/g$a;)Lcom/google/android/gms/ads/c$a;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->b:Lcom/google/android/gms/internal/ads/dzg;

    new-instance v1, Lcom/google/android/gms/internal/ads/ea;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/ea;-><init>(Lcom/google/android/gms/ads/b/g$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dzg;->a(Lcom/google/android/gms/internal/ads/cv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    return-object p0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const-string/jumbo v1, "Failed to add app install ad listener"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/b/h$a;)Lcom/google/android/gms/ads/c$a;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->b:Lcom/google/android/gms/internal/ads/dzg;

    new-instance v1, Lcom/google/android/gms/internal/ads/ed;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/ed;-><init>(Lcom/google/android/gms/ads/b/h$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dzg;->a(Lcom/google/android/gms/internal/ads/da;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :goto_0
    return-object p0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    const-string/jumbo v1, "Failed to add content ad listener"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/b/k$a;)Lcom/google/android/gms/ads/c$a;
    .locals 2

    .prologue
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->b:Lcom/google/android/gms/internal/ads/dzg;

    new-instance v1, Lcom/google/android/gms/internal/ads/ef;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/ef;-><init>(Lcom/google/android/gms/ads/b/k$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dzg;->a(Lcom/google/android/gms/internal/ads/do;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-object p0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string/jumbo v1, "Failed to add google native ad listener"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/b;)Lcom/google/android/gms/ads/c$a;
    .locals 2

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->b:Lcom/google/android/gms/internal/ads/dzg;

    new-instance v1, Lcom/google/android/gms/internal/ads/dxw;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/dxw;-><init>(Lcom/google/android/gms/ads/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dzg;->a(Lcom/google/android/gms/internal/ads/dza;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-object p0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string/jumbo v1, "Failed to set AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/ads/b/i$b;Lcom/google/android/gms/ads/b/i$a;)Lcom/google/android/gms/ads/c$a;
    .locals 3

    .prologue
    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/c$a;->b:Lcom/google/android/gms/internal/ads/dzg;

    new-instance v2, Lcom/google/android/gms/internal/ads/ee;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/ee;-><init>(Lcom/google/android/gms/ads/b/i$b;)V

    .line 27
    if-nez p3, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-interface {v1, p1, v2, v0}, Lcom/google/android/gms/internal/ads/dzg;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dg;Lcom/google/android/gms/internal/ads/db;)V

    .line 34
    :goto_1
    return-object p0

    .line 29
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ec;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/ec;-><init>(Lcom/google/android/gms/ads/b/i$a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string/jumbo v1, "Failed to add custom template ad listener"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a()Lcom/google/android/gms/ads/c;
    .locals 3

    .prologue
    .line 59
    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/c;

    iget-object v1, p0, Lcom/google/android/gms/ads/c$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/c$a;->b:Lcom/google/android/gms/internal/ads/dzg;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dzg;->a()Lcom/google/android/gms/internal/ads/dzf;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dzf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string/jumbo v1, "Failed to build AdLoader."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    const/4 v0, 0x0

    goto :goto_0
.end method
