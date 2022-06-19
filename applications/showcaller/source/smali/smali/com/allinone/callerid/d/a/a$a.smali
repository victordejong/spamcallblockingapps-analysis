.class Lcom/allinone/callerid/d/a/a$a;
.super Ljava/lang/Object;
.source "ContactsCallScreenAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

.field final synthetic e:I

.field final synthetic f:Lcom/allinone/callerid/d/a/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/a/a;Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/a/a$a;->f:Lcom/allinone/callerid/d/a/a;

    iput-object p2, p0, Lcom/allinone/callerid/d/a/a$a;->d:Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    iput p3, p0, Lcom/allinone/callerid/d/a/a$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/d/a/a$a;->d:Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    iget-boolean v1, v0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isselect:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isselect:Z

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/d/a/a$a;->f:Lcom/allinone/callerid/d/a/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/a/a;->a(Lcom/allinone/callerid/d/a/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/d/a/a$a;->d:Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isChecked:name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/d/a/a$a;->d:Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callscreen"

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/d/a/a$a;->f:Lcom/allinone/callerid/d/a/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/a/a;->a(Lcom/allinone/callerid/d/a/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/d/a/a$a;->d:Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/d/a/a$a;->d:Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isselect:Z

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/d/a/a$a;->f:Lcom/allinone/callerid/d/a/a;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/d/a/a$a;->f:Lcom/allinone/callerid/d/a/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/a/a;->b(Lcom/allinone/callerid/d/a/a;)Lcom/allinone/callerid/d/a/a$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/d/a/a$a;->f:Lcom/allinone/callerid/d/a/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/a/a;->b(Lcom/allinone/callerid/d/a/a;)Lcom/allinone/callerid/d/a/a$b;

    move-result-object v0

    iget v1, p0, Lcom/allinone/callerid/d/a/a$a;->e:I

    iget-object v2, p0, Lcom/allinone/callerid/d/a/a$a;->f:Lcom/allinone/callerid/d/a/a;

    invoke-static {v2}, Lcom/allinone/callerid/d/a/a;->a(Lcom/allinone/callerid/d/a/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/allinone/callerid/d/a/a$b;->a(Landroid/view/View;ILjava/util/List;)V

    :cond_2
    return-void
.end method
