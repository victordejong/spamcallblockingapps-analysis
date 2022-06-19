.class Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CarousleCardViewHolder"
.end annotation


# instance fields
.field protected final a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

.field protected final b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field protected final c:Landroid/widget/LinearLayout;

.field protected final d:Landroid/widget/TextView;

.field protected final e:Landroid/view/View;

.field protected final f:Landroidx/constraintlayout/widget/ConstraintLayout;

.field protected final g:Landroid/widget/ImageView;

.field protected final h:Landroid/widget/ImageView;

.field protected final i:Landroid/widget/ImageView;

.field final synthetic j:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;Landroid/view/View;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->j:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a01f5

    .line 407
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    const p1, 0x7f0a03cc

    .line 408
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const p1, 0x7f0a0422

    .line 409
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->c:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0426

    .line 410
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->d:Landroid/widget/TextView;

    const p1, 0x7f0a01f9

    .line 411
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p1, 0x7f0a0423

    .line 412
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->e:Landroid/view/View;

    const p1, 0x7f0a03f6

    .line 413
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->g:Landroid/widget/ImageView;

    const p1, 0x7f0a07c2

    .line 414
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->h:Landroid/widget/ImageView;

    const p1, 0x7f0a0911

    .line 415
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->i:Landroid/widget/ImageView;

    return-void
.end method
