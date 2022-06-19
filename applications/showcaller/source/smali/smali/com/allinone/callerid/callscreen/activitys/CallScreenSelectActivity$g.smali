.class Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$g;
.super Ljava/lang/Object;
.source "CallScreenSelectActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->t0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$g;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$g;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->d0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Lcom/allinone/callerid/customview/BaseEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$g;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->e0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$g;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->e0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$g;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {v0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->h0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->g0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$g;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->Z(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Lcom/allinone/callerid/d/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$g;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->f0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/d/a/a;->d(Ljava/util/List;)V

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "contact_search"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$g;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->f0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$g;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->Z(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Lcom/allinone/callerid/d/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$g;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->r0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/d/a/a;->d(Ljava/util/List;)V

    .line 11
    :goto_1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$g;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->i0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
