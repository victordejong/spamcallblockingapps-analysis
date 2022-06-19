.class Lcom/callapp/contacts/activity/favorites/DragListView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/favorites/DragItemAdapter$DragStartCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/favorites/DragListView;->setAdapter(Lcom/callapp/contacts/activity/favorites/DragItemAdapter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/favorites/DragListView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/favorites/DragListView;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragListView$3;->a:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;J)Z
    .locals 9

    .line 198
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView$3;->a:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/favorites/DragListView;->e(Lcom/callapp/contacts/activity/favorites/DragListView;)Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/DragListView$3;->a:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-static {v1}, Lcom/callapp/contacts/activity/favorites/DragListView;->c(Lcom/callapp/contacts/activity/favorites/DragListView;)F

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/favorites/DragListView$3;->a:Lcom/callapp/contacts/activity/favorites/DragListView;

    invoke-static {v2}, Lcom/callapp/contacts/activity/favorites/DragListView;->d(Lcom/callapp/contacts/activity/favorites/DragListView;)F

    move-result v2

    .line 1372
    iget-object v3, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    invoke-virtual {v3, p2, p3}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->a(J)I

    move-result v3

    .line 1373
    iget-boolean v4, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ac:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    iget-boolean v4, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->aa:Z

    if-eqz v4, :cond_0

    if-eqz v3, :cond_5

    :cond_0
    iget-boolean v4, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ab:Z

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    .line 1374
    invoke-virtual {v4}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v6

    if-ne v3, v4, :cond_1

    goto/16 :goto_1

    .line 1378
    :cond_1
    iget-object v4, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->R:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemCallback;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->R:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemCallback;

    invoke-interface {v4, v3}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemCallback;->a(I)Z

    move-result v4

    if-nez v4, :cond_2

    return v5

    .line 1383
    :cond_2
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1384
    sget-object v4, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;->DRAG_STARTED:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

    iput-object v4, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->S:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

    .line 1385
    iput-wide p2, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->V:J

    .line 1386
    iget-object p2, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->U:Lcom/callapp/contacts/activity/favorites/DragItem;

    .line 3101
    iget-object p3, p2, Lcom/callapp/contacts/activity/favorites/DragItem;->a:Landroid/view/View;

    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2115
    iput-object p1, p2, Lcom/callapp/contacts/activity/favorites/DragItem;->b:Landroid/view/View;

    .line 2116
    iget-object p3, p2, Lcom/callapp/contacts/activity/favorites/DragItem;->a:Landroid/view/View;

    .line 4057
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 4058
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4059
    invoke-virtual {p1, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4060
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p3, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2117
    iget-object p3, p2, Lcom/callapp/contacts/activity/favorites/DragItem;->a:Landroid/view/View;

    .line 4064
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-direct {v4, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4065
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 4066
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 4067
    invoke-virtual {p3, v4, v7}, Landroid/view/View;->measure(II)V

    .line 2120
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p3

    iget-object v4, p2, Lcom/callapp/contacts/activity/favorites/DragItem;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v4, v7

    const/4 v7, 0x2

    div-int/2addr v4, v7

    int-to-float v4, v4

    sub-float/2addr p3, v4

    iget-object v4, p2, Lcom/callapp/contacts/activity/favorites/DragItem;->a:Landroid/view/View;

    .line 2121
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v7

    int-to-float v4, v4

    add-float/2addr p3, v4

    .line 2122
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v8, p2, Lcom/callapp/contacts/activity/favorites/DragItem;->a:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v8, p1

    div-int/2addr v8, v7

    int-to-float p1, v8

    sub-float/2addr v4, p1

    iget-object p1, p2, Lcom/callapp/contacts/activity/favorites/DragItem;->a:Landroid/view/View;

    .line 2123
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    div-int/2addr p1, v7

    int-to-float p1, p1

    add-float/2addr v4, p1

    .line 2125
    iget-boolean p1, p2, Lcom/callapp/contacts/activity/favorites/DragItem;->i:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 2126
    iput p1, p2, Lcom/callapp/contacts/activity/favorites/DragItem;->e:F

    .line 2127
    iput p1, p2, Lcom/callapp/contacts/activity/favorites/DragItem;->f:F

    .line 2128
    invoke-virtual {p2, v1, v2}, Lcom/callapp/contacts/activity/favorites/DragItem;->a(FF)V

    sub-float/2addr p3, v1

    .line 2129
    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/favorites/DragItem;->setAnimationDx(F)V

    sub-float/2addr v4, v2

    .line 2130
    invoke-virtual {p2, v4}, Lcom/callapp/contacts/activity/favorites/DragItem;->setAnimationDY(F)V

    new-array p3, v7, [F

    .line 2132
    iget v1, p2, Lcom/callapp/contacts/activity/favorites/DragItem;->g:F

    aput v1, p3, v5

    aput p1, p3, v6

    const-string v1, "AnimationDx"

    invoke-static {v1, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    new-array v1, v7, [F

    .line 2133
    iget v2, p2, Lcom/callapp/contacts/activity/favorites/DragItem;->h:F

    aput v2, v1, v5

    aput p1, v1, v6

    const-string p1, "AnimationDY"

    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v1, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object p3, v1, v5

    aput-object p1, v1, v6

    .line 2134
    invoke-static {p2, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 2135
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0xfa

    .line 2136
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2137
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_3
    sub-float/2addr p3, v1

    .line 2139
    iput p3, p2, Lcom/callapp/contacts/activity/favorites/DragItem;->e:F

    sub-float/2addr v4, v2

    .line 2140
    iput v4, p2, Lcom/callapp/contacts/activity/favorites/DragItem;->f:F

    .line 2141
    invoke-virtual {p2, v1, v2}, Lcom/callapp/contacts/activity/favorites/DragItem;->a(FF)V

    .line 1387
    :goto_0
    iput v3, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->W:I

    .line 1388
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->i()V

    .line 1390
    iget-object p1, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    iget-wide p2, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->V:J

    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->setDragItemId(J)V

    .line 1391
    iget-object p1, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->notifyDataSetChanged()V

    .line 1392
    iget-object p1, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->Q:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemListener;

    if-eqz p1, :cond_4

    .line 1393
    iget-object p1, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->Q:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemListener;

    iget p2, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->W:I

    iget-object p3, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->U:Lcom/callapp/contacts/activity/favorites/DragItem;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/favorites/DragItem;->getX()F

    iget-object p3, v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->U:Lcom/callapp/contacts/activity/favorites/DragItem;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/favorites/DragItem;->getY()F

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemListener;->a(I)V

    .line 1396
    :cond_4
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->invalidate()V

    return v6

    :cond_5
    :goto_1
    return v5
.end method
