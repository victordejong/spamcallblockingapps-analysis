.class public abstract Landroidx/work/impl/a/b/c;
.super Landroidx/work/impl/a/b/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/work/impl/a/b/d<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BrdcstRcvrCnstrntTrckr"

    .line 37
    invoke-static {v0}, Landroidx/work/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/a/b/c;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/work/impl/a/b/d;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/b/a;)V

    .line 39
    new-instance p1, Landroidx/work/impl/a/b/c$1;

    invoke-direct {p1, p0}, Landroidx/work/impl/a/b/c$1;-><init>(Landroidx/work/impl/a/b/c;)V

    iput-object p1, p0, Landroidx/work/impl/a/b/c;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/content/IntentFilter;
.end method

.method public abstract a(Landroid/content/Intent;)V
.end method

.method public final c()V
    .locals 3

    .line 70
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s: registering receiver"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    iget-object v0, p0, Landroidx/work/impl/a/b/c;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/a/b/c;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroidx/work/impl/a/b/c;->a()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final d()V
    .locals 3

    .line 78
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s: unregistering receiver"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    iget-object v0, p0, Landroidx/work/impl/a/b/c;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/a/b/c;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
