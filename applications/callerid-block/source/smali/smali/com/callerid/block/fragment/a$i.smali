.class Lcom/callerid/block/fragment/a$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/f/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/a;->i2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/fragment/a;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/a$i;->a:Lcom/callerid/block/fragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/a$i;->a:Lcom/callerid/block/fragment/a;

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->h2(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/callerid/block/fragment/a$i;->a:Lcom/callerid/block/fragment/a;

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->h2(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/callerid/block/fragment/a$i;->a:Lcom/callerid/block/fragment/a;

    invoke-static {p1}, Lcom/callerid/block/fragment/a;->W1(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/fragment/a$j;

    move-result-object p1

    const/16 v0, 0x3e7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
