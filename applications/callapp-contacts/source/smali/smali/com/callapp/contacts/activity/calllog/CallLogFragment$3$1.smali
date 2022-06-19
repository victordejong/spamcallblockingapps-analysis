.class Lcom/callapp/contacts/activity/calllog/CallLogFragment$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;Ljava/util/List;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3$1;->b:Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;

    iput-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 368
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3$1;->b:Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->d(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 369
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3$1;->b:Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->d(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 370
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3$1;->b:Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3$1;->b:Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;

    iget-object v1, v1, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->d(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->setData(Ljava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3$1;->b:Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->e(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)V

    .line 372
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3$1;->b:Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->f(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/contact/list/ViewPagerManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ViewPagerManager;->a(I)V

    .line 374
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3$1;->b:Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->g(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3$1;->b:Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->getSelectedContacts()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 377
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3$1;->b:Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->h(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;

    move-result-object v0

    const v2, 0x7f120131

    invoke-interface {v0, v1, v2}, Lcom/callapp/contacts/activity/interfaces/MultiSelectChangeListener;->a(II)V

    :cond_1
    const/4 v0, 0x1

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3$1;->b:Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;

    iget-object v1, v1, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->i(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    .line 2700
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2705
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView$h;)V

    goto :goto_1

    .line 2702
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1 is an invalid index for size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :catch_0
    :goto_1
    new-instance v1, La/a/a/a/a/c;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3$1;->b:Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;

    iget-object v2, v2, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v2}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->j(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    move-result-object v2

    invoke-direct {v1, v2}, La/a/a/a/a/c;-><init>(La/a/a/a/a/b;)V

    .line 385
    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3$1;->b:Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;

    iget-object v2, v2, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v2}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->k(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;I)V

    return-void
.end method
