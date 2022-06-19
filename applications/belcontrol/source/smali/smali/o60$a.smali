.class public Lo60$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo60;


# direct methods
.method public constructor <init>(Lo60;)V
    .locals 0

    iput-object p1, p0, Lo60$a;->a:Lo60;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lo60$a;->a:Lo60;

    invoke-virtual {v0, p1, p2}, Lo60;->h(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
