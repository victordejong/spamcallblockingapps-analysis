.class Lcom/callerid/block/mvc/controller/SelectContactsActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/SelectContactsActivity;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/mvc/controller/SelectContactsActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/SelectContactsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$b;->b:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$b;->b:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/SelectContactsActivity;->T(Lcom/callerid/block/mvc/controller/SelectContactsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$b;->b:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-static {v0, p1}, Lcom/callerid/block/mvc/controller/SelectContactsActivity;->U(Lcom/callerid/block/mvc/controller/SelectContactsActivity;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$b;->b:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/SelectContactsActivity;->Q(Lcom/callerid/block/mvc/controller/SelectContactsActivity;)Lcom/callerid/block/b/l;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/callerid/block/b/c;->x(Ljava/util/ArrayList;Z)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$b;->b:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/SelectContactsActivity;->Q(Lcom/callerid/block/mvc/controller/SelectContactsActivity;)Lcom/callerid/block/b/l;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->k()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$b;->b:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/SelectContactsActivity;->Q(Lcom/callerid/block/mvc/controller/SelectContactsActivity;)Lcom/callerid/block/b/l;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/callerid/block/b/c;->x(Ljava/util/ArrayList;Z)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$b;->b:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/SelectContactsActivity;->Q(Lcom/callerid/block/mvc/controller/SelectContactsActivity;)Lcom/callerid/block/b/l;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$b;->b:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/SelectContactsActivity;->R(Lcom/callerid/block/mvc/controller/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$b;->b:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/SelectContactsActivity;->Q(Lcom/callerid/block/mvc/controller/SelectContactsActivity;)Lcom/callerid/block/b/l;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$b;->b:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/SelectContactsActivity;->R(Lcom/callerid/block/mvc/controller/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/callerid/block/b/c;->x(Ljava/util/ArrayList;Z)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$b;->b:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/SelectContactsActivity;->Q(Lcom/callerid/block/mvc/controller/SelectContactsActivity;)Lcom/callerid/block/b/l;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
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
