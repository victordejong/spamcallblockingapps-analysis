.class public Lcom/callapp/contacts/widget/DualCirclesCheckBox;
.super Landroidx/appcompat/widget/AppCompatRadioButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;
    }
.end annotation


# instance fields
.field a:F

.field b:I

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:I

.field private h:I

.field private i:Z

.field private j:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07024c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->c:I

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->d:Landroid/graphics/Paint;

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->e:Landroid/graphics/Paint;

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->f:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->i:Z

    .line 37
    new-instance p1, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;-><init>(Lcom/callapp/contacts/widget/DualCirclesCheckBox;Lcom/callapp/contacts/widget/DualCirclesCheckBox$1;)V

    .line 1049
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1053
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/R$styleable;->dualCircleImageView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1054
    invoke-direct {p0, p2, p1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->a(Landroid/content/res/TypedArray;Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;)V

    .line 39
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->a(Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;)V

    return-void
.end method

.method private a(Landroid/content/res/TypedArray;Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;)V
    .locals 5

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown attribute for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "TAG"

    invoke-static {v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_0
    invoke-static {p2}, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->a(Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-static {p2, v2}, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->a(Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;I)I

    goto :goto_1

    .line 72
    :cond_1
    invoke-static {p2}, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->b(Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-static {p2, v2}, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->b(Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;I)I

    goto :goto_1

    .line 75
    :cond_2
    invoke-static {p2}, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->c(Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p2, v2}, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->a(Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;F)F

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 110
    iget-object v0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->e:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->a(Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->d:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->b(Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    invoke-static {p1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;->c(Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;)F

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->a:F

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/callapp/contacts/widget/DualCirclesCheckBox;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public final b(I)Lcom/callapp/contacts/widget/DualCirclesCheckBox;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 131
    iget v0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->a:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 132
    iget v0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 134
    :cond_0
    iget v0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 135
    iget v0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->b:I

    int-to-float v2, v2

    iget v3, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->a:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x50

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->c:I

    goto :goto_1

    .line 148
    :cond_2
    iget v0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->h:I

    iget v1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->c:I

    div-int/lit8 v1, v1, 0x2

    :goto_1
    sub-int/2addr v0, v1

    .line 153
    :goto_2
    iget v1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->c:I

    add-int v2, v0, v1

    .line 154
    iget v3, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->g:I

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 157
    iget-object v4, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 160
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_3

    .line 161
    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 166
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatRadioButton;->onSizeChanged(IIII)V

    .line 89
    div-int/lit8 p3, p1, 0x2

    .line 90
    div-int/lit8 p4, p2, 0x2

    .line 91
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->i:Z

    if-nez v0, :cond_0

    .line 92
    iput p3, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->g:I

    .line 93
    iput p4, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->h:I

    .line 94
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->getPaddingRight()I

    move-result p3

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->getPaddingLeft()I

    move-result p4

    add-int/2addr p3, p4

    sub-int p3, p1, p3

    .line 95
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->getPaddingTop()I

    move-result p4

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->getPaddingBottom()I

    move-result v0

    add-int/2addr p4, v0

    sub-int p4, p2, p4

    .line 96
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->b:I

    goto :goto_0

    .line 99
    :cond_0
    iget v0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->b:I

    sub-int v1, p3, v0

    add-int/2addr p3, v1

    iput p3, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->g:I

    sub-int p3, p4, v0

    add-int/2addr p4, p3

    .line 100
    iput p4, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->h:I

    .line 103
    :goto_0
    iget p3, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->c:I

    if-gt p3, p1, :cond_1

    if-le p3, p2, :cond_2

    .line 104
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->c:I

    :cond_2
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setButtonDrawable(I)V

    .line 119
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->j:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iput-object p1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->j:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setFromAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 58
    new-instance v0, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;-><init>(Lcom/callapp/contacts/widget/DualCirclesCheckBox;Lcom/callapp/contacts/widget/DualCirclesCheckBox$1;)V

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->a(Landroid/content/res/TypedArray;Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;)V

    .line 60
    invoke-direct {p0, v0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->a(Lcom/callapp/contacts/widget/DualCirclesCheckBox$Attributes;)V

    return-void
.end method

.method public setIconBounded(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->c:I

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->i:Z

    return-void
.end method

.method public setIconColorFilter(IZ)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->j:Landroid/graphics/drawable/Drawable;

    .line 185
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->j:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method
