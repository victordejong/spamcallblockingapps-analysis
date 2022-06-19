.class public Lcom/google/android/material/snackbar/Snackbar;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar",
        "<",
        "Lcom/google/android/material/snackbar/Snackbar;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:[I


# instance fields
.field private final d:Landroid/view/accessibility/AccessibilityManager;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/android/material/a$b;->snackbarButtonStyle:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/snackbar/Snackbar;->f:[I

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/a;)V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/a;)V

    .line 112
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/snackbar/Snackbar;->d:Landroid/view/accessibility/AccessibilityManager;

    .line 113
    return-void
.end method

.method private static a(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 212
    move-object v1, v2

    move-object v0, p0

    .line 214
    :cond_0
    instance-of v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v3, :cond_1

    .line 216
    check-cast v0, Landroid/view/ViewGroup;

    .line 236
    :goto_0
    return-object v0

    .line 217
    :cond_1
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    .line 218
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x1020002

    if-ne v1, v3, :cond_2

    .line 221
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 224
    check-cast v1, Landroid/view/ViewGroup;

    .line 228
    :cond_3
    if-eqz v0, :cond_4

    .line 230
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 231
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_5

    check-cast v0, Landroid/view/View;

    .line 233
    :cond_4
    :goto_1
    if-nez v0, :cond_0

    move-object v0, v1

    .line 236
    goto :goto_0

    :cond_5
    move-object v0, v2

    .line 231
    goto :goto_1
.end method

.method public static a(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 4

    .prologue
    .line 156
    invoke-static {p0}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 157
    if-nez v1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 166
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/google/android/material/a$h;->mtrl_layout_snackbar_include:I

    :goto_0
    const/4 v3, 0x0

    .line 165
    invoke-virtual {v2, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 171
    new-instance v2, Lcom/google/android/material/snackbar/Snackbar;

    invoke-direct {v2, v1, v0, v0}, Lcom/google/android/material/snackbar/Snackbar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/a;)V

    .line 172
    invoke-virtual {v2, p1}, Lcom/google/android/material/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    .line 173
    invoke-virtual {v2, p2}, Lcom/google/android/material/snackbar/Snackbar;->a(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 174
    return-object v2

    .line 166
    :cond_1
    sget v0, Lcom/google/android/material/a$h;->design_layout_snackbar_include:I

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 183
    sget-object v1, Lcom/google/android/material/snackbar/Snackbar;->f:[I

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 184
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 185
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/material/snackbar/Snackbar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 247
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 248
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    return-object p0
.end method

.method public c()I
    .locals 4

    .prologue
    const/4 v0, -0x2

    .line 308
    invoke-super {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c()I

    move-result v1

    .line 309
    if-ne v1, v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 313
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_3

    .line 314
    iget-boolean v0, p0, Lcom/google/android/material/snackbar/Snackbar;->e:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 315
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/snackbar/Snackbar;->d:Landroid/view/accessibility/AccessibilityManager;

    or-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v1, v0}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    goto :goto_0

    .line 314
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 320
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/material/snackbar/Snackbar;->e:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/material/snackbar/Snackbar;->d:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d()V

    .line 120
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->e()V

    .line 127
    return-void
.end method
