.class Lcom/callerid/block/b/l$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/b/l;->m(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callerid/block/b/l;


# direct methods
.method constructor <init>(Lcom/callerid/block/b/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/b/l$b;->c:Lcom/callerid/block/b/l;

    iput-object p2, p0, Lcom/callerid/block/b/l$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/b/l$b;->c:Lcom/callerid/block/b/l;

    invoke-static {v0}, Lcom/callerid/block/b/l;->A(Lcom/callerid/block/b/l;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/callerid/block/b/l$b;->b:Ljava/lang/String;

    const-string v1, "SmsNumber"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/b/l$b;->c:Lcom/callerid/block/b/l;

    invoke-static {v0}, Lcom/callerid/block/b/l;->A(Lcom/callerid/block/b/l;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/callerid/block/b/l$b;->c:Lcom/callerid/block/b/l;

    invoke-static {p1}, Lcom/callerid/block/b/l;->B(Lcom/callerid/block/b/l;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
