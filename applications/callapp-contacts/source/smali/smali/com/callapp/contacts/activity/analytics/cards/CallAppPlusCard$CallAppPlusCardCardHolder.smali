.class Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallAppPlusCardCardHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/view/View;

.field private final h:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;Landroid/view/View;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->a:Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a0922

    .line 194
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->b:Landroid/widget/TextView;

    const p1, 0x7f0a08ad

    .line 195
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->c:Landroid/widget/TextView;

    const p1, 0x7f0a011f

    .line 196
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->d:Landroid/widget/TextView;

    const p1, 0x7f0a04d6

    .line 197
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->e:Landroid/widget/ImageView;

    const p1, 0x7f0a02ce

    .line 198
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->f:Landroid/widget/TextView;

    const p1, 0x7f0a0333

    .line 199
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->g:Landroid/view/View;

    const p1, 0x7f0a0196

    .line 200
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->h:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/view/View;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->g:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;->h:Landroid/widget/LinearLayout;

    return-object p0
.end method
