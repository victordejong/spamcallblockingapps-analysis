.class Lcom/callerid/block/mvc/controller/SuggestNameActivity$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/SuggestNameActivity$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/mvc/controller/SuggestNameActivity$d;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/SuggestNameActivity$d;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity$d$a;->b:Lcom/callerid/block/mvc/controller/SuggestNameActivity$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity$d$a;->b:Lcom/callerid/block/mvc/controller/SuggestNameActivity$d;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/SuggestNameActivity$d;->d:Lcom/callerid/block/mvc/controller/SuggestNameActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->h0(Landroid/content/Context;)V

    return-void
.end method
