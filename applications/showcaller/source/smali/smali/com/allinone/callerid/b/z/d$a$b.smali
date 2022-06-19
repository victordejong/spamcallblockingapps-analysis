.class Lcom/allinone/callerid/b/z/d$a$b;
.super Ljava/lang/Object;
.source "CustomAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/z/d$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/b/z/d$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/d$a$b;->d:Lcom/allinone/callerid/b/z/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/b/z/d$a$b;->d:Lcom/allinone/callerid/b/z/d$a;

    iget-object v0, p2, Lcom/allinone/callerid/b/z/d$a;->f:Lcom/allinone/callerid/b/z/d;

    iget-object v0, v0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    iget-object p2, p2, Lcom/allinone/callerid/b/z/d$a;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-static {}, Lcom/allinone/callerid/f/k/a;->c()Lcom/allinone/callerid/f/k/a;

    move-result-object p2

    iget-object v0, p0, Lcom/allinone/callerid/b/z/d$a$b;->d:Lcom/allinone/callerid/b/z/d$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/z/d$a;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/allinone/callerid/f/k/a;->b(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/allinone/callerid/b/z/d$a$b;->d:Lcom/allinone/callerid/b/z/d$a;

    iget-object p2, p2, Lcom/allinone/callerid/b/z/d$a;->f:Lcom/allinone/callerid/b/z/d;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 4
    iget-object p2, p0, Lcom/allinone/callerid/b/z/d$a$b;->d:Lcom/allinone/callerid/b/z/d$a;

    iget-object p2, p2, Lcom/allinone/callerid/b/z/d$a;->f:Lcom/allinone/callerid/b/z/d;

    invoke-static {p2}, Lcom/allinone/callerid/b/z/d;->F(Lcom/allinone/callerid/b/z/d;)Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lcom/allinone/callerid/b/z/d$a$b;->d:Lcom/allinone/callerid/b/z/d$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/z/d$a;->f:Lcom/allinone/callerid/b/z/d;

    invoke-static {v0}, Lcom/allinone/callerid/b/z/d;->F(Lcom/allinone/callerid/b/z/d;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f10012d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 5
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
