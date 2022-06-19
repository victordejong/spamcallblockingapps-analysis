.class Landroidx/k/a/a/i$h;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/k/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0

    .prologue
    .line 975
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 976
    iput-object p1, p0, Landroidx/k/a/a/i$h;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 977
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Landroidx/k/a/a/i$h;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Landroidx/k/a/a/i$h;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 981
    new-instance v1, Landroidx/k/a/a/i;

    invoke-direct {v1}, Landroidx/k/a/a/i;-><init>()V

    .line 982
    iget-object v0, p0, Landroidx/k/a/a/i$h;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    iput-object v0, v1, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    .line 983
    return-object v1
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 988
    new-instance v1, Landroidx/k/a/a/i;

    invoke-direct {v1}, Landroidx/k/a/a/i;-><init>()V

    .line 989
    iget-object v0, p0, Landroidx/k/a/a/i$h;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    iput-object v0, v1, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    .line 990
    return-object v1
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 995
    new-instance v1, Landroidx/k/a/a/i;

    invoke-direct {v1}, Landroidx/k/a/a/i;-><init>()V

    .line 996
    iget-object v0, p0, Landroidx/k/a/a/i$h;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 997
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    iput-object v0, v1, Landroidx/k/a/a/i;->c:Landroid/graphics/drawable/Drawable;

    .line 998
    return-object v1
.end method
