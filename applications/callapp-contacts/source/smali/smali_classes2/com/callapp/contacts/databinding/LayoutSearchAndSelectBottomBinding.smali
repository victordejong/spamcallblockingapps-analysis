.class public final Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final e:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    iput-object p2, p0, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;->a:Landroid/view/View;

    .line 38
    iput-object p3, p0, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;->b:Landroid/widget/TextView;

    .line 39
    iput-object p4, p0, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;->c:Landroid/widget/TextView;

    .line 40
    iput-object p5, p0, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;
    .locals 6

    const v0, 0x7f0d01b9

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 59
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7f0a0149

    .line 1071
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a07a7

    const v1, 0x7f0a07a6

    if-eqz v2, :cond_2

    .line 1077
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 1083
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 1088
    move-object v5, p0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1090
    new-instance p0, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;

    move-object v0, p0

    move-object v1, v5

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-object p0

    :cond_0
    const p1, 0x7f0a07a7

    goto :goto_0

    :cond_1
    const p1, 0x7f0a07a6

    .line 1094
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1095
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

    .line 17
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
