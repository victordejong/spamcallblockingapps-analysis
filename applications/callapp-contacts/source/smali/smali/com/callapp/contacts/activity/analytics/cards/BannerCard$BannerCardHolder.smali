.class Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/BannerCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BannerCardHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/BannerCard;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/ImageView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/BannerCard;Landroid/view/View;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->a:Lcom/callapp/contacts/activity/analytics/cards/BannerCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a011f

    .line 196
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->b:Landroid/widget/TextView;

    const p1, 0x7f0a011e

    .line 197
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->c:Landroid/widget/TextView;

    const p1, 0x7f0a04d6

    .line 198
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->d:Landroid/widget/ImageView;

    const p1, 0x7f0a02ce

    .line 199
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->e:Landroid/widget/TextView;

    const p1, 0x7f0a0119

    .line 200
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->f:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->f:Landroid/widget/RelativeLayout;

    return-object p0
.end method
