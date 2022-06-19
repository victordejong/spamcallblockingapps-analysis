.class Lcom/callerid/block/fragment/b$j$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/b$j;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/fragment/b$j;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/b$j;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/b$j$b;->b:Lcom/callerid/block/fragment/b$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/fragment/b$j$b;->b:Lcom/callerid/block/fragment/b$j;

    iget-object v0, v0, Lcom/callerid/block/fragment/b$j;->a:Lcom/callerid/block/fragment/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callerid/block/fragment/b;->N1(Lcom/callerid/block/fragment/b;Z)V

    return-void
.end method
