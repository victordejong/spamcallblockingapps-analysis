.class Lcom/callerid/block/fragment/a$j;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/fragment/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callerid/block/fragment/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/callerid/block/fragment/a;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callerid/block/fragment/a$j;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/callerid/block/fragment/a;Lcom/callerid/block/fragment/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/fragment/a$j;-><init>(Lcom/callerid/block/fragment/a;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/a$j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/fragment/a;

    if-eqz v0, :cond_5

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x29a

    const/16 v2, 0x8

    if-eq p1, v1, :cond_4

    const/16 v1, 0x309

    if-eq p1, v1, :cond_2

    const/16 v1, 0x3e7

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/callerid/block/fragment/a;->h2(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->h2(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->F1(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->F1(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->h2(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->G1(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/b/h;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->G1(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/b/h;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->F1(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callerid/block/b/h;->b(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_1
    new-instance p1, Lcom/callerid/block/b/h;

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->I1(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/main/MainActivity;

    move-result-object v1

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->F1(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/callerid/block/b/h;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-static {v0, p1}, Lcom/callerid/block/fragment/a;->H1(Lcom/callerid/block/fragment/a;Lcom/callerid/block/b/h;)Lcom/callerid/block/b/h;

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->J1(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/customview/MyListView;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->G1(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/b/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/callerid/block/fragment/a;->a2(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->a2(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->c2(Lcom/callerid/block/fragment/a;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->R1(Lcom/callerid/block/fragment/a;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->d2(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->d2(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->a2(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-static {v0}, Lcom/callerid/block/fragment/a;->e2(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/b/f;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->d2(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/callerid/block/b/f;->b(Ljava/util/List;)V

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->f2(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/customview/NestedScrollingListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_5

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->g2(Lcom/callerid/block/fragment/a;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->f2(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/customview/NestedScrollingListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/callerid/block/fragment/a;->E1(Lcom/callerid/block/fragment/a;)V

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->R1(Lcom/callerid/block/fragment/a;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method
