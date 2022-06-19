.class public Lcom/callapp/contacts/widget/ImageButtonWithText;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->b:I

    .line 25
    iput p1, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->c:I

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->d:Landroid/graphics/Paint;

    .line 40
    invoke-direct {p0}, Lcom/callapp/contacts/widget/ImageButtonWithText;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->b:I

    .line 25
    iput p1, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->c:I

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->d:Landroid/graphics/Paint;

    .line 35
    invoke-direct {p0}, Lcom/callapp/contacts/widget/ImageButtonWithText;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->b:I

    .line 25
    iput p1, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->c:I

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->d:Landroid/graphics/Paint;

    .line 30
    invoke-direct {p0}, Lcom/callapp/contacts/widget/ImageButtonWithText;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->d:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xa1

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ImageButtonWithText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object v0, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 53
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bA:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/settings/Language;->ARABIC:Lcom/callapp/contacts/activity/settings/Language;

    const v2, 0x3ee66666    # 0.45f

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bA:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/settings/Language;->HEBREW:Lcom/callapp/contacts/activity/settings/Language;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->a:Ljava/lang/String;

    iget v1, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->b:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    iget v3, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->c:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    iget-object v2, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [C

    .line 57
    iget-object v1, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 58
    iget v3, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->b:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    .line 59
    iget-object v4, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->d:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 60
    iget-object v4, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v10, v3

    move v11, v4

    :goto_1
    if-lez v11, :cond_2

    const/4 v3, 0x0

    .line 61
    iget-object v4, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->a:Ljava/lang/String;

    add-int/lit8 v12, v11, -0x1

    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 62
    iget v3, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->c:I

    int-to-float v3, v3

    mul-float v8, v3, v2

    iget-object v9, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->d:Landroid/graphics/Paint;

    move-object v3, p1

    move-object v4, v0

    move v7, v10

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 63
    aget v3, v1, v12

    add-float/2addr v10, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v10, v3

    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->b:I

    .line 74
    iput p2, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->c:I

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/ImageButtonWithText;->a:Ljava/lang/String;

    return-void
.end method
