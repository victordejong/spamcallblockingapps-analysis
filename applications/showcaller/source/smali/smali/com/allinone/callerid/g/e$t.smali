.class Lcom/allinone/callerid/g/e$t;
.super Landroid/os/Handler;
.source "EZSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "t"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/allinone/callerid/g/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/g/e;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/allinone/callerid/g/e$t;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/g/e;Lcom/allinone/callerid/g/e$k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/g/e$t;-><init>(Lcom/allinone/callerid/g/e;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/e$t;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/g/e;

    if-eqz v0, :cond_8

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->z2(Lcom/allinone/callerid/g/e;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3a98

    if-ne v1, v3, :cond_1

    .line 3
    invoke-static {v0, v2}, Lcom/allinone/callerid/g/e;->A2(Lcom/allinone/callerid/g/e;Z)Z

    .line 4
    iget-object v0, v0, Lcom/allinone/callerid/g/e;->t0:Lcom/allinone/callerid/g/e$s;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/allinone/callerid/g/e$s;->t()V

    .line 6
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/g/e$t$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/e$t$a;-><init>(Lcom/allinone/callerid/g/e$t;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/r/a;->l(Landroid/content/Context;Lcom/allinone/callerid/i/a/r/g;)V

    goto/16 :goto_0

    .line 7
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3a99

    const/16 v4, 0x8

    if-ne v1, v3, :cond_3

    .line 8
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->x2(Lcom/allinone/callerid/g/e;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 9
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->B2(Lcom/allinone/callerid/g/e;)Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object v1

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->i2(Lcom/allinone/callerid/g/e;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/allinone/callerid/b/t;->M(Ljava/util/List;Ljava/util/HashMap;)V

    .line 12
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 13
    :cond_2
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->D2(Lcom/allinone/callerid/g/e;)Landroid/view/ViewStub;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 14
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->F2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x3a9a

    if-ne v1, v3, :cond_4

    .line 15
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->x2(Lcom/allinone/callerid/g/e;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 16
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->y2(Lcom/allinone/callerid/g/e;)V

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x3a9b

    if-ne v1, v3, :cond_6

    .line 17
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 18
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 19
    :cond_5
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->x2(Lcom/allinone/callerid/g/e;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_6
    const/16 v3, 0x3a9c

    if-ne v1, v3, :cond_8

    .line 20
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 21
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->G2(Lcom/allinone/callerid/g/e;)V

    .line 22
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 23
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 24
    :cond_7
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->H2(Lcom/allinone/callerid/g/e;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->J2(Lcom/allinone/callerid/g/e;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->J2(Lcom/allinone/callerid/g/e;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 25
    invoke-static {v0, v2}, Lcom/allinone/callerid/g/e;->I2(Lcom/allinone/callerid/g/e;Z)Z

    .line 26
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 27
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/b/t;->P(Z)V

    .line 28
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object v1

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->J2(Lcom/allinone/callerid/g/e;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/allinone/callerid/b/t;->K(Ljava/util/List;Z)V

    .line 29
    invoke-static {v0}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
