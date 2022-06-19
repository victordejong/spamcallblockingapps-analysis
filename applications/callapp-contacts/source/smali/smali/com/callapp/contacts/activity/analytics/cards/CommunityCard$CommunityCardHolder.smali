.class Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommunityCardHolder"
.end annotation


# instance fields
.field a:Landroid/widget/LinearLayout;

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/widget/TextView;

.field private final k:Landroid/widget/TextView;

.field private final l:Landroid/widget/TextView;

.field private final m:Landroid/widget/TextView;

.field private final n:Landroid/widget/TextView;

.field private final o:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/callapp/contacts/widget/ProfilePictureView;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;Landroid/view/View;)V
    .locals 1

    .line 387
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->b:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a025a

    .line 388
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->a:Landroid/widget/LinearLayout;

    const p1, 0x7f0a092d

    .line 389
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->c:Landroid/widget/TextView;

    const p1, 0x7f0a08af

    .line 390
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->d:Landroid/widget/TextView;

    const p1, 0x7f0a0863

    .line 391
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->e:Landroid/widget/TextView;

    const p1, 0x7f0a08b7

    .line 392
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->f:Landroid/widget/TextView;

    const p1, 0x7f0a06f5

    .line 393
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->g:Landroid/widget/TextView;

    const p1, 0x7f0a08b3

    .line 394
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->h:Landroid/widget/TextView;

    const p1, 0x7f0a029c

    .line 395
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->j:Landroid/widget/TextView;

    const p1, 0x7f0a06f4

    .line 396
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->i:Landroid/widget/TextView;

    const p1, 0x7f0a0860

    .line 397
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->k:Landroid/widget/TextView;

    const p1, 0x7f0a0a8e

    .line 398
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->q:Lcom/callapp/contacts/widget/ProfilePictureView;

    const p1, 0x7f0a0126

    .line 399
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->l:Landroid/widget/TextView;

    const p1, 0x7f0a00c9

    .line 400
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->m:Landroid/widget/TextView;

    const p1, 0x7f0a05a6

    .line 401
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->n:Landroid/widget/TextView;

    const p1, 0x7f0a0258

    .line 402
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->o:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    const v0, 0x7f060110

    .line 403
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgressBackgroundColor(I)V

    const p1, 0x7f0a0a91

    .line 404
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->p:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->a:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic j(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic k(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic l(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic m(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic n(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->k:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic o(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->o:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    return-object p0
.end method

.method static synthetic p(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->q:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object p0
.end method
