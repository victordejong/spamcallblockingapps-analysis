.class public Lcom/androidplot/util/AttrUtils;
.super Ljava/lang/Object;
.source "AttrUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.androidplot.util.AttrUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureBoxModelable(Landroid/content/res/TypedArray;Lcom/androidplot/ui/BoxModelable;IIIIIIII)V
    .locals 1

    if-eqz p0, :cond_0

    .line 136
    invoke-interface {p1}, Lcom/androidplot/ui/BoxModelable;->getMarginLeft()F

    move-result v0

    invoke-virtual {p0, p4, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    .line 137
    invoke-interface {p1}, Lcom/androidplot/ui/BoxModelable;->getMarginTop()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 138
    invoke-interface {p1}, Lcom/androidplot/ui/BoxModelable;->getMarginRight()F

    move-result v0

    invoke-virtual {p0, p5, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p5

    .line 139
    invoke-interface {p1}, Lcom/androidplot/ui/BoxModelable;->getMarginBottom()F

    move-result v0

    invoke-virtual {p0, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 136
    invoke-interface {p1, p4, p2, p5, p3}, Lcom/androidplot/ui/BoxModelable;->setMargins(FFFF)V

    .line 141
    invoke-interface {p1}, Lcom/androidplot/ui/BoxModelable;->getPaddingLeft()F

    move-result p2

    invoke-virtual {p0, p8, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 142
    invoke-interface {p1}, Lcom/androidplot/ui/BoxModelable;->getPaddingTop()F

    move-result p3

    invoke-virtual {p0, p6, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 143
    invoke-interface {p1}, Lcom/androidplot/ui/BoxModelable;->getPaddingRight()F

    move-result p4

    invoke-virtual {p0, p9, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    .line 144
    invoke-interface {p1}, Lcom/androidplot/ui/BoxModelable;->getPaddingBottom()F

    move-result p5

    invoke-virtual {p0, p7, p5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    .line 141
    invoke-interface {p1, p2, p3, p4, p0}, Lcom/androidplot/ui/BoxModelable;->setPadding(FFFF)V

    :cond_0
    return-void
.end method

.method public static configureInsets(Landroid/content/res/TypedArray;Lcom/androidplot/ui/Insets;IIII)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Lcom/androidplot/ui/Insets;->getTop()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/androidplot/ui/Insets;->setTop(F)V

    .line 40
    invoke-virtual {p1}, Lcom/androidplot/ui/Insets;->getBottom()F

    move-result p2

    invoke-virtual {p0, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/androidplot/ui/Insets;->setBottom(F)V

    .line 41
    invoke-virtual {p1}, Lcom/androidplot/ui/Insets;->getLeft()F

    move-result p2

    invoke-virtual {p0, p4, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/androidplot/ui/Insets;->setLeft(F)V

    .line 42
    invoke-virtual {p1}, Lcom/androidplot/ui/Insets;->getRight()F

    move-result p2

    invoke-virtual {p0, p5, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/androidplot/ui/Insets;->setRight(F)V

    return-void
.end method

.method public static configureLinePaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V
    .locals 0

    if-eqz p0, :cond_0

    .line 102
    invoke-static {p0, p1, p2}, Lcom/androidplot/util/AttrUtils;->setColor(Landroid/content/res/TypedArray;Landroid/graphics/Paint;I)V

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p2

    invoke-virtual {p0, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public static configurePositionMetrics(Landroid/content/res/TypedArray;Lcom/androidplot/ui/PositionMetrics;IIIII)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/androidplot/ui/PositionMetrics;->getXPositionMetric()Lcom/androidplot/ui/HorizontalPosition;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Lcom/androidplot/ui/PositionMetrics;->getXPositionMetric()Lcom/androidplot/ui/HorizontalPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/ui/HorizontalPosition;->getValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, p3, v1}, Lcom/androidplot/util/AttrUtils;->getIntFloatDimenValue(Landroid/content/res/TypedArray;ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    .line 213
    invoke-virtual {p1}, Lcom/androidplot/ui/PositionMetrics;->getXPositionMetric()Lcom/androidplot/ui/HorizontalPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/ui/HorizontalPosition;->getLayoutType()Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/androidplot/ui/HorizontalPositioning;

    invoke-static {p0, p2, v1}, Lcom/androidplot/util/AttrUtils;->getXLayoutStyle(Landroid/content/res/TypedArray;ILcom/androidplot/ui/HorizontalPositioning;)Lcom/androidplot/ui/HorizontalPositioning;

    move-result-object p2

    .line 211
    invoke-virtual {v0, p3, p2}, Lcom/androidplot/ui/HorizontalPosition;->set(FLjava/lang/Enum;)V

    .line 215
    invoke-virtual {p1}, Lcom/androidplot/ui/PositionMetrics;->getYPositionMetric()Lcom/androidplot/ui/VerticalPosition;

    move-result-object p2

    .line 216
    invoke-virtual {p1}, Lcom/androidplot/ui/PositionMetrics;->getYPositionMetric()Lcom/androidplot/ui/VerticalPosition;

    move-result-object p3

    invoke-virtual {p3}, Lcom/androidplot/ui/VerticalPosition;->getValue()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p0, p5, p3}, Lcom/androidplot/util/AttrUtils;->getIntFloatDimenValue(Landroid/content/res/TypedArray;ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    .line 217
    invoke-virtual {p1}, Lcom/androidplot/ui/PositionMetrics;->getYPositionMetric()Lcom/androidplot/ui/VerticalPosition;

    move-result-object p5

    invoke-virtual {p5}, Lcom/androidplot/ui/VerticalPosition;->getLayoutType()Ljava/lang/Enum;

    move-result-object p5

    check-cast p5, Lcom/androidplot/ui/VerticalPositioning;

    invoke-static {p0, p4, p5}, Lcom/androidplot/util/AttrUtils;->getYLayoutStyle(Landroid/content/res/TypedArray;ILcom/androidplot/ui/VerticalPositioning;)Lcom/androidplot/ui/VerticalPositioning;

    move-result-object p4

    .line 215
    invoke-virtual {p2, p3, p4}, Lcom/androidplot/ui/VerticalPosition;->set(FLjava/lang/Enum;)V

    .line 218
    invoke-virtual {p1}, Lcom/androidplot/ui/PositionMetrics;->getAnchor()Lcom/androidplot/ui/Anchor;

    move-result-object p2

    invoke-static {p0, p6, p2}, Lcom/androidplot/util/AttrUtils;->getAnchorPosition(Landroid/content/res/TypedArray;ILcom/androidplot/ui/Anchor;)Lcom/androidplot/ui/Anchor;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/androidplot/ui/PositionMetrics;->setAnchor(Lcom/androidplot/ui/Anchor;)V

    :cond_0
    return-void
.end method

.method public static configureSize(Landroid/content/res/TypedArray;Lcom/androidplot/ui/Size;IIII)V
    .locals 1

    if-eqz p0, :cond_0

    .line 160
    invoke-virtual {p1}, Lcom/androidplot/ui/Size;->getHeight()Lcom/androidplot/ui/SizeMetric;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/androidplot/util/AttrUtils;->configureSizeMetric(Landroid/content/res/TypedArray;Lcom/androidplot/ui/SizeMetric;II)V

    .line 161
    invoke-virtual {p1}, Lcom/androidplot/ui/Size;->getWidth()Lcom/androidplot/ui/SizeMetric;

    move-result-object p1

    invoke-static {p0, p1, p4, p5}, Lcom/androidplot/util/AttrUtils;->configureSizeMetric(Landroid/content/res/TypedArray;Lcom/androidplot/ui/SizeMetric;II)V

    :cond_0
    return-void
.end method

.method private static configureSizeMetric(Landroid/content/res/TypedArray;Lcom/androidplot/ui/SizeMetric;II)V
    .locals 1

    .line 167
    invoke-virtual {p1}, Lcom/androidplot/ui/SizeMetric;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/androidplot/util/AttrUtils;->getIntFloatDimenValue(Landroid/content/res/TypedArray;ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    .line 169
    invoke-virtual {p1}, Lcom/androidplot/ui/SizeMetric;->getLayoutType()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SizeMode;

    invoke-static {p0, p2, v0}, Lcom/androidplot/util/AttrUtils;->getSizeLayoutType(Landroid/content/res/TypedArray;ILcom/androidplot/ui/SizeMode;)Lcom/androidplot/ui/SizeMode;

    move-result-object p0

    .line 171
    invoke-virtual {p1, p3, p0}, Lcom/androidplot/ui/SizeMetric;->set(FLjava/lang/Enum;)V

    return-void
.end method

.method public static configureStep(Landroid/content/res/TypedArray;Lcom/androidplot/xy/StepModel;II)V
    .locals 2

    if-eqz p0, :cond_0

    .line 264
    invoke-static {}, Lcom/androidplot/xy/StepMode;->values()[Lcom/androidplot/xy/StepMode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/androidplot/xy/StepModel;->getMode()Lcom/androidplot/xy/StepMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/xy/StepMode;->ordinal()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/androidplot/xy/StepModel;->setMode(Lcom/androidplot/xy/StepMode;)V

    .line 265
    invoke-virtual {p1}, Lcom/androidplot/xy/StepModel;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p0, p3, p2}, Lcom/androidplot/util/AttrUtils;->getIntFloatDimenValue(Landroid/content/res/TypedArray;ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/androidplot/xy/StepModel;->setValue(D)V

    :cond_0
    return-void
.end method

.method public static configureTextAlign(Landroid/content/res/TypedArray;Landroid/graphics/Paint;I)V
    .locals 2

    if-eqz p0, :cond_0

    .line 86
    invoke-static {}, Landroid/graphics/Paint$Align;->values()[Landroid/graphics/Paint$Align;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint$Align;->ordinal()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    aget-object p0, v0, p0

    .line 88
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_0
    return-void
.end method

.method public static configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-static {p0, p1, p2, p3, v0}, Lcom/androidplot/util/AttrUtils;->configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;IILjava/lang/Integer;)V

    return-void
.end method

.method public static configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;IILjava/lang/Integer;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 68
    invoke-static {p0, p1, p2}, Lcom/androidplot/util/AttrUtils;->setColor(Landroid/content/res/TypedArray;Landroid/graphics/Paint;I)V

    .line 69
    invoke-static {p0, p1, p3}, Lcom/androidplot/util/AttrUtils;->setTextSize(Landroid/content/res/TypedArray;Landroid/graphics/Paint;I)V

    if-eqz p4, :cond_0

    .line 71
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/androidplot/util/AttrUtils;->configureTextAlign(Landroid/content/res/TypedArray;Landroid/graphics/Paint;I)V

    :cond_0
    return-void
.end method

.method public static configureWidget(Landroid/content/res/TypedArray;Lcom/androidplot/ui/widget/Widget;IIIIIIIIII)V
    .locals 8

    move-object v7, p0

    if-eqz v7, :cond_0

    .line 183
    invoke-virtual {p1}, Lcom/androidplot/ui/widget/Widget;->getSize()Lcom/androidplot/ui/Size;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/androidplot/util/AttrUtils;->configureSize(Landroid/content/res/TypedArray;Lcom/androidplot/ui/Size;IIII)V

    .line 185
    invoke-virtual {p1}, Lcom/androidplot/ui/widget/Widget;->getPositionMetrics()Lcom/androidplot/ui/PositionMetrics;

    move-result-object v1

    move v2, p6

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    invoke-static/range {v0 .. v6}, Lcom/androidplot/util/AttrUtils;->configurePositionMetrics(Landroid/content/res/TypedArray;Lcom/androidplot/ui/PositionMetrics;IIIII)V

    .line 187
    invoke-virtual {p1}, Lcom/androidplot/ui/widget/Widget;->isVisible()Z

    move-result v0

    move/from16 v1, p11

    invoke-virtual {p0, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move-object v1, p1

    invoke-virtual {p1, v0}, Lcom/androidplot/ui/widget/Widget;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public static configureWidgetRotation(Landroid/content/res/TypedArray;Lcom/androidplot/ui/widget/Widget;I)V
    .locals 1

    if-eqz p0, :cond_0

    .line 193
    sget-object v0, Lcom/androidplot/ui/widget/Widget$Rotation;->NONE:Lcom/androidplot/ui/widget/Widget$Rotation;

    invoke-static {p0, p2, v0}, Lcom/androidplot/util/AttrUtils;->getWidgetRotation(Landroid/content/res/TypedArray;ILcom/androidplot/ui/widget/Widget$Rotation;)Lcom/androidplot/ui/widget/Widget$Rotation;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/androidplot/ui/widget/Widget;->setRotation(Lcom/androidplot/ui/widget/Widget$Rotation;)V

    :cond_0
    return-void
.end method

.method private static getAnchorPosition(Landroid/content/res/TypedArray;ILcom/androidplot/ui/Anchor;)Lcom/androidplot/ui/Anchor;
    .locals 1

    .line 259
    invoke-static {}, Lcom/androidplot/ui/Anchor;->values()[Lcom/androidplot/ui/Anchor;

    move-result-object v0

    invoke-virtual {p2}, Lcom/androidplot/ui/Anchor;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method private static getIntFloatDimenValue(Landroid/content/res/TypedArray;ILjava/lang/Number;)Ljava/lang/Number;
    .locals 2

    if-eqz p0, :cond_3

    .line 231
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 234
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 236
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 238
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_0

    .line 240
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value type - must be int, float or dimension."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-object p2
.end method

.method private static getSizeLayoutType(Landroid/content/res/TypedArray;ILcom/androidplot/ui/SizeMode;)Lcom/androidplot/ui/SizeMode;
    .locals 1

    .line 175
    invoke-static {}, Lcom/androidplot/ui/SizeMode;->values()[Lcom/androidplot/ui/SizeMode;

    move-result-object v0

    invoke-virtual {p2}, Lcom/androidplot/ui/SizeMode;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method private static getWidgetRotation(Landroid/content/res/TypedArray;ILcom/androidplot/ui/widget/Widget$Rotation;)Lcom/androidplot/ui/widget/Widget$Rotation;
    .locals 1

    .line 255
    invoke-static {}, Lcom/androidplot/ui/widget/Widget$Rotation;->values()[Lcom/androidplot/ui/widget/Widget$Rotation;

    move-result-object v0

    invoke-virtual {p2}, Lcom/androidplot/ui/widget/Widget$Rotation;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method private static getXLayoutStyle(Landroid/content/res/TypedArray;ILcom/androidplot/ui/HorizontalPositioning;)Lcom/androidplot/ui/HorizontalPositioning;
    .locals 1

    .line 247
    invoke-static {}, Lcom/androidplot/ui/HorizontalPositioning;->values()[Lcom/androidplot/ui/HorizontalPositioning;

    move-result-object v0

    invoke-virtual {p2}, Lcom/androidplot/ui/HorizontalPositioning;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method private static getYLayoutStyle(Landroid/content/res/TypedArray;ILcom/androidplot/ui/VerticalPositioning;)Lcom/androidplot/ui/VerticalPositioning;
    .locals 1

    .line 251
    invoke-static {}, Lcom/androidplot/ui/VerticalPositioning;->values()[Lcom/androidplot/ui/VerticalPositioning;

    move-result-object v0

    invoke-virtual {p2}, Lcom/androidplot/ui/VerticalPositioning;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static setColor(Landroid/content/res/TypedArray;Landroid/graphics/Paint;I)V
    .locals 1

    if-nez p1, :cond_0

    .line 109
    sget-object p0, Lcom/androidplot/util/AttrUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempt to configure null Paint property for attrId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method

.method public static setTextSize(Landroid/content/res/TypedArray;Landroid/graphics/Paint;I)V
    .locals 1

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
