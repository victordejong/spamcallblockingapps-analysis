.class Lcom/callerid/block/fragment/b$f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/b$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/fragment/b$f;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/b$f;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/b$f$a;->b:Lcom/callerid/block/fragment/b$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/fragment/b$f$a;->b:Lcom/callerid/block/fragment/b$f;

    iget-object v0, v0, Lcom/callerid/block/fragment/b$f;->b:Lcom/callerid/block/fragment/b;

    invoke-static {v0}, Lcom/callerid/block/fragment/b;->L1(Lcom/callerid/block/fragment/b;)V

    return-void
.end method
