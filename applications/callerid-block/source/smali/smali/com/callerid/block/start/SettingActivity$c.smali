.class Lcom/callerid/block/start/SettingActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/rey/material/widget/Switch$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/SettingActivity;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/start/SettingActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/SettingActivity$c;->a:Lcom/callerid/block/start/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/rey/material/widget/Switch;Z)V
    .locals 2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/callerid/block/util/n0;->u1(Z)V

    iget-object p2, p0, Lcom/callerid/block/start/SettingActivity$c;->a:Lcom/callerid/block/start/SettingActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/callerid/block/util/t0;->Q(Landroid/content/Context;)Z

    move-result p2

    const-wide/16 v0, 0x15e

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/callerid/block/util/n0;->B1()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/start/SettingActivity$c;->a:Lcom/callerid/block/start/SettingActivity;

    invoke-static {p1}, Lcom/callerid/block/start/SettingActivity;->X(Lcom/callerid/block/start/SettingActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance p2, Lcom/callerid/block/start/SettingActivity$c$a;

    invoke-direct {p2, p0}, Lcom/callerid/block/start/SettingActivity$c$a;-><init>(Lcom/callerid/block/start/SettingActivity$c;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/n0;->B1()I

    move-result p2

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/start/SettingActivity$c;->a:Lcom/callerid/block/start/SettingActivity;

    invoke-static {p1}, Lcom/callerid/block/start/SettingActivity;->X(Lcom/callerid/block/start/SettingActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance p2, Lcom/callerid/block/start/SettingActivity$c$b;

    invoke-direct {p2, p0}, Lcom/callerid/block/start/SettingActivity$c$b;-><init>(Lcom/callerid/block/start/SettingActivity$c;)V

    :goto_0
    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/callerid/block/util/n0;->u1(Z)V

    :cond_2
    :goto_1
    return-void
.end method
