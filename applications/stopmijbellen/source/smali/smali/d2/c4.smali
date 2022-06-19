.class public Ld2/c4;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ld2/t0;

.field public l:Ld2/j0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld2/t0;ILd2/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    iput p3, p0, Ld2/c4;->a:I

    .line 3
    iput-object p2, p0, Ld2/c4;->k:Ld2/t0;

    .line 4
    iput-object p4, p0, Ld2/c4;->l:Ld2/j0;

    return-void
.end method

.method public static a(Ld2/c4;Ld2/t0;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v0, "id"

    .line 3
    invoke-static {p1, v0}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Ld2/c4;->a:I

    if-ne v0, v1, :cond_0

    const-string v0, "container_id"

    .line 4
    invoke-static {p1, v0}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Ld2/c4;->l:Ld2/j0;

    .line 5
    iget v1, v1, Ld2/j0;->j:I

    if-ne v0, v1, :cond_0

    const-string v0, "ad_session_id"

    .line 6
    invoke-virtual {p1, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p0, p0, Ld2/c4;->l:Ld2/j0;

    .line 8
    iget-object p0, p0, Ld2/j0;->l:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ld2/f1;->l()Ld2/k0;

    move-result-object v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v4, :cond_0

    if-eq v4, v9, :cond_0

    if-eq v4, v7, :cond_0

    if-eq v4, v8, :cond_0

    if-eq v4, v6, :cond_0

    if-eq v4, v5, :cond_0

    const/4 v1, 0x0

    return v1

    .line 4
    :cond_0
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

    .line 7
    iget v13, v0, Ld2/c4;->a:I

    const-string v14, "view_id"

    invoke-static {v12, v14, v13}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 8
    iget-object v13, v0, Ld2/c4;->j:Ljava/lang/String;

    const-string v14, "ad_session_id"

    invoke-static {v12, v14, v13}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    iget v13, v0, Ld2/c4;->b:I

    add-int/2addr v13, v10

    const-string v14, "container_x"

    invoke-static {v12, v14, v13}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 10
    iget v13, v0, Ld2/c4;->c:I

    add-int/2addr v13, v11

    const-string v15, "container_y"

    invoke-static {v12, v15, v13}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v13, "view_x"

    .line 11
    invoke-static {v12, v13, v10}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v5, "view_y"

    .line 12
    invoke-static {v12, v5, v11}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 13
    iget-object v6, v0, Ld2/c4;->l:Ld2/j0;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    move-result v6

    const-string v7, "id"

    invoke-static {v12, v7, v6}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v6, "AdContainer.on_touch_began"

    if-eqz v4, :cond_a

    const-string v7, "AdContainer.on_touch_ended"

    move/from16 v16, v11

    const-string v11, "AdContainer.on_touch_cancelled"

    if-eq v4, v9, :cond_7

    if-eq v4, v8, :cond_6

    const/4 v8, 0x3

    if-eq v4, v8, :cond_5

    const v8, 0xff00

    const/4 v10, 0x5

    if-eq v4, v10, :cond_4

    const/4 v10, 0x6

    if-eq v4, v10, :cond_1

    goto/16 :goto_0

    .line 14
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/2addr v4, v8

    shr-int/lit8 v4, v4, 0x8

    .line 15
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    .line 16
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    .line 17
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v10, v10

    iget v9, v0, Ld2/c4;->b:I

    add-int/2addr v10, v9

    invoke-static {v12, v14, v10}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 18
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    iget v10, v0, Ld2/c4;->c:I

    add-int/2addr v9, v10

    invoke-static {v12, v15, v9}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 19
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v12, v13, v9}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 20
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v12, v5, v1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 21
    iget-object v1, v0, Ld2/c4;->l:Ld2/j0;

    .line 22
    iget-boolean v1, v1, Ld2/j0;->u:Z

    if-nez v1, :cond_2

    .line 23
    iget-object v1, v3, Ld2/k0;->f:Ljava/util/Map;

    .line 24
    iget-object v3, v0, Ld2/c4;->j:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/j;

    .line 25
    iput-object v1, v2, Ld2/f1;->n:Ld2/j;

    :cond_2
    if-lez v6, :cond_3

    .line 26
    iget v1, v0, Ld2/c4;->d:I

    if-ge v6, v1, :cond_3

    if-lez v8, :cond_3

    iget v1, v0, Ld2/c4;->e:I

    if-ge v8, v1, :cond_3

    .line 27
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/c4;->l:Ld2/j0;

    .line 28
    iget v2, v2, Ld2/j0;->k:I

    .line 29
    invoke-direct {v1, v7, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto/16 :goto_0

    .line 30
    :cond_3
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/c4;->l:Ld2/j0;

    .line 31
    iget v2, v2, Ld2/j0;->k:I

    .line 32
    invoke-direct {v1, v11, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto/16 :goto_0

    .line 33
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/2addr v2, v8

    shr-int/lit8 v2, v2, 0x8

    .line 34
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, v0, Ld2/c4;->b:I

    add-int/2addr v3, v4

    invoke-static {v12, v14, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 35
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, v0, Ld2/c4;->c:I

    add-int/2addr v3, v4

    invoke-static {v12, v15, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 36
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v12, v13, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 37
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v12, v5, v1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 38
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/c4;->l:Ld2/j0;

    .line 39
    iget v2, v2, Ld2/j0;->k:I

    .line 40
    invoke-direct {v1, v6, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_0

    .line 41
    :cond_5
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/c4;->l:Ld2/j0;

    .line 42
    iget v2, v2, Ld2/j0;->k:I

    .line 43
    invoke-direct {v1, v11, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_0

    .line 44
    :cond_6
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/c4;->l:Ld2/j0;

    .line 45
    iget v2, v2, Ld2/j0;->k:I

    const-string v3, "AdContainer.on_touch_moved"

    .line 46
    invoke-direct {v1, v3, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_0

    .line 47
    :cond_7
    iget-object v1, v0, Ld2/c4;->l:Ld2/j0;

    .line 48
    iget-boolean v1, v1, Ld2/j0;->u:Z

    if-nez v1, :cond_8

    .line 49
    iget-object v1, v3, Ld2/k0;->f:Ljava/util/Map;

    .line 50
    iget-object v3, v0, Ld2/c4;->j:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/j;

    .line 51
    iput-object v1, v2, Ld2/f1;->n:Ld2/j;

    :cond_8
    if-lez v10, :cond_9

    .line 52
    iget v1, v0, Ld2/c4;->d:I

    if-ge v10, v1, :cond_9

    if-lez v16, :cond_9

    iget v1, v0, Ld2/c4;->e:I

    move/from16 v2, v16

    if-ge v2, v1, :cond_9

    .line 53
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/c4;->l:Ld2/j0;

    .line 54
    iget v2, v2, Ld2/j0;->k:I

    .line 55
    invoke-direct {v1, v7, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_0

    .line 56
    :cond_9
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/c4;->l:Ld2/j0;

    .line 57
    iget v2, v2, Ld2/j0;->k:I

    .line 58
    invoke-direct {v1, v11, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_0

    .line 59
    :cond_a
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/c4;->l:Ld2/j0;

    .line 60
    iget v2, v2, Ld2/j0;->k:I

    .line 61
    invoke-direct {v1, v6, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    :goto_0
    const/4 v1, 0x1

    return v1
.end method
