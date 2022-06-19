.class public final Lp4/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lp4/c;


# direct methods
.method public synthetic constructor <init>(Lp4/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp4/b;->a:Lp4/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/b;->a:Lp4/c;

    invoke-virtual {v0, p1, p2}, Lp4/c;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
