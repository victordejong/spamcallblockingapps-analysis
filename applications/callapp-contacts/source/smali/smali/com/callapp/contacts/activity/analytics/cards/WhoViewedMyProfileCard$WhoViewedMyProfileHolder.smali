.class Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WhoViewedMyProfileHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/ImageView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/ImageView;

.field private final h:Lcom/jjoe64/graphview/GraphView;

.field private final i:Landroid/view/View;

.field private final j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;Landroid/view/View;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->a:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a08ec

    .line 272
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->b:Landroid/widget/TextView;

    const p1, 0x7f0a08aa

    .line 273
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->c:Landroid/widget/TextView;

    const p1, 0x7f0a04c3

    .line 274
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->d:Landroid/widget/ImageView;

    const p1, 0x7f0a0646

    .line 275
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->e:Landroid/widget/TextView;

    const p1, 0x7f0a0217

    .line 276
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->f:Landroid/widget/TextView;

    const p1, 0x7f0a021a

    .line 277
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->g:Landroid/widget/ImageView;

    const p1, 0x7f0a0462

    .line 278
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jjoe64/graphview/GraphView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->h:Lcom/jjoe64/graphview/GraphView;

    const p1, 0x7f0a07e1

    .line 279
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i:Landroid/view/View;

    const p1, 0x7f0a0181

    .line 280
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->j:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/view/View;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->i:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/TextView;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/TextView;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->g:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/TextView;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/TextView;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Landroid/widget/TextView;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;)Lcom/jjoe64/graphview/GraphView;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;->h:Lcom/jjoe64/graphview/GraphView;

    return-object p0
.end method
