.class public Le0;
.super Lc0;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedAPI"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0$a;
    }
.end annotation


# instance fields
.field public o:Le0$a;

.field public p:Z


# direct methods
.method public constructor <init>(Le0$a;)V
    .locals 0

    invoke-direct {p0}, Lc0;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Le0;->k(Lc0$c;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Le0$a;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Lc0;-><init>()V

    new-instance v0, Le0$a;

    invoke-direct {v0, p1, p0, p2}, Le0$a;-><init>(Le0$a;Le0;Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, Le0;->k(Lc0$c;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Le0;->onStateChange([I)Z

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-super {p0, p1}, Lc0;->applyTheme(Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Le0;->onStateChange([I)Z

    return-void
.end method

.method public bridge synthetic e()Lc0$c;
    .locals 1

    invoke-virtual {p0}, Le0;->m()Le0$a;

    move-result-object v0

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k(Lc0$c;)V
    .locals 1

    invoke-super {p0, p1}, Lc0;->k(Lc0$c;)V

    instance-of v0, p1, Le0$a;

    if-eqz v0, :cond_0

    check-cast p1, Le0$a;

    iput-object p1, p0, Le0;->o:Le0$a;

    :cond_0
    return-void
.end method

.method public m()Le0$a;
    .locals 3

    new-instance v0, Le0$a;

    iget-object v1, p0, Le0;->o:Le0$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Le0$a;-><init>(Le0$a;Le0;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Le0;->p:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lc0;->mutate()Landroid/graphics/drawable/Drawable;

    if-ne p0, p0, :cond_0

    iget-object v0, p0, Le0;->o:Le0$a;

    invoke-virtual {v0}, Le0$a;->r()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Le0;->p:Z

    :cond_0
    return-object p0
.end method

.method public n(Landroid/util/AttributeSet;)[I
    .locals 8

    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v5

    if-eqz v5, :cond_1

    const v6, 0x10100d0

    if-eq v5, v6, :cond_1

    const v6, 0x1010199

    if-eq v5, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    invoke-interface {p1, v3, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    neg-int v5, v5

    :goto_1
    aput v5, v1, v4

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1, v4}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object p1

    return-object p1
.end method

.method public onStateChange([I)Z
    .locals 2

    invoke-super {p0, p1}, Lc0;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Le0;->o:Le0$a;

    invoke-virtual {v1, p1}, Le0$a;->A([I)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p1, p0, Le0;->o:Le0$a;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p1, v1}, Le0$a;->A([I)I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lc0;->j(I)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
