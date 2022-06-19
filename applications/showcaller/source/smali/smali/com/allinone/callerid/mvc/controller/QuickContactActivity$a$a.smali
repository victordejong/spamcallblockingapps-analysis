.class Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a$a;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;

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

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->n0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Lcom/allinone/callerid/b/s;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/allinone/callerid/b/s;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/bean/QuickContactBean;

    .line 2
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bean:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/QuickContactBean;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "quick"

    invoke-static {p3, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/QuickContactBean;->getIsquick()Ljava/lang/Boolean;

    move-result-object p2

    const/4 p3, 0x0

    const p4, 0x7f100222

    const/4 p5, 0x4

    if-nez p2, :cond_2

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;

    iget-object p2, p2, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    iget-object p2, p2, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->D:Ljava/util/List;

    if-eqz p2, :cond_5

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p2, p5, :cond_1

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 8
    :cond_1
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/bean/QuickContactBean;->setIsquick(Ljava/lang/Boolean;)V

    .line 9
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;

    iget-object p2, p2, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->n0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Lcom/allinone/callerid/b/s;

    move-result-object p2

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;

    iget-object p3, p3, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {p3}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/allinone/callerid/b/s;->b(Ljava/util/List;)V

    .line 10
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;

    iget-object p2, p2, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/QuickContactBean;->getBean()Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/QuickContactBean;->getBean()Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->a0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/QuickContactBean;->getIsquick()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    .line 12
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;

    iget-object p2, p2, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    iget-object p2, p2, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->D:Ljava/util/List;

    if-eqz p2, :cond_5

    .line 13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p2, p5, :cond_3

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/QuickContactBean;->getIsquick()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/bean/QuickContactBean;->setIsquick(Ljava/lang/Boolean;)V

    .line 16
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;

    iget-object p2, p2, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->n0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Lcom/allinone/callerid/b/s;

    move-result-object p2

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;

    iget-object p3, p3, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {p3}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/allinone/callerid/b/s;->b(Ljava/util/List;)V

    .line 17
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;

    iget-object p2, p2, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/QuickContactBean;->getBean()Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/QuickContactBean;->getBean()Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->a0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/QuickContactBean;->getIsquick()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/bean/QuickContactBean;->setIsquick(Ljava/lang/Boolean;)V

    .line 19
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;

    iget-object p2, p2, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->n0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Lcom/allinone/callerid/b/s;

    move-result-object p2

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;

    iget-object p3, p3, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {p3}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/allinone/callerid/b/s;->b(Ljava/util/List;)V

    .line 20
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;

    iget-object p2, p2, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$a;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/QuickContactBean;->getBean()Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->b0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
