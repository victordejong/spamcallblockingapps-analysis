.class Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Filter$FilterResults;

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;Landroid/widget/Filter$FilterResults;Ljava/lang/CharSequence;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->c:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->a:Landroid/widget/Filter$FilterResults;

    iput-object p3, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->b:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->a:Landroid/widget/Filter$FilterResults;

    iget-object v0, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 181
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->c:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    iget-object v0, v0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->getEmptySearchResultText()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->b:Ljava/lang/CharSequence;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->c:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    iget-object v1, v1, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->a(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->c:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    iget-object v0, v0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->a(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->c:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    iget-object v0, v0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->b(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->c:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    iget-object v1, v1, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->b(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->c:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    iget-object v1, v1, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->a(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->c:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    iget-object v1, v1, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->c(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->c:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    iget-object v1, v1, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;

    iget-object v2, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->c:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    iget-object v2, v2, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;

    iget-object v3, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->c:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    iget-object v3, v3, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;

    invoke-static {v3}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->d(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->a(Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;Ljava/util/List;)Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->a(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;)Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;

    .line 191
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->c:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    iget-object v0, v0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->b(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->c:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    iget-object v1, v1, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->c(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->c:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    iget-object v1, v1, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->c(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;->setData(Ljava/util/List;)V

    .line 194
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->c:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    iget-object v0, v0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->b(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->c:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    iget-object v0, v0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->b(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter$1;->c:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;

    iget-object v1, v1, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment$SearchFilter;->a:Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->c(Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    :cond_2
    return-void
.end method
