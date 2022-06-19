.class public Lcom/google/android/material/bottomsheet/a;
.super Landroidx/appcompat/app/g;
.source "BottomSheetDialog.java"


# instance fields
.field a:Z

.field b:Z

.field private c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/FrameLayout;

.field private e:Z

.field private f:Z

.field private g:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/a;-><init>(Landroid/content/Context;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-static {p1, p2}, Lcom/google/android/material/bottomsheet/a;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/g;-><init>(Landroid/content/Context;I)V

    .line 51
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/a;->b:Z

    .line 52
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/a;->e:Z

    .line 290
    new-instance v0, Lcom/google/android/material/bottomsheet/a$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/a$4;-><init>(Lcom/google/android/material/bottomsheet/a;)V

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/a;->g:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;

    .line 63
    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/a;->a(I)Z

    .line 64
    return-void
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 275
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$b;->bottomSheetDialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 283
    :cond_0
    :goto_0
    return p1

    .line 280
    :cond_1
    sget p1, Lcom/google/android/material/a$k;->Theme_Design_Light_BottomSheetDialog:I

    goto :goto_0
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 3

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/a;->d()Landroid/widget/FrameLayout;

    .line 201
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->d:Landroid/widget/FrameLayout;

    sget v1, Lcom/google/android/material/a$f;->coordinator:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 202
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/a;->d:Landroid/widget/FrameLayout;

    sget v2, Lcom/google/android/material/a$f;->design_bottom_sheet:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 207
    if-nez p3, :cond_1

    .line 208
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 213
    :goto_0
    sget v2, Lcom/google/android/material/a$f;->touch_outside:I

    .line 214
    invoke-virtual {v0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/google/android/material/bottomsheet/a$1;

    invoke-direct {v2, p0}, Lcom/google/android/material/bottomsheet/a$1;-><init>(Lcom/google/android/material/bottomsheet/a;)V

    .line 215
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    new-instance v0, Lcom/google/android/material/bottomsheet/a$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/a$2;-><init>(Lcom/google/android/material/bottomsheet/a;)V

    invoke-static {v1, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    .line 249
    new-instance v0, Lcom/google/android/material/bottomsheet/a$3;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/a$3;-><init>(Lcom/google/android/material/bottomsheet/a;)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->d:Landroid/widget/FrameLayout;

    return-object v0

    .line 210
    :cond_1
    invoke-virtual {v1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private d()Landroid/widget/FrameLayout;
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->d:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$h;->design_bottom_sheet_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/a;->d:Landroid/widget/FrameLayout;

    .line 190
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->d:Landroid/widget/FrameLayout;

    sget v1, Lcom/google/android/material/a$f;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 191
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 192
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/a;->g:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/a;->b:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(Z)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/a;->d()Landroid/widget/FrameLayout;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object v0
.end method

.method c()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 261
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/a;->f:Z

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v3, [I

    const v2, 0x101035b

    aput v2, v1, v4

    .line 264
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/a;->e:Z

    .line 266
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 267
    iput-boolean v3, p0, Lcom/google/android/material/bottomsheet/a;->f:Z

    .line 269
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/a;->e:Z

    return v0
.end method

.method public cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 138
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->a()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    .line 140
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/a;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 141
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/g;->cancel()V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 80
    invoke-super {p0, p1}, Landroidx/appcompat/app/g;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 84
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 85
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 87
    :cond_0
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 89
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroidx/appcompat/app/g;->onStart()V

    .line 115
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(I)V

    .line 118
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroidx/appcompat/app/g;->setCancelable(Z)V

    .line 104
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/a;->b:Z

    if-eq v0, p1, :cond_0

    .line 105
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/a;->b:Z

    .line 106
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 149
    invoke-super {p0, p1}, Landroidx/appcompat/app/g;->setCanceledOnTouchOutside(Z)V

    .line 150
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/a;->b:Z

    if-nez v0, :cond_0

    .line 151
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/a;->b:Z

    .line 153
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/a;->e:Z

    .line 154
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/a;->f:Z

    .line 155
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/material/bottomsheet/a;->a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/app/g;->setContentView(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/bottomsheet/a;->a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/app/g;->setContentView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/material/bottomsheet/a;->a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/app/g;->setContentView(Landroid/view/View;)V

    .line 99
    return-void
.end method
