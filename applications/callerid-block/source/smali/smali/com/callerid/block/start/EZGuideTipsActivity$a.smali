.class Lcom/callerid/block/start/EZGuideTipsActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/EZGuideTipsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/EZGuideTipsActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/EZGuideTipsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/EZGuideTipsActivity$a;->b:Lcom/callerid/block/start/EZGuideTipsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/callerid/block/start/EZGuideTipsActivity$a;->b:Lcom/callerid/block/start/EZGuideTipsActivity;

    invoke-static {p1}, Lcom/callerid/block/start/EZGuideTipsActivity;->Q(Lcom/callerid/block/start/EZGuideTipsActivity;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "first_enter_click_skip"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    return-void
.end method
