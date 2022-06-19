.class public Lcom/telguarder/features/intro/IntroPage3;
.super Landroidx/fragment/app/Fragment;
.source "IntroPage3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0b0054

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 32
    invoke-virtual {p0}, Lcom/telguarder/features/intro/IntroPage3;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/intro/IntroActivity;

    iget p2, p2, Lcom/telguarder/features/intro/IntroActivity;->mBottomPaddingOffset:I

    if-lez p2, :cond_0

    const p2, 0x7f080086

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 34
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result p3

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/telguarder/features/intro/IntroPage3;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/telguarder/features/intro/IntroActivity;

    iget v3, v3, Lcom/telguarder/features/intro/IntroActivity;->mBottomPaddingOffset:I

    add-int/2addr v2, v3

    invoke-virtual {p2, p3, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    return-object p1
.end method
