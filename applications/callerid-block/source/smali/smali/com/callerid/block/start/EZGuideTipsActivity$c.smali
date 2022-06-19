.class Lcom/callerid/block/start/EZGuideTipsActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/EZGuideTipsActivity;->g0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/EZGuideTipsActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/EZGuideTipsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/EZGuideTipsActivity$c;->b:Lcom/callerid/block/start/EZGuideTipsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/start/EZGuideTipsActivity$c;->b:Lcom/callerid/block/start/EZGuideTipsActivity;

    const-class v2, Lcom/callerid/block/mvc/controller/OverlayGuideActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/start/EZGuideTipsActivity$c;->b:Lcom/callerid/block/start/EZGuideTipsActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
