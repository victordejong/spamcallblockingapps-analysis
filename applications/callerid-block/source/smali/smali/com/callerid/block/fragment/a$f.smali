.class Lcom/callerid/block/fragment/a$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/a;->m2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/fragment/a;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/a$f;->b:Lcom/callerid/block/fragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const-string p1, ""

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/a$f;->b:Lcom/callerid/block/fragment/a;

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->X1(Lcom/callerid/block/fragment/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callerid/block/fragment/a$f;->b:Lcom/callerid/block/fragment/a;

    invoke-static {v1}, Lcom/callerid/block/fragment/a;->Y1(Lcom/callerid/block/fragment/a;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/callerid/block/fragment/a$f;->b:Lcom/callerid/block/fragment/a;

    invoke-static {v1}, Lcom/callerid/block/fragment/a;->Y1(Lcom/callerid/block/fragment/a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/fragment/a$f;->b:Lcom/callerid/block/fragment/a;

    invoke-static {p1, v0}, Lcom/callerid/block/fragment/a;->Z1(Lcom/callerid/block/fragment/a;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/callerid/block/fragment/a;->N1(Lcom/callerid/block/fragment/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/callerid/block/fragment/a$f;->b:Lcom/callerid/block/fragment/a;

    invoke-static {p1}, Lcom/callerid/block/fragment/a;->R1(Lcom/callerid/block/fragment/a;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/fragment/a$f;->b:Lcom/callerid/block/fragment/a;

    invoke-static {p1}, Lcom/callerid/block/fragment/a;->e2(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/b/f;

    move-result-object p1

    iget-object v1, p0, Lcom/callerid/block/fragment/a$f;->b:Lcom/callerid/block/fragment/a;

    invoke-static {v1}, Lcom/callerid/block/fragment/a;->M1(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/callerid/block/b/f;->c(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "contact_search"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/fragment/a$f;->b:Lcom/callerid/block/fragment/a;

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->M1(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/callerid/block/fragment/a$f;->b:Lcom/callerid/block/fragment/a;

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->R1(Lcom/callerid/block/fragment/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/fragment/a$f;->b:Lcom/callerid/block/fragment/a;

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->e2(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/a$f;->b:Lcom/callerid/block/fragment/a;

    invoke-static {v1}, Lcom/callerid/block/fragment/a;->d2(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/callerid/block/b/f;->c(Ljava/util/List;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/callerid/block/fragment/a$f;->b:Lcom/callerid/block/fragment/a;

    invoke-static {p1}, Lcom/callerid/block/fragment/a;->f2(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/customview/NestedScrollingListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

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
