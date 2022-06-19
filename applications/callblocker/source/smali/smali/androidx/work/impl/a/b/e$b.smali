.class Landroidx/work/impl/a/b/e$b;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/a/b/e;


# direct methods
.method constructor <init>(Landroidx/work/impl/a/b/e;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Landroidx/work/impl/a/b/e$b;->a:Landroidx/work/impl/a/b/e;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 153
    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 159
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/a/b/e;->d:Ljava/lang/String;

    const-string/jumbo v2, "Network capabilities changed: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    .line 161
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 159
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 162
    iget-object v0, p0, Landroidx/work/impl/a/b/e$b;->a:Landroidx/work/impl/a/b/e;

    iget-object v1, p0, Landroidx/work/impl/a/b/e$b;->a:Landroidx/work/impl/a/b/e;

    invoke-virtual {v1}, Landroidx/work/impl/a/b/e;->b()Landroidx/work/impl/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/impl/a/b/e;->a(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4

    .prologue
    .line 167
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/a/b/e;->d:Ljava/lang/String;

    const-string/jumbo v2, "Network connection lost"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 168
    iget-object v0, p0, Landroidx/work/impl/a/b/e$b;->a:Landroidx/work/impl/a/b/e;

    iget-object v1, p0, Landroidx/work/impl/a/b/e$b;->a:Landroidx/work/impl/a/b/e;

    invoke-virtual {v1}, Landroidx/work/impl/a/b/e;->b()Landroidx/work/impl/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/impl/a/b/e;->a(Ljava/lang/Object;)V

    .line 169
    return-void
.end method
