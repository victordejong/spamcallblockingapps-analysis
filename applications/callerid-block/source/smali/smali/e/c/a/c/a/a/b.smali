.class final Le/c/a/c/a/a/b;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic a:Le/c/a/c/a/a/c;


# direct methods
.method synthetic constructor <init>(Le/c/a/c/a/a/c;)V
    .locals 0

    iput-object p1, p0, Le/c/a/c/a/a/b;->a:Le/c/a/c/a/a/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Le/c/a/c/a/a/b;->a:Le/c/a/c/a/a/c;

    invoke-virtual {v0, p1, p2}, Le/c/a/c/a/a/c;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
