.class Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CDCommunityCardHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

.field private b:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private c:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroidx/fragment/app/FragmentContainerView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;Landroid/view/View;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->a:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a0779

    .line 406
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0a8e

    .line 407
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->c:Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 408
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a07da

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->b:Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 409
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a014c

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->d:Landroid/widget/FrameLayout;

    .line 410
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a059d

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->f:Landroid/widget/TextView;

    .line 411
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0357

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->g:Landroid/widget/LinearLayout;

    const p2, 0x7f0a035b

    .line 412
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->h:Landroid/widget/TextView;

    .line 413
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->g:Landroid/widget/LinearLayout;

    const p2, 0x7f0a035a

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->i:Landroid/widget/TextView;

    .line 414
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->g:Landroid/widget/LinearLayout;

    const p2, 0x7f0a035d

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->j:Landroid/widget/TextView;

    .line 415
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->g:Landroid/widget/LinearLayout;

    const p2, 0x7f0a035c

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->k:Landroid/widget/TextView;

    .line 416
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->g:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0360

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->l:Landroid/widget/TextView;

    .line 417
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->g:Landroid/widget/LinearLayout;

    const p2, 0x7f0a035f

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->m:Landroid/widget/TextView;

    .line 418
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->g:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0362

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->n:Landroid/widget/TextView;

    .line 419
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->g:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0361

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->o:Landroid/widget/TextView;

    .line 421
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a072b

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->p:Landroid/widget/TextView;

    .line 422
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0728

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->q:Landroid/widget/TextView;

    .line 423
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0729

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->r:Landroid/widget/TextView;

    .line 424
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a072a

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->s:Landroid/widget/TextView;

    .line 426
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0aa0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->t:Landroid/widget/TextView;

    .line 427
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0a9b

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->u:Landroid/widget/TextView;

    .line 428
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0463

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentContainerView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->v:Landroidx/fragment/app/FragmentContainerView;

    .line 429
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a094f

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->w:Landroid/widget/ImageView;

    .line 430
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a014d

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->x:Landroid/widget/LinearLayout;

    .line 431
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->e:Landroid/widget/LinearLayout;

    const p2, 0x7f0a014a

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->y:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->e:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->d:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroidx/fragment/app/FragmentContainerView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->v:Landroidx/fragment/app/FragmentContainerView;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->y:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->w:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->x:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic j(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->k:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic k(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic l(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic m(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic n(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->o:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic o(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic p(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic q(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->q:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic r(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic s(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->s:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic t(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->t:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic u(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic v(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->c:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object p0
.end method

.method static synthetic w(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->b:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object p0
.end method
