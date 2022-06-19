.class public final Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TitleDescriptionImageViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0019\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0019\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u000b0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u000e\u001a\n \u0007*\u0004\u0018\u00010\u000b0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0019\u0010\u0010\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0013\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;",
        "",
        "itemView",
        "Landroid/view/View;",
        "(Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;Landroid/view/View;)V",
        "cardImageView",
        "Landroid/widget/ImageView;",
        "kotlin.jvm.PlatformType",
        "getCardImageView",
        "()Landroid/widget/ImageView;",
        "cardTitleTextView",
        "Landroid/widget/TextView;",
        "getCardTitleTextView",
        "()Landroid/widget/TextView;",
        "centerBottom",
        "getCenterBottom",
        "nothingWorksButtonsContainer",
        "getNothingWorksButtonsContainer",
        "()Landroid/view/View;",
        "titleImageFrame",
        "getTitleImageFrame",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/view/View;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;->a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a01d4

    .line 54
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;->b:Landroid/widget/TextView;

    const p1, 0x7f0a01cb

    .line 55
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;->c:Landroid/widget/ImageView;

    const p1, 0x7f0a0925

    .line 56
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;->d:Landroid/view/View;

    const p1, 0x7f0a0207

    .line 57
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;->e:Landroid/widget/TextView;

    const p1, 0x7f0a063b

    .line 58
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final getCardImageView()Landroid/widget/ImageView;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getCardTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getCenterBottom()Landroid/widget/TextView;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getNothingWorksButtonsContainer()Landroid/view/View;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;->f:Landroid/view/View;

    return-object v0
.end method

.method public final getTitleImageFrame()Landroid/view/View;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;->d:Landroid/view/View;

    return-object v0
.end method
