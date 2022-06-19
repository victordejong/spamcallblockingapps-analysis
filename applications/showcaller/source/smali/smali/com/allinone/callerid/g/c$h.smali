.class Lcom/allinone/callerid/g/c$h;
.super Ljava/lang/Object;
.source "EZCallPhoneFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/c;->R2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/g/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/c$h;->d:Lcom/allinone/callerid/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const-string p1, ""

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/c$h;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->r2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/customview/BaseEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/g/c$h;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v1}, Lcom/allinone/callerid/g/c;->E2(Lcom/allinone/callerid/g/c;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/allinone/callerid/g/c$h;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v1}, Lcom/allinone/callerid/g/c;->E2(Lcom/allinone/callerid/g/c;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/g/c$h;->d:Lcom/allinone/callerid/g/c;

    invoke-static {p1, v0}, Lcom/allinone/callerid/g/c;->F2(Lcom/allinone/callerid/g/c;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/allinone/callerid/g/c;->q2(Lcom/allinone/callerid/g/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/g/c$h;->d:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->m2(Lcom/allinone/callerid/g/c;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/g/c$h;->d:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->J2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/b/i;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/g/c$h;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v1}, Lcom/allinone/callerid/g/c;->p2(Lcom/allinone/callerid/g/c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/allinone/callerid/b/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "contact_search"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/g/c$h;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->p2(Lcom/allinone/callerid/g/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/g/c$h;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->m2(Lcom/allinone/callerid/g/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/g/c$h;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->J2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/b/i;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/g/c$h;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v1}, Lcom/allinone/callerid/g/c;->I2(Lcom/allinone/callerid/g/c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/allinone/callerid/b/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/g/c$h;->d:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->r2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/customview/BaseEditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 14
    :goto_1
    iget-object p1, p0, Lcom/allinone/callerid/g/c$h;->d:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->K2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/customview/NestedScrollingListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
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
