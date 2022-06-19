.class Lcom/callerid/block/main/MainActivity$p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/main/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$p;->b:Lcom/callerid/block/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$p;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/main/EZCallApplication;->e()V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$p;->b:Lcom/callerid/block/main/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/callerid/block/main/MainActivity$p;->b:Lcom/callerid/block/main/MainActivity;

    const-class v3, Lcom/callerid/block/start/StartActivityTest;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
