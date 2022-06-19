.class Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$b;
.super Ljava/lang/Object;
.source "CallScreenSelectActivity.java"

# interfaces
.implements Lcom/allinone/callerid/d/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$b;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

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
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$b;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->k0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$b;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->k0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$b;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->l0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method
