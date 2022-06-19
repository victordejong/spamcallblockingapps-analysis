.class Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingVsOutgoingCardHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/view/View;

.field private final g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;Landroid/view/View;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->a:Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a050c

    .line 359
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->b:Landroid/widget/TextView;

    const p1, 0x7f0a0672

    .line 360
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->c:Landroid/widget/TextView;

    const p1, 0x7f0a050b

    .line 361
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->d:Landroid/widget/TextView;

    const p1, 0x7f0a0671

    .line 362
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->e:Landroid/widget/TextView;

    const p1, 0x7f0a050d

    .line 363
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->f:Landroid/view/View;

    const p1, 0x7f0a0673

    .line 364
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->g:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;)Landroid/view/View;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;)Landroid/view/View;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->g:Landroid/view/View;

    return-object p0
.end method
