.class Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/SlideMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlideMenuListItemViewsHolder"
.end annotation


# instance fields
.field final synthetic r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

.field private final s:Landroid/widget/ImageView;

.field private final t:Landroid/widget/TextView;

.field private final u:Landroid/view/View;

.field private final v:Landroid/widget/TextView;

.field private w:Landroid/view/View;

.field private x:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/view/View;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    .line 393
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a078d

    .line 394
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->s:Landroid/widget/ImageView;

    const p1, 0x7f0a0792

    .line 395
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->t:Landroid/widget/TextView;

    const p1, 0x7f0a078c

    .line 396
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->u:Landroid/view/View;

    const p1, 0x7f0a078f

    .line 397
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->v:Landroid/widget/TextView;

    const p1, 0x7f0a02da

    .line 398
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->x:Landroid/widget/LinearLayout;

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/view/View;Lcom/callapp/contacts/widget/SlideMenuAdapter$1;)V
    .locals 0

    .line 384
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/TextView;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/view/View;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->u:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/view/View;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->w:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->s:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/TextView;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->t:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->x:Landroid/widget/LinearLayout;

    return-object p0
.end method
