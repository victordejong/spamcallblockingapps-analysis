.class public Ld2/j0;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ld2/r3;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ld2/f3;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ld2/x3;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ld2/b3;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ld2/c4;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Z

.field public o:F

.field public p:D

.field public q:I

.field public r:I

.field public s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld2/y0;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Landroid/support/v4/media/a;

.field public y:Landroid/content/Context;

.field public z:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ld2/j0;->o:F

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Ld2/j0;->p:D

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ld2/j0;->q:I

    .line 5
    iput v0, p0, Ld2/j0;->r:I

    .line 6
    iput-object p1, p0, Ld2/j0;->y:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Ld2/j0;->l:Ljava/lang/String;

    const/high16 p1, -0x1000000

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;La7/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/j0;->x:Landroid/support/v4/media/a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/media/a;->f(Landroid/view/View;La7/e;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public b(Ld2/t0;)Z
    .locals 2

    .line 1
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v0, "container_id"

    .line 2
    invoke-static {p1, v0}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Ld2/j0;->j:I

    if-ne v0, v1, :cond_0

    const-string v0, "ad_session_id"

    .line 3
    invoke-virtual {p1, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Ld2/j0;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    if-eq v2, v7, :cond_0

    if-eq v2, v5, :cond_0

    if-eq v2, v6, :cond_0

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    const/4 v1, 0x0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v8

    .line 3
    invoke-virtual {v8}, Ld2/f1;->l()Ld2/k0;

    move-result-object v9

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    .line 6
    new-instance v12, Ld2/f4;

    invoke-direct {v12}, Ld2/f4;-><init>()V

    const/4 v13, -0x1

    const-string v14, "view_id"

    .line 7
    invoke-static {v12, v14, v13}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 8
    iget-object v13, v0, Ld2/j0;->l:Ljava/lang/String;

    const-string v14, "ad_session_id"

    invoke-static {v12, v14, v13}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v13, "container_x"

    .line 9
    invoke-static {v12, v13, v10}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v14, "container_y"

    .line 10
    invoke-static {v12, v14, v11}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v15, "view_x"

    .line 11
    invoke-static {v12, v15, v10}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v10, "view_y"

    .line 12
    invoke-static {v12, v10, v11}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 13
    iget v11, v0, Ld2/j0;->j:I

    const-string v3, "id"

    invoke-static {v12, v3, v11}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v3, "AdContainer.on_touch_began"

    if-eqz v2, :cond_8

    const-string v11, "AdContainer.on_touch_ended"

    if-eq v2, v7, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_4

    const v5, 0xff00

    if-eq v2, v4, :cond_3

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1

    goto/16 :goto_0

    .line 14
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x8

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v12, v13, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v12, v14, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v12, v15, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v12, v10, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    const-string v4, "x"

    invoke-static {v12, v4, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 20
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "y"

    invoke-static {v12, v2, v1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 21
    iget-boolean v1, v0, Ld2/j0;->u:Z

    if-nez v1, :cond_2

    .line 22
    iget-object v1, v9, Ld2/k0;->f:Ljava/util/Map;

    .line 23
    iget-object v2, v0, Ld2/j0;->l:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/j;

    .line 24
    iput-object v1, v8, Ld2/f1;->n:Ld2/j;

    .line 25
    :cond_2
    new-instance v1, Ld2/t0;

    iget v2, v0, Ld2/j0;->k:I

    invoke-direct {v1, v11, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x8

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v12, v13, v4}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 28
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v12, v14, v4}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 29
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v12, v15, v4}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 30
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v12, v10, v1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 31
    new-instance v1, Ld2/t0;

    iget v2, v0, Ld2/j0;->k:I

    invoke-direct {v1, v3, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_0

    .line 32
    :cond_4
    new-instance v1, Ld2/t0;

    iget v2, v0, Ld2/j0;->k:I

    const-string v3, "AdContainer.on_touch_cancelled"

    invoke-direct {v1, v3, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_0

    .line 33
    :cond_5
    new-instance v1, Ld2/t0;

    iget v2, v0, Ld2/j0;->k:I

    const-string v3, "AdContainer.on_touch_moved"

    invoke-direct {v1, v3, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_0

    .line 34
    :cond_6
    iget-boolean v1, v0, Ld2/j0;->u:Z

    if-nez v1, :cond_7

    .line 35
    iget-object v1, v9, Ld2/k0;->f:Ljava/util/Map;

    .line 36
    iget-object v2, v0, Ld2/j0;->l:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/j;

    .line 37
    iput-object v1, v8, Ld2/f1;->n:Ld2/j;

    .line 38
    :cond_7
    new-instance v1, Ld2/t0;

    iget v2, v0, Ld2/j0;->k:I

    invoke-direct {v1, v11, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_0

    .line 39
    :cond_8
    new-instance v1, Ld2/t0;

    iget v2, v0, Ld2/j0;->k:I

    invoke-direct {v1, v3, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    :goto_0
    return v7
.end method
