.class Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;

.field final synthetic b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$5;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$5;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 155
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 156
    iget-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$5;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->b(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$5;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->getAdapterPosition()I

    move-result p1

    if-ltz p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$5;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;->a(I)V

    :cond_0
    return-void
.end method
