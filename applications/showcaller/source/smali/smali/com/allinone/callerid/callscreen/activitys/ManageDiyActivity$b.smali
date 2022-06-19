.class Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$b;
.super Ljava/lang/Object;
.source "ManageDiyActivity.java"

# interfaces
.implements Lcom/allinone/callerid/d/a/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$b;->a:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$b;->a:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->g0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$b;->a:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->g0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$b;->a:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->h0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$b;->a:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {p3}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->g0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$b;->a:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {p3}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->X(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$b;->a:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->g0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object p3, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$b;->a:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {p3}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->X(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->i0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;Z)Z

    return-void
.end method
