.class Lcom/google/android/material/datepicker/h$5;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/h;->av()Landroidx/recyclerview/widget/RecyclerView$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/h;

.field private final b:Ljava/util/Calendar;

.field private final c:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/h;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/android/material/datepicker/h$5;->a:Lcom/google/android/material/datepicker/h;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    .line 233
    invoke-static {}, Lcom/google/android/material/datepicker/r;->b()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/h$5;->b:Ljava/util/Calendar;

    .line 234
    invoke-static {}, Lcom/google/android/material/datepicker/r;->b()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/h$5;->c:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 14

    .prologue
    .line 239
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/datepicker/s;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v0, :cond_1

    .line 277
    :cond_0
    return-void

    .line 243
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/datepicker/s;

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 246
    iget-object v0, p0, Lcom/google/android/material/datepicker/h$5;->a:Lcom/google/android/material/datepicker/h;

    invoke-static {v0}, Lcom/google/android/material/datepicker/h;->c(Lcom/google/android/material/datepicker/h;)Lcom/google/android/material/datepicker/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/material/datepicker/d;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/g/d;

    .line 247
    iget-object v1, v0, Landroidx/core/g/d;->a:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/core/g/d;->b:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 250
    iget-object v2, p0, Lcom/google/android/material/datepicker/h$5;->b:Ljava/util/Calendar;

    iget-object v1, v0, Landroidx/core/g/d;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 251
    iget-object v1, p0, Lcom/google/android/material/datepicker/h$5;->c:Ljava/util/Calendar;

    iget-object v0, v0, Landroidx/core/g/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 253
    iget-object v0, p0, Lcom/google/android/material/datepicker/h$5;->b:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/android/material/datepicker/s;->e(I)I

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/google/android/material/datepicker/h$5;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/google/android/material/datepicker/s;->e(I)I

    move-result v1

    .line 255
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v11

    .line 256
    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v12

    .line 258
    invoke-virtual {v7}, Landroidx/recyclerview/widget/GridLayoutManager;->b()I

    move-result v2

    div-int v9, v0, v2

    .line 259
    invoke-virtual {v7}, Landroidx/recyclerview/widget/GridLayoutManager;->b()I

    move-result v0

    div-int v13, v1, v0

    move v8, v9

    .line 261
    :goto_0
    if-gt v8, v13, :cond_2

    .line 262
    invoke-virtual {v7}, Landroidx/recyclerview/widget/GridLayoutManager;->b()I

    move-result v0

    mul-int/2addr v0, v8

    .line 263
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 264
    if-nez v0, :cond_3

    .line 261
    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 267
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/datepicker/h$5;->a:Lcom/google/android/material/datepicker/h;

    invoke-static {v2}, Lcom/google/android/material/datepicker/h;->e(Lcom/google/android/material/datepicker/h;)Lcom/google/android/material/datepicker/c;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/material/datepicker/c;->d:Lcom/google/android/material/datepicker/b;

    invoke-virtual {v2}, Lcom/google/android/material/datepicker/b;->a()I

    move-result v2

    add-int/2addr v2, v1

    .line 268
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/h$5;->a:Lcom/google/android/material/datepicker/h;

    invoke-static {v1}, Lcom/google/android/material/datepicker/h;->e(Lcom/google/android/material/datepicker/h;)Lcom/google/android/material/datepicker/c;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/datepicker/c;->d:Lcom/google/android/material/datepicker/b;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/b;->b()I

    move-result v1

    sub-int v4, v0, v1

    .line 269
    if-ne v8, v9, :cond_4

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    move v1, v0

    .line 270
    :goto_2
    if-ne v8, v13, :cond_5

    .line 272
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 274
    :goto_3
    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v0

    int-to-float v4, v4

    iget-object v0, p0, Lcom/google/android/material/datepicker/h$5;->a:Lcom/google/android/material/datepicker/h;

    invoke-static {v0}, Lcom/google/android/material/datepicker/h;->e(Lcom/google/android/material/datepicker/h;)Lcom/google/android/material/datepicker/c;

    move-result-object v0

    iget-object v5, v0, Lcom/google/android/material/datepicker/c;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 269
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    .line 273
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    goto :goto_3
.end method
