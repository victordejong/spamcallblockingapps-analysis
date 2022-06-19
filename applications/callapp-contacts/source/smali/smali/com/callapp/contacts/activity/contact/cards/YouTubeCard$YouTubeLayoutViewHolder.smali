.class public Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "YouTubeLayoutViewHolder"
.end annotation


# instance fields
.field final a:Landroid/widget/ImageView;

.field final b:Landroid/widget/TextView;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;Landroid/view/View;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;->c:Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a0ae4

    .line 144
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;->a:Landroid/widget/ImageView;

    const p1, 0x7f0a0aa0

    .line 145
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;->b:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;Landroid/view/View;Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$1;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;-><init>(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;Landroid/view/View;)V

    return-void
.end method
