.class Lcom/callerid/block/start/StartActivityTest$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/StartActivityTest$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/StartActivityTest$a;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/StartActivityTest$a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/StartActivityTest$a$a;->b:Lcom/callerid/block/start/StartActivityTest$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest$a$a;->b:Lcom/callerid/block/start/StartActivityTest$a;

    iget-object v0, v0, Lcom/callerid/block/start/StartActivityTest$a;->b:Lcom/callerid/block/start/StartActivityTest;

    invoke-static {v0}, Lcom/callerid/block/start/StartActivityTest;->O(Lcom/callerid/block/start/StartActivityTest;)V

    return-void
.end method
