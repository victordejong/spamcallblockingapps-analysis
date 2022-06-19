.class Lcom/callerid/block/start/GgGuideActivity$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/GgGuideActivity$a;->i(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/start/GgGuideActivity$a;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/GgGuideActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/GgGuideActivity$a$a;->a:Lcom/callerid/block/start/GgGuideActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/start/GgGuideActivity$a$a;->a:Lcom/callerid/block/start/GgGuideActivity$a;

    iget-object v0, v0, Lcom/callerid/block/start/GgGuideActivity$a;->b:Lcom/callerid/block/start/GgGuideActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.callerid.block.CLOSE_AD_VEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ld/p/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method
