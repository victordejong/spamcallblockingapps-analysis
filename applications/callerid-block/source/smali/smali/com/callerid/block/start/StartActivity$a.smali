.class Lcom/callerid/block/start/StartActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/StartActivity;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/StartActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/StartActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/StartActivity$a;->b:Lcom/callerid/block/start/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/callerid/block/start/StartActivity$a;->b:Lcom/callerid/block/start/StartActivity;

    invoke-static {p1}, Lcom/callerid/block/start/StartActivity;->Q(Lcom/callerid/block/start/StartActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "first_enter"

    const-string v0, "\u9996\u6b21\u70b9\u51fbgetstart"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "first_enter_click_continue"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/start/StartActivity$a;->b:Lcom/callerid/block/start/StartActivity;

    invoke-static {p1}, Lcom/callerid/block/start/StartActivity;->R(Lcom/callerid/block/start/StartActivity;)V

    return-void
.end method
