.class Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuThemeViewsHolder;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;
.implements Lcom/callapp/contacts/activity/interfaces/OnSlideMenuOpenedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/SlideMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlideMenuThemeViewsHolder"
.end annotation


# instance fields
.field final synthetic r:Lcom/callapp/contacts/widget/SlideMenuAdapter;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/view/View;)V
    .locals 1

    .line 524
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuThemeViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    .line 525
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a077d

    .line 526
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->a(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v0, 0x7f0a08a2

    .line 527
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->c(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0a08a0

    .line 528
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->a(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroidx/constraintlayout/widget/ConstraintLayout;)Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a03f4

    .line 529
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->e(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v0, 0x7f0a03f3

    .line 530
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->a(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    const v0, 0x7f0a089f

    .line 531
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->f(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method
