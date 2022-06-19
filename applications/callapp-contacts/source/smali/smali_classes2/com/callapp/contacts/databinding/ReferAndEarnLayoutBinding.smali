.class public final Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Landroidx/fragment/app/FragmentContainerView;

.field public final b:Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;

.field public final c:Lcom/google/android/material/appbar/AppBarLayout;

.field private final d:Landroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/fragment/app/FragmentContainerView;Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;->d:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 36
    iput-object p2, p0, Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;->a:Landroidx/fragment/app/FragmentContainerView;

    .line 37
    iput-object p3, p0, Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;->b:Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;

    .line 38
    iput-object p4, p0, Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;->c:Lcom/google/android/material/appbar/AppBarLayout;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;)Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;
    .locals 4

    const v0, 0x7f0d0255

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1055
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a052e

    .line 1069
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentContainerView;

    const v2, 0x7f0a0746

    const v3, 0x7f0a0745

    if-eqz v1, :cond_2

    .line 1075
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1079
    invoke-static {v0}, Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;->a(Landroid/view/View;)Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;

    move-result-object v0

    .line 1082
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v3, :cond_0

    .line 1087
    new-instance v2, Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/fragment/app/FragmentContainerView;Lcom/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding;Lcom/google/android/material/appbar/AppBarLayout;)V

    return-object v2

    :cond_0
    const v0, 0x7f0a0746

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0745

    .line 1090
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1091
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/databinding/ReferAndEarnLayoutBinding;->d:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object v0
.end method
