.class Landroidx/work/impl/a/b/e$a;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/a/b/e;


# direct methods
.method constructor <init>(Landroidx/work/impl/a/b/e;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Landroidx/work/impl/a/b/e$a;->a:Landroidx/work/impl/a/b/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 174
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 178
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/a/b/e;->d:Ljava/lang/String;

    const-string/jumbo v2, "Network broadcast received"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 183
    iget-object v0, p0, Landroidx/work/impl/a/b/e$a;->a:Landroidx/work/impl/a/b/e;

    iget-object v1, p0, Landroidx/work/impl/a/b/e$a;->a:Landroidx/work/impl/a/b/e;

    invoke-virtual {v1}, Landroidx/work/impl/a/b/e;->b()Landroidx/work/impl/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/impl/a/b/e;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
