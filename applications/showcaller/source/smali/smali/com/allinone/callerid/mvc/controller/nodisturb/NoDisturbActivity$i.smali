.class Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$i;
.super Ljava/lang/Object;
.source "NoDisturbActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/l/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$i;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/WeekInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$i;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {v0, p1}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->i0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/WeekInfo;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/WeekInfo;->getWeekId()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/WeekInfo;->isSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$i;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->j0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$i;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    const v1, 0x7f100001

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$i;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->j0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/WeekInfo;

    .line 8
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/WeekInfo;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/WeekInfo;->getWeekId()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 10
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$i;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->j0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/WeekInfo;->getWeek()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$i;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->j0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
