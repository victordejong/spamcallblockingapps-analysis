.class final Lcom/google/android/material/datepicker/MaterialCalendarGridView;
.super Landroid/widget/GridView;
.source "MaterialCalendarGridView.java"


# instance fields
.field private final a:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-static {}, Lcom/google/android/material/datepicker/r;->b()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a:Ljava/util/Calendar;

    .line 50
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/i;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget v0, Lcom/google/android/material/a$f;->cancel_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNextFocusLeftId(I)V

    .line 52
    sget v0, Lcom/google/android/material/a$f;->confirm_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNextFocusRightId(I)V

    .line 54
    :cond_0
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView$1;-><init>(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    .line 65
    return-void
.end method

.method private static a(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private a(ILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 190
    const/16 v0, 0x21

    if-ne p1, v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/m;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 197
    :goto_0
    return-void

    .line 192
    :cond_0
    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/m;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    goto :goto_0

    .line 195
    :cond_1
    const/4 v0, 0x1

    invoke-super {p0, v0, p1, p2}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 204
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/google/android/material/datepicker/m;
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/m;

    return-object v0
.end method

.method public synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/m;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/m;->notifyDataSetChanged()V

    .line 71
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    .prologue
    .line 119
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/m;

    move-result-object v13

    .line 121
    iget-object v2, v13, Lcom/google/android/material/datepicker/m;->c:Lcom/google/android/material/datepicker/d;

    .line 122
    iget-object v14, v13, Lcom/google/android/material/datepicker/m;->d:Lcom/google/android/material/datepicker/c;

    .line 123
    invoke-virtual {v13}, Lcom/google/android/material/datepicker/m;->a()I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/google/android/material/datepicker/m;->a(I)Ljava/lang/Long;

    move-result-object v15

    .line 124
    invoke-virtual {v13}, Lcom/google/android/material/datepicker/m;->b()I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/google/android/material/datepicker/m;->a(I)Ljava/lang/Long;

    move-result-object v16

    .line 126
    invoke-interface {v2}, Lcom/google/android/material/datepicker/d;->d()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/g/d;

    .line 127
    iget-object v3, v2, Landroidx/core/g/d;->a:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroidx/core/g/d;->b:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, v2, Landroidx/core/g/d;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 131
    iget-object v2, v2, Landroidx/core/g/d;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 133
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2, v3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    :cond_1
    return-void

    .line 139
    :cond_2
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_4

    .line 140
    invoke-virtual {v13}, Lcom/google/android/material/datepicker/m;->a()I

    move-result v3

    .line 142
    invoke-virtual {v13, v3}, Lcom/google/android/material/datepicker/m;->e(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    move v8, v2

    move v9, v3

    .line 153
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-lez v2, :cond_6

    .line 154
    invoke-virtual {v13}, Lcom/google/android/material/datepicker/m;->b()I

    move-result v3

    .line 156
    invoke-virtual {v13, v3}, Lcom/google/android/material/datepicker/m;->f(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getWidth()I

    move-result v2

    :goto_2
    move v10, v2

    move v11, v3

    .line 165
    :goto_3
    invoke-virtual {v13, v9}, Lcom/google/android/material/datepicker/m;->getItemId(I)J

    move-result-wide v2

    long-to-int v2, v2

    .line 166
    invoke-virtual {v13, v11}, Lcom/google/android/material/datepicker/m;->getItemId(I)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v18, v0

    move v12, v2

    .line 167
    :goto_4
    move/from16 v0, v18

    if-gt v12, v0, :cond_0

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getNumColumns()I

    move-result v2

    mul-int/2addr v2, v12

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getNumColumns()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v4, v3, -0x1

    .line 170
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 171
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, v14, Lcom/google/android/material/datepicker/c;->a:Lcom/google/android/material/datepicker/b;

    invoke-virtual {v6}, Lcom/google/android/material/datepicker/b;->a()I

    move-result v6

    add-int/2addr v5, v6

    .line 172
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v6, v14, Lcom/google/android/material/datepicker/c;->a:Lcom/google/android/material/datepicker/b;

    invoke-virtual {v6}, Lcom/google/android/material/datepicker/b;->b()I

    move-result v6

    sub-int v6, v3, v6

    .line 173
    if-le v2, v9, :cond_7

    const/4 v2, 0x0

    move v3, v2

    .line 174
    :goto_5
    if-le v11, v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getWidth()I

    move-result v2

    .line 175
    :goto_6
    int-to-float v3, v3

    int-to-float v4, v5

    int-to-float v5, v2

    int-to-float v6, v6

    iget-object v7, v14, Lcom/google/android/material/datepicker/c;->h:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 167
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_4

    .line 142
    :cond_3
    add-int/lit8 v2, v3, -0x1

    .line 144
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    goto :goto_0

    .line 146
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a:Ljava/util/Calendar;

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/android/material/datepicker/m;->c(I)I

    move-result v3

    .line 148
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a(Landroid/view/View;)I

    move-result v2

    move v8, v2

    move v9, v3

    goto/16 :goto_1

    .line 158
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    goto/16 :goto_2

    .line 160
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a:Ljava/util/Calendar;

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/android/material/datepicker/m;->c(I)I

    move-result v3

    .line 162
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a(Landroid/view/View;)I

    move-result v2

    move v10, v2

    move v11, v3

    goto/16 :goto_3

    :cond_7
    move v3, v8

    .line 173
    goto :goto_5

    :cond_8
    move v2, v10

    .line 174
    goto :goto_6
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a(ILandroid/graphics/Rect;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 84
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 85
    if-nez v2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/datepicker/m;->a()I

    move-result v3

    if-lt v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 90
    goto :goto_0

    .line 92
    :cond_3
    const/16 v2, 0x13

    if-ne v2, p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/m;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    move v0, v1

    .line 94
    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5

    .prologue
    .line 107
    instance-of v0, p1, Lcom/google/android/material/datepicker/m;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "%1$s must have its Adapter set to a %2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 111
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/google/android/material/datepicker/m;

    .line 112
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 109
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/m;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/m;->a()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0
.end method
