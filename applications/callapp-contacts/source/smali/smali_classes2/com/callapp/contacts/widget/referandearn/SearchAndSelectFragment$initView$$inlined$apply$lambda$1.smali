.class final Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "com/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$3$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 148
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getFilterableVerticalItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "binding.selectAllButton"

    if-ne p1, v0, :cond_2

    .line 150
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getFilterableVerticalItems()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 317
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 150
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->setChecked(Z)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->g(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->g:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f120604

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 153
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->getFilterableVerticalItems()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 319
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    if-eqz v0, :cond_3

    .line 153
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->setChecked(Z)V

    goto :goto_1

    .line 154
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->g(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->g:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f120606

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_2
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->e(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->setForceNotifyHorizontalItems(Z)V

    .line 158
    :cond_5
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->e(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->notifyDataSetChanged()V

    .line 159
    :cond_6
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$initView$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->c()V

    return-void
.end method
