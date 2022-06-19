.class public final Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

.field public final b:Landroid/widget/TextView;

.field private final c:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;Landroid/widget/TextView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 31
    iput-object p2, p0, Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    .line 32
    iput-object p3, p0, Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;->b:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;
    .locals 2

    const v0, 0x7f0d024f

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0a0733

    .line 1063
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    const v1, 0x7f0a0735

    if-eqz v0, :cond_1

    .line 1069
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 1074
    new-instance v1, Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v1, p0, v0, p1}, Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;Landroid/widget/TextView;)V

    return-object v1

    :cond_0
    const p1, 0x7f0a0735

    .line 1077
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1078
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
