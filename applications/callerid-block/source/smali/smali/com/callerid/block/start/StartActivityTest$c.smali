.class Lcom/callerid/block/start/StartActivityTest$c;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/StartActivityTest;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/StartActivityTest;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/StartActivityTest;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/StartActivityTest$c;->b:Lcom/callerid/block/start/StartActivityTest;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/start/StartActivityTest$c;->b:Lcom/callerid/block/start/StartActivityTest;

    invoke-static {v0}, Lcom/callerid/block/start/StartActivityTest;->Q(Lcom/callerid/block/start/StartActivityTest;)V

    return-void
.end method
