.class Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CDHoursCardCardHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;

.field private final b:Landroid/widget/FrameLayout;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroidx/fragment/app/FragmentContainerView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Lcom/callapp/contacts/widget/ProfilePictureView;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;Landroid/view/View;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->a:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a014c

    .line 216
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->b:Landroid/widget/FrameLayout;

    const p1, 0x7f0a0919

    .line 217
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->c:Landroid/widget/TextView;

    const p1, 0x7f0a0918

    .line 218
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->d:Landroid/widget/TextView;

    const p1, 0x7f0a0779

    .line 219
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a01a5

    .line 220
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentContainerView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->f:Landroidx/fragment/app/FragmentContainerView;

    .line 221
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a094f

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->g:Landroid/widget/ImageView;

    .line 222
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a014d

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->h:Landroid/widget/LinearLayout;

    .line 223
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a014a

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->i:Landroid/widget/LinearLayout;

    .line 224
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0a8e

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->j:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroidx/fragment/app/FragmentContainerView;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->f:Landroidx/fragment/app/FragmentContainerView;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->i:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->g:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->h:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->b:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->e:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->j:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object p0
.end method
