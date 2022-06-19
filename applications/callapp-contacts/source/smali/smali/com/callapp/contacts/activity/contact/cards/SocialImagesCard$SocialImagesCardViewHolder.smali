.class public Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocialImagesCardViewHolder"
.end annotation


# instance fields
.field public r:Landroid/widget/ImageView;

.field public s:Landroid/view/View;

.field public t:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 194
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a04b8

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;->r:Landroid/widget/ImageView;

    const v0, 0x7f0a0846

    .line 196
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;->t:Landroid/widget/ImageView;

    const v0, 0x7f0a0450

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;->s:Landroid/view/View;

    return-void
.end method
