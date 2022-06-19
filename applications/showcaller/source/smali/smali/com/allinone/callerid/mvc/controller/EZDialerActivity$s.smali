.class Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;
.super Landroid/widget/Filter;
.source "EZDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/EZDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "s"
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Lcom/allinone/callerid/mvc/controller/EZDialerActivity$i;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->X(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->X(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->k0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->k0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->k0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->k0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/t9/d;->d(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->y0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;I)I

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->X(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->L0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->L0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->L0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->L0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/t9/d;->d(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->X(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    :cond_3
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->X(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->X(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->X(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 14
    iput v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_2
    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 1
    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->N0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->N0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->N0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->O0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/b/l;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->N0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->w0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/allinone/callerid/b/l;->b(Ljava/util/List;I)V

    :cond_1
    return-void
.end method
