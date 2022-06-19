.class Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->a(Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;Lcom/callapp/contacts/activity/base/ScrollEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

.field final synthetic b:Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;

.field final synthetic c:Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$1;->c:Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$1;->a:Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    iput-object p3, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$1;->b:Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 94
    iget-object p1, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$1;->a:Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->isShouldGrey()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$1;->b:Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;

    iget-object v0, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$1;->a:Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    iget-object v1, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$1;->c:Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;

    invoke-static {v1}, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->a(Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;->a(Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;Lcom/callapp/contacts/widget/ProfilePictureView;)V

    return-void

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$1;->a:Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->isChecked()Z

    move-result p1

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$1;->a:Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->setChecked(Z)V

    .line 99
    iget-object p1, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$1;->c:Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->a(Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$1;->a:Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(ZZ)V

    .line 100
    iget-object p1, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder$1;->b:Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;->d()V

    return-void
.end method
