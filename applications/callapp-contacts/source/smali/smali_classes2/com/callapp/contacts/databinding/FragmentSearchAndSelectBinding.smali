.class public final Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Landroid/widget/FrameLayout;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;

.field public final d:Landroid/view/ViewStub;

.field public final e:Landroid/widget/ProgressBar;

.field public final f:Landroid/widget/FrameLayout;

.field public final g:Landroid/widget/TextView;

.field private final h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/ViewStub;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    iput-object p2, p0, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->a:Landroid/widget/FrameLayout;

    .line 53
    iput-object p3, p0, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->b:Landroid/widget/FrameLayout;

    .line 54
    iput-object p4, p0, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    iput-object p5, p0, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->d:Landroid/view/ViewStub;

    .line 56
    iput-object p6, p0, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->e:Landroid/widget/ProgressBar;

    .line 57
    iput-object p7, p0, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->f:Landroid/widget/FrameLayout;

    .line 58
    iput-object p8, p0, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->g:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;
    .locals 11

    const v0, 0x7f0d0111

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0a0147

    .line 1089
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/FrameLayout;

    const v0, 0x7f0a07d6

    const v1, 0x7f0a07ae

    const v2, 0x7f0a06f7

    const v4, 0x7f0a06cd

    const v5, 0x7f0a05a0

    const v6, 0x7f0a0482

    if-eqz v3, :cond_6

    .line 1095
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    .line 1101
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_4

    .line 1107
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/view/ViewStub;

    if-eqz v7, :cond_3

    .line 1113
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/widget/ProgressBar;

    if-eqz v8, :cond_2

    .line 1119
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_1

    .line 1125
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 1130
    new-instance v0, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;

    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, v0

    move-object v4, p1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/ViewStub;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V

    return-object v0

    :cond_0
    const p1, 0x7f0a07d6

    goto :goto_0

    :cond_1
    const p1, 0x7f0a07ae

    goto :goto_0

    :cond_2
    const p1, 0x7f0a06f7

    goto :goto_0

    :cond_3
    const p1, 0x7f0a06cd

    goto :goto_0

    :cond_4
    const p1, 0x7f0a05a0

    goto :goto_0

    :cond_5
    const p1, 0x7f0a0482

    .line 1134
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1135
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

    .line 21
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
