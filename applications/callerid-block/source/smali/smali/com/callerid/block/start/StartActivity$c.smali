.class Lcom/callerid/block/start/StartActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/StartActivity;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/callerid/block/start/StartActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/StartActivity;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/StartActivity$c;->c:Lcom/callerid/block/start/StartActivity;

    iput-object p2, p0, Lcom/callerid/block/start/StartActivity$c;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/callerid/block/start/StartActivity$c;->c:Lcom/callerid/block/start/StartActivity;

    iget-object p2, p0, Lcom/callerid/block/start/StartActivity$c;->b:[Ljava/lang/String;

    aget-object p2, p2, p3

    invoke-static {p1, p2}, Lcom/callerid/block/start/StartActivity;->T(Lcom/callerid/block/start/StartActivity;Ljava/lang/String;)V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/callerid/block/util/t0;->a:Z

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    iget-object p2, p0, Lcom/callerid/block/start/StartActivity$c;->b:[Ljava/lang/String;

    aget-object p2, p2, p3

    iput-object p2, p1, Lcom/callerid/block/main/EZCallApplication;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/start/StartActivity$c;->c:Lcom/callerid/block/start/StartActivity;

    invoke-static {p1}, Lcom/callerid/block/start/StartActivity;->U(Lcom/callerid/block/start/StartActivity;)Lcom/rey/material/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rey/material/app/Dialog;->dismiss()V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p2, p0, Lcom/callerid/block/start/StartActivity$c;->c:Lcom/callerid/block/start/StartActivity;

    invoke-static {p2}, Lcom/callerid/block/start/StartActivity;->Q(Lcom/callerid/block/start/StartActivity;)Z

    move-result p2

    const-string p3, "is_first"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lcom/callerid/block/start/StartActivity$c;->c:Lcom/callerid/block/start/StartActivity;

    const-class p3, Lcom/callerid/block/start/StartActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/callerid/block/start/StartActivity$c;->c:Lcom/callerid/block/start/StartActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/callerid/block/start/StartActivity$c;->c:Lcom/callerid/block/start/StartActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
