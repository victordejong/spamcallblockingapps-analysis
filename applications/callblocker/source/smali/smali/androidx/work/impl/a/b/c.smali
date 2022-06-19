.class public abstract Landroidx/work/impl/a/b/c;
.super Landroidx/work/impl/a/b/d;
.source "BroadcastReceiverConstraintTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/work/impl/a/b/d",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "BrdcstRcvrCnstrntTrckr"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/a/b/c;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/work/impl/a/b/d;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V

    .line 39
    new-instance v0, Landroidx/work/impl/a/b/c$1;

    invoke-direct {v0, p0}, Landroidx/work/impl/a/b/c$1;-><init>(Landroidx/work/impl/a/b/c;)V

    iput-object v0, p0, Landroidx/work/impl/a/b/c;->e:Landroid/content/BroadcastReceiver;

    .line 52
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract b()Landroid/content/IntentFilter;
.end method

.method public d()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 70
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/a/b/c;->d:Ljava/lang/String;

    const-string/jumbo v2, "%s: registering receiver"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 70
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 73
    iget-object v0, p0, Landroidx/work/impl/a/b/c;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/a/b/c;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroidx/work/impl/a/b/c;->b()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void
.end method

.method public e()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 78
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/a/b/c;->d:Ljava/lang/String;

    const-string/jumbo v2, "%s: unregistering receiver"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 78
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 81
    iget-object v0, p0, Landroidx/work/impl/a/b/c;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/a/b/c;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    return-void
.end method
