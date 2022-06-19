.class Lcom/callerid/block/fragment/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/a;->j2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/fragment/a;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/a$b;->b:Lcom/callerid/block/fragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/fragment/a$b;->b:Lcom/callerid/block/fragment/a;

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->V1(Lcom/callerid/block/fragment/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/a$b;->b:Lcom/callerid/block/fragment/a;

    invoke-static {v1}, Lcom/callerid/block/fragment/a;->U1(Lcom/callerid/block/fragment/a;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
