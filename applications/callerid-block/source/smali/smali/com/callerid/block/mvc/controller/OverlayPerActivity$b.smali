.class Lcom/callerid/block/mvc/controller/OverlayPerActivity$b;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/OverlayPerActivity;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/mvc/controller/OverlayPerActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/OverlayPerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/OverlayPerActivity$b;->b:Lcom/callerid/block/mvc/controller/OverlayPerActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/OverlayPerActivity$b;->b:Lcom/callerid/block/mvc/controller/OverlayPerActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/OverlayPerActivity;->R(Lcom/callerid/block/mvc/controller/OverlayPerActivity;)V

    return-void
.end method
