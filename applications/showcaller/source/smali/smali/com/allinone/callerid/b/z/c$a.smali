.class Lcom/allinone/callerid/b/z/c$a;
.super Ljava/lang/Object;
.source "ContactRecordAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/z/c;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/bean/recorder/RecordCall;

.field final synthetic e:Lcom/allinone/callerid/b/z/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/c;Lcom/allinone/callerid/bean/recorder/RecordCall;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/c$a;->e:Lcom/allinone/callerid/b/z/c;

    iput-object p2, p0, Lcom/allinone/callerid/b/z/c$a;->d:Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/allinone/callerid/b/z/c$a;->e:Lcom/allinone/callerid/b/z/c;

    invoke-static {v0}, Lcom/allinone/callerid/b/z/c;->D(Lcom/allinone/callerid/b/z/c;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/z/c$a;->d:Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recordnumber"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/b/z/c$a;->d:Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recordname"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/b/z/c$a;->e:Lcom/allinone/callerid/b/z/c;

    invoke-static {v0}, Lcom/allinone/callerid/b/z/c;->D(Lcom/allinone/callerid/b/z/c;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/b/z/c$a;->e:Lcom/allinone/callerid/b/z/c;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/c;->E(Lcom/allinone/callerid/b/z/c;)Landroid/app/Activity;

    move-result-object p1

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
