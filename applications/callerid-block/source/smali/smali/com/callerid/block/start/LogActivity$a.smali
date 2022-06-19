.class Lcom/callerid/block/start/LogActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/LogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/LogActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/LogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/LogActivity$a;->b:Lcom/callerid/block/start/LogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/start/LogActivity$a;->b:Lcom/callerid/block/start/LogActivity;

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->N(Lcom/callerid/block/start/LogActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/start/LogActivity$a$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/LogActivity$a$a;-><init>(Lcom/callerid/block/start/LogActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
