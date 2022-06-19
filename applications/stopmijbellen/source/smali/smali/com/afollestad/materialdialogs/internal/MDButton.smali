.class public Lcom/afollestad/materialdialogs/internal/MDButton;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Le2/d;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->a:Z

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070199

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->c:I

    .line 4
    sget-object p1, Le2/d;->c:Le2/d;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->b:Le2/d;

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->a:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_5

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->b:Le2/d;

    .line 3
    invoke-virtual {p2}, Le2/d;->a()I

    move-result p2

    or-int/lit8 p2, p2, 0x10

    goto :goto_0

    :cond_1
    const/16 p2, 0x11

    .line 4
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz p1, :cond_2

    .line 5
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->b:Le2/d;

    invoke-virtual {p2}, Le2/d;->b()I

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x4

    :goto_1
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextAlignment(I)V

    if-eqz p1, :cond_3

    .line 6
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->e:Landroid/graphics/drawable/Drawable;

    .line 7
    :goto_2
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_4

    .line 8
    iget p2, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->c:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->c:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 9
    :cond_4
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->a:Z

    :cond_5
    return-void
.end method

.method public setAllCapsCompat(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method public setDefaultSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->e:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public setStackedGravity(Le2/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->b:Le2/d;

    return-void
.end method

.method public setStackedSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->d:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->a(ZZ)V

    :cond_0
    return-void
.end method
