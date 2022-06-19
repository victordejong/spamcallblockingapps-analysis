.class final Lorg/mistergroup/shouldianswer/ui/main/a/a$e;
.super Ljava/lang/Object;
.source "ContactsFragment.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/a/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

.field final synthetic b:F

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/main/a/a$h;

.field final synthetic d:I


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/a/a;FLorg/mistergroup/shouldianswer/ui/main/a/a$h;I)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    iput p2, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->b:F

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->c:Lorg/mistergroup/shouldianswer/ui/main/a/a$h;

    iput p4, p0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "view1"

    move-object/from16 v2, p1

    .line 126
    invoke-static {v2, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const-string v3, "motionEvent"

    move-object/from16 v4, p2

    .line 127
    invoke-static {v4, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    const/high16 v8, 0x43b40000    # 360.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v10, 0x6

    const/high16 v11, 0x40c00000    # 6.0f

    const/16 v12, 0x1a

    const-string v14, "textView"

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v5, :cond_3

    if-eq v3, v15, :cond_0

    const/4 v1, 0x3

    if-eq v3, v1, :cond_3

    goto/16 :goto_5

    .line 171
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v3, v12

    int-to-float v4, v1

    div-float v12, v2, v4

    mul-float/2addr v3, v12

    .line 173
    div-int/2addr v1, v15

    int-to-float v1, v1

    sub-float/2addr v2, v1

    div-float/2addr v2, v4

    .line 174
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->b(Lorg/mistergroup/shouldianswer/ui/main/a/a;)Lorg/mistergroup/shouldianswer/components/a/e;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/mistergroup/shouldianswer/components/a/e;->a(F)I

    move-result v1

    .line 175
    iget-object v4, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-static {v4}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Lorg/mistergroup/shouldianswer/ui/main/a/a;)I

    move-result v4

    if-eq v1, v4, :cond_1

    .line 176
    iget-object v4, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-static {v4, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Lorg/mistergroup/shouldianswer/ui/main/a/a;I)V

    .line 177
    iget-object v4, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->c:Lorg/mistergroup/shouldianswer/ui/main/a/a$h;

    invoke-virtual {v4, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a$h;->c(I)V

    .line 178
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->c(Lorg/mistergroup/shouldianswer/ui/main/a/a;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    iget-object v4, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->c:Lorg/mistergroup/shouldianswer/ui/main/a/a$h;

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 181
    :cond_1
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->d(Lorg/mistergroup/shouldianswer/ui/main/a/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    int-to-float v13, v4

    sub-float v13, v3, v13

    .line 182
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 183
    invoke-static {v13, v11}, Ljava/lang/Math;->min(FF)F

    move-result v13

    int-to-float v11, v10

    div-float/2addr v13, v11

    int-to-float v11, v5

    cmpg-float v18, v13, v11

    if-gez v18, :cond_2

    sub-float v13, v11, v13

    mul-float/2addr v13, v9

    div-float/2addr v13, v8

    float-to-double v8, v13

    mul-double/2addr v8, v6

    .line 185
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    double-to-float v8, v8

    int-to-float v9, v15

    mul-float/2addr v9, v8

    add-float/2addr v11, v9

    const/16 v9, 0xff

    int-to-float v13, v9

    mul-float/2addr v13, v8

    const/high16 v16, 0x3fc00000    # 1.5f

    mul-float v13, v13, v16

    .line 187
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    move-result v13

    shl-int/lit8 v9, v13, 0x18

    .line 188
    iget v13, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->d:I

    add-int/2addr v9, v13

    invoke-virtual {v12, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundColor(I)V

    .line 189
    invoke-static {v12, v14}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v9, -0x3cfe0000    # -130.0f

    iget v13, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->b:F

    mul-float/2addr v13, v9

    mul-float/2addr v13, v8

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTranslationX(F)V

    const/high16 v8, -0x3e100000    # -30.0f

    .line 190
    iget v9, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->b:F

    mul-float/2addr v9, v8

    mul-float/2addr v9, v2

    invoke-virtual {v12, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTranslationY(F)V

    .line 191
    invoke-virtual {v12, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setScaleX(F)V

    .line 192
    invoke-virtual {v12, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setScaleY(F)V

    const/4 v8, 0x5

    int-to-float v8, v8

    mul-float/2addr v11, v8

    .line 193
    invoke-virtual {v12, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTranslationZ(F)V

    goto :goto_1

    .line 195
    :cond_2
    invoke-static {v12, v14}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v12, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTranslationX(F)V

    .line 196
    invoke-virtual {v12, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTranslationY(F)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 197
    invoke-virtual {v12, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setScaleX(F)V

    .line 198
    invoke-virtual {v12, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setScaleY(F)V

    const/4 v9, 0x0

    .line 199
    invoke-virtual {v12, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundColor(I)V

    .line 200
    invoke-virtual {v12, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTranslationZ(F)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    const/high16 v8, 0x43b40000    # 360.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/high16 v11, 0x40c00000    # 6.0f

    goto/16 :goto_0

    .line 205
    :cond_3
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->d(Lorg/mistergroup/shouldianswer/ui/main/a/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 206
    invoke-static {v2, v14}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTranslationX(F)V

    .line 207
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTranslationY(F)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 208
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setScaleX(F)V

    .line 209
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setScaleY(F)V

    const/4 v4, 0x0

    .line 210
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundColor(I)V

    .line 211
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTranslationZ(F)V

    goto :goto_2

    .line 129
    :cond_4
    iget-object v3, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    const/4 v8, -0x1

    invoke-static {v3, v8}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Lorg/mistergroup/shouldianswer/ui/main/a/a;I)V

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    const/16 v3, 0x1e

    int-to-float v3, v3

    iget v8, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->b:F

    mul-float/2addr v3, v8

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    const/4 v2, 0x0

    return v2

    .line 132
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v3, v12

    int-to-float v4, v1

    div-float v8, v2, v4

    mul-float/2addr v3, v8

    .line 135
    div-int/2addr v1, v15

    int-to-float v1, v1

    sub-float/2addr v2, v1

    div-float/2addr v2, v4

    .line 138
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->b(Lorg/mistergroup/shouldianswer/ui/main/a/a;)Lorg/mistergroup/shouldianswer/components/a/e;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/mistergroup/shouldianswer/components/a/e;->a(F)I

    move-result v1

    .line 139
    iget-object v4, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-static {v4}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Lorg/mistergroup/shouldianswer/ui/main/a/a;)I

    move-result v4

    if-eq v1, v4, :cond_6

    .line 140
    iget-object v4, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-static {v4, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->a(Lorg/mistergroup/shouldianswer/ui/main/a/a;I)V

    .line 141
    iget-object v4, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->c:Lorg/mistergroup/shouldianswer/ui/main/a/a$h;

    invoke-virtual {v4, v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a$h;->c(I)V

    .line 142
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->c(Lorg/mistergroup/shouldianswer/ui/main/a/a;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    iget-object v4, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->c:Lorg/mistergroup/shouldianswer/ui/main/a/a$h;

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 146
    :cond_6
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->a:Lorg/mistergroup/shouldianswer/ui/main/a/a;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/main/a/a;->d(Lorg/mistergroup/shouldianswer/ui/main/a/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    int-to-float v9, v4

    sub-float v9, v3, v9

    .line 147
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v11, 0x40c00000    # 6.0f

    .line 148
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    int-to-float v12, v10

    div-float/2addr v9, v12

    int-to-float v12, v5

    cmpg-float v13, v9, v12

    if-gez v13, :cond_7

    sub-float v9, v12, v9

    const/high16 v13, 0x42b40000    # 90.0f

    mul-float/2addr v9, v13

    const/high16 v17, 0x43b40000    # 360.0f

    div-float v9, v9, v17

    float-to-double v10, v9

    mul-double/2addr v10, v6

    .line 150
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    double-to-float v9, v9

    int-to-float v10, v15

    mul-float/2addr v10, v9

    add-float/2addr v12, v10

    const/16 v10, 0xff

    int-to-float v11, v10

    mul-float/2addr v11, v9

    const/high16 v16, 0x3fc00000    # 1.5f

    mul-float v11, v11, v16

    .line 152
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    shl-int/lit8 v11, v11, 0x18

    .line 153
    iget v6, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->d:I

    add-int/2addr v11, v6

    invoke-virtual {v8, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundColor(I)V

    .line 154
    invoke-static {v8, v14}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v6, -0x3cfe0000    # -130.0f

    iget v7, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->b:F

    mul-float/2addr v7, v6

    mul-float/2addr v7, v9

    invoke-virtual {v8, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTranslationX(F)V

    const/high16 v6, -0x3e100000    # -30.0f

    .line 155
    iget v7, v0, Lorg/mistergroup/shouldianswer/ui/main/a/a$e;->b:F

    mul-float/2addr v7, v6

    mul-float/2addr v7, v2

    invoke-virtual {v8, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTranslationY(F)V

    .line 156
    invoke-virtual {v8, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setScaleX(F)V

    .line 157
    invoke-virtual {v8, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setScaleY(F)V

    const/4 v6, 0x5

    int-to-float v6, v6

    mul-float/2addr v12, v6

    .line 158
    invoke-virtual {v8, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTranslationZ(F)V

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    goto :goto_4

    :cond_7
    const/16 v10, 0xff

    const/high16 v13, 0x42b40000    # 90.0f

    const/high16 v16, 0x3fc00000    # 1.5f

    const/high16 v17, 0x43b40000    # 360.0f

    .line 160
    invoke-static {v8, v14}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTranslationX(F)V

    .line 161
    invoke-virtual {v8, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTranslationY(F)V

    const/high16 v7, 0x3f800000    # 1.0f

    .line 162
    invoke-virtual {v8, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setScaleX(F)V

    .line 163
    invoke-virtual {v8, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setScaleY(F)V

    const/4 v9, 0x0

    .line 164
    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundColor(I)V

    .line 165
    invoke-virtual {v8, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTranslationZ(F)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    const/4 v10, 0x6

    goto/16 :goto_3

    :cond_8
    :goto_5
    return v5
.end method
