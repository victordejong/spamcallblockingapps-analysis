.class Landroidx/work/impl/a/b/c$1;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastReceiverConstraintTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/a/b/c;


# direct methods
.method constructor <init>(Landroidx/work/impl/a/b/c;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Landroidx/work/impl/a/b/c$1;->a:Landroidx/work/impl/a/b/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 42
    if-eqz p2, :cond_0

    .line 43
    iget-object v0, p0, Landroidx/work/impl/a/b/c$1;->a:Landroidx/work/impl/a/b/c;

    invoke-virtual {v0, p1, p2}, Landroidx/work/impl/a/b/c;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 45
    :cond_0
    return-void
.end method
