.class Landroidx/h/a/a$1;
.super Landroid/os/Handler;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/h/a/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/h/a/a;


# direct methods
.method constructor <init>(Landroidx/h/a/a;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Landroidx/h/a/a$1;->a:Landroidx/h/a/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 124
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 126
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p0, Landroidx/h/a/a$1;->a:Landroidx/h/a/a;

    invoke-virtual {v0}, Landroidx/h/a/a;->a()V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
