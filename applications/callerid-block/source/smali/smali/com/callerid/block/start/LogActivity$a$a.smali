.class Lcom/callerid/block/start/LogActivity$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/LogActivity$a;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/LogActivity$a;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/LogActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/LogActivity$a$a;->b:Lcom/callerid/block/start/LogActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/start/LogActivity$a$a;->b:Lcom/callerid/block/start/LogActivity$a;

    iget-object v0, v0, Lcom/callerid/block/start/LogActivity$a;->b:Lcom/callerid/block/start/LogActivity;

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->N(Lcom/callerid/block/start/LogActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method
