.class public Landroidx/constraintlayout/helper/widget/Flow;
.super Landroidx/constraintlayout/widget/VirtualLayout;
.source "SourceFile"


# instance fields
.field private a:Landroidx/constraintlayout/a/a/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;)V
    .locals 6

    .line 200
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;->a(Landroid/util/AttributeSet;)V

    .line 201
    new-instance v0, Landroidx/constraintlayout/a/a/g;

    invoke-direct {v0}, Landroidx/constraintlayout/a/a/g;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    if-eqz p1, :cond_1b

    .line 203
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1a

    .line 206
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 207
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_android_orientation:I

    if-ne v3, v4, :cond_0

    .line 208
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 3119
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->aW:I

    goto/16 :goto_1

    .line 209
    :cond_0
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_android_padding:I

    if-ne v3, v4, :cond_1

    .line 210
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/a/a/g;->p(I)V

    goto/16 :goto_1

    .line 211
    :cond_1
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_android_paddingStart:I

    const/16 v5, 0x11

    if-ne v3, v4, :cond_2

    .line 212
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_19

    .line 213
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 4057
    iput v3, v4, Landroidx/constraintlayout/a/a/l;->bb:I

    .line 4058
    iput v3, v4, Landroidx/constraintlayout/a/a/l;->bd:I

    .line 4059
    iput v3, v4, Landroidx/constraintlayout/a/a/l;->be:I

    goto/16 :goto_1

    .line 215
    :cond_2
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_android_paddingEnd:I

    if-ne v3, v4, :cond_3

    .line 216
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_19

    .line 217
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 4063
    iput v3, v4, Landroidx/constraintlayout/a/a/l;->bc:I

    goto/16 :goto_1

    .line 219
    :cond_3
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_android_paddingLeft:I

    if-ne v3, v4, :cond_4

    .line 220
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/a/a/g;->q(I)V

    goto/16 :goto_1

    .line 221
    :cond_4
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_android_paddingTop:I

    if-ne v3, v4, :cond_5

    .line 222
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 4084
    iput v3, v4, Landroidx/constraintlayout/a/a/l;->aZ:I

    goto/16 :goto_1

    .line 223
    :cond_5
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_android_paddingRight:I

    if-ne v3, v4, :cond_6

    .line 224
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/a/a/g;->r(I)V

    goto/16 :goto_1

    .line 225
    :cond_6
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_android_paddingBottom:I

    if-ne v3, v4, :cond_7

    .line 226
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 4093
    iput v3, v4, Landroidx/constraintlayout/a/a/l;->ba:I

    goto/16 :goto_1

    .line 227
    :cond_7
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_flow_wrapMode:I

    if-ne v3, v4, :cond_8

    .line 228
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 4163
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->aU:I

    goto/16 :goto_1

    .line 229
    :cond_8
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_flow_horizontalStyle:I

    if-ne v3, v4, :cond_9

    .line 230
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 5131
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->a:I

    goto/16 :goto_1

    .line 231
    :cond_9
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_flow_verticalStyle:I

    if-ne v3, v4, :cond_a

    .line 232
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 5135
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->b:I

    goto/16 :goto_1

    .line 233
    :cond_a
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_flow_firstHorizontalStyle:I

    if-ne v3, v4, :cond_b

    .line 234
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 6122
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->c:I

    goto/16 :goto_1

    .line 235
    :cond_b
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_flow_lastHorizontalStyle:I

    if-ne v3, v4, :cond_c

    .line 236
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 6126
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->aI:I

    goto/16 :goto_1

    .line 237
    :cond_c
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_flow_firstVerticalStyle:I

    if-ne v3, v4, :cond_d

    .line 238
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 7124
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->d:I

    goto/16 :goto_1

    .line 239
    :cond_d
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_flow_lastVerticalStyle:I

    if-ne v3, v4, :cond_e

    .line 240
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 7128
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->aJ:I

    goto/16 :goto_1

    .line 241
    :cond_e
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_flow_horizontalBias:I

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v3, v4, :cond_f

    .line 242
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 7139
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->aK:F

    goto/16 :goto_1

    .line 243
    :cond_f
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_flow_firstHorizontalBias:I

    if-ne v3, v4, :cond_10

    .line 244
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 7146
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->aM:F

    goto/16 :goto_1

    .line 245
    :cond_10
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_flow_lastHorizontalBias:I

    if-ne v3, v4, :cond_11

    .line 246
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 7150
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->aO:F

    goto/16 :goto_1

    .line 247
    :cond_11
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_flow_firstVerticalBias:I

    if-ne v3, v4, :cond_12

    .line 248
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 8148
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->aN:F

    goto :goto_1

    .line 249
    :cond_12
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_flow_lastVerticalBias:I

    if-ne v3, v4, :cond_13

    .line 250
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 8152
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->aP:F

    goto :goto_1

    .line 251
    :cond_13
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_flow_verticalBias:I

    if-ne v3, v4, :cond_14

    .line 252
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 9143
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->aL:F

    goto :goto_1

    .line 253
    :cond_14
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_flow_horizontalAlign:I

    const/4 v5, 0x2

    if-ne v3, v4, :cond_15

    .line 254
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 9155
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->aS:I

    goto :goto_1

    .line 255
    :cond_15
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_flow_verticalAlign:I

    if-ne v3, v4, :cond_16

    .line 256
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 9159
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->aT:I

    goto :goto_1

    .line 257
    :cond_16
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_flow_horizontalGap:I

    if-ne v3, v4, :cond_17

    .line 258
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 9166
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->aQ:I

    goto :goto_1

    .line 259
    :cond_17
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_flow_verticalGap:I

    if-ne v3, v4, :cond_18

    .line 260
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 9168
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->aR:I

    goto :goto_1

    .line 261
    :cond_18
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_flow_maxElementsWrap:I

    if-ne v3, v4, :cond_19

    .line 262
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    const/4 v5, -0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 9170
    iput v3, v4, Landroidx/constraintlayout/a/a/g;->aV:I

    :cond_19
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 265
    :cond_1a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 268
    :cond_1b
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->m:Landroidx/constraintlayout/a/a/i;

    .line 269
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->c()V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/a/e;Z)V
    .locals 1

    .line 144
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    .line 1072
    iget v0, p1, Landroidx/constraintlayout/a/a/l;->bb:I

    if-gtz v0, :cond_0

    iget v0, p1, Landroidx/constraintlayout/a/a/l;->bc:I

    if-lez v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    .line 1074
    iget p2, p1, Landroidx/constraintlayout/a/a/l;->bc:I

    iput p2, p1, Landroidx/constraintlayout/a/a/l;->bd:I

    .line 1075
    iget p2, p1, Landroidx/constraintlayout/a/a/l;->bb:I

    iput p2, p1, Landroidx/constraintlayout/a/a/l;->be:I

    return-void

    .line 1077
    :cond_1
    iget p2, p1, Landroidx/constraintlayout/a/a/l;->bb:I

    iput p2, p1, Landroidx/constraintlayout/a/a/l;->bd:I

    .line 1078
    iget p2, p1, Landroidx/constraintlayout/a/a/l;->bc:I

    iput p2, p1, Landroidx/constraintlayout/a/a/l;->be:I

    :cond_2
    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/a/l;II)V
    .locals 2

    .line 162
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 163
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 164
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 165
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1, v0, p2, v1, p3}, Landroidx/constraintlayout/a/a/l;->a(IIII)V

    .line 1139
    iget p2, p1, Landroidx/constraintlayout/a/a/l;->bg:I

    .line 1143
    iget p1, p1, Landroidx/constraintlayout/a/a/l;->bh:I

    .line 168
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/helper/widget/Flow;->setMeasuredDimension(II)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 170
    invoke-virtual {p0, p1, p1}, Landroidx/constraintlayout/helper/widget/Flow;->setMeasuredDimension(II)V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/widget/c$a;Landroidx/constraintlayout/a/a/j;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/c$a;",
            "Landroidx/constraintlayout/a/a/j;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/a/a/e;",
            ">;)V"
        }
    .end annotation

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/VirtualLayout;->a(Landroidx/constraintlayout/widget/c$a;Landroidx/constraintlayout/a/a/j;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 185
    instance-of p1, p2, Landroidx/constraintlayout/a/a/g;

    if-eqz p1, :cond_0

    .line 186
    check-cast p2, Landroidx/constraintlayout/a/a/g;

    .line 187
    iget p1, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:I

    const/4 p4, -0x1

    if-eq p1, p4, :cond_0

    .line 188
    iget p1, p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:I

    .line 2119
    iput p1, p2, Landroidx/constraintlayout/a/a/g;->aW:I

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/constraintlayout/helper/widget/Flow;->a(Landroidx/constraintlayout/a/a/l;II)V

    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .locals 1

    .line 420
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    .line 13146
    iput p1, v0, Landroidx/constraintlayout/a/a/g;->aM:F

    .line 421
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 1

    .line 400
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    .line 13122
    iput p1, v0, Landroidx/constraintlayout/a/a/g;->c:I

    .line 401
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 1

    .line 430
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    .line 13148
    iput p1, v0, Landroidx/constraintlayout/a/a/g;->aN:F

    .line 431
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 1

    .line 410
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    .line 13124
    iput p1, v0, Landroidx/constraintlayout/a/a/g;->d:I

    .line 411
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 1

    .line 445
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    .line 13155
    iput p1, v0, Landroidx/constraintlayout/a/a/g;->aS:I

    .line 446
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 1

    .line 380
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    .line 12139
    iput p1, v0, Landroidx/constraintlayout/a/a/g;->aK:F

    .line 381
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 1

    .line 471
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    .line 13166
    iput p1, v0, Landroidx/constraintlayout/a/a/g;->aQ:I

    .line 472
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 1

    .line 356
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    .line 12131
    iput p1, v0, Landroidx/constraintlayout/a/a/g;->a:I

    .line 357
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 1

    .line 491
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    .line 13170
    iput p1, v0, Landroidx/constraintlayout/a/a/g;->aV:I

    .line 492
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 278
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    .line 10119
    iput p1, v0, Landroidx/constraintlayout/a/a/g;->aW:I

    .line 279
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setPadding(I)V
    .locals 1

    .line 288
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/a/a/g;->p(I)V

    .line 289
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 1

    .line 328
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    .line 11093
    iput p1, v0, Landroidx/constraintlayout/a/a/l;->ba:I

    .line 329
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 1

    .line 298
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/a/a/g;->q(I)V

    .line 299
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 1

    .line 318
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/a/a/g;->r(I)V

    .line 319
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 1

    .line 308
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    .line 11084
    iput p1, v0, Landroidx/constraintlayout/a/a/l;->aZ:I

    .line 309
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 1

    .line 461
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    .line 13159
    iput p1, v0, Landroidx/constraintlayout/a/a/g;->aT:I

    .line 462
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setVerticalBias(F)V
    .locals 1

    .line 390
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    .line 12143
    iput p1, v0, Landroidx/constraintlayout/a/a/g;->aL:F

    .line 391
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setVerticalGap(I)V
    .locals 1

    .line 481
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    .line 13168
    iput p1, v0, Landroidx/constraintlayout/a/a/g;->aR:I

    .line 482
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 1

    .line 370
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    .line 12135
    iput p1, v0, Landroidx/constraintlayout/a/a/g;->b:I

    .line 371
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method

.method public setWrapMode(I)V
    .locals 1

    .line 342
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->a:Landroidx/constraintlayout/a/a/g;

    .line 11163
    iput p1, v0, Landroidx/constraintlayout/a/a/g;->aU:I

    .line 343
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Flow;->requestLayout()V

    return-void
.end method
