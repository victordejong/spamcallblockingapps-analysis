.class public Ld2/b3;
.super Landroid/widget/EditText;
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

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ld2/j0;

.field public p:Ld2/t0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld2/t0;ILd2/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2
    iput p3, p0, Ld2/b3;->a:I

    .line 3
    iput-object p2, p0, Ld2/b3;->p:Ld2/t0;

    .line 4
    iput-object p4, p0, Ld2/b3;->o:Ld2/j0;

    return-void
.end method


# virtual methods
.method public a(ZI)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/16 p1, 0x11

    return p1

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x800005

    return p1

    :cond_1
    const/16 p1, 0x50

    return p1

    :cond_2
    if-eqz p1, :cond_3

    const p1, 0x800003

    return p1

    :cond_3
    const/16 p1, 0x30

    return p1

    :cond_4
    if-eqz p1, :cond_5

    return v0

    :cond_5
    const/16 p1, 0x10

    return p1
.end method

.method public b(Ld2/t0;)Z
    .locals 2

    .line 1
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v0, "id"

    .line 2
    invoke-static {p1, v0}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Ld2/b3;->a:I

    if-ne v0, v1, :cond_0

    const-string v0, "container_id"

    .line 3
    invoke-static {p1, v0}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Ld2/b3;->o:Ld2/j0;

    .line 4
    iget v1, v1, Ld2/j0;->j:I

    if-ne v0, v1, :cond_0

    const-string v0, "ad_session_id"

    .line 5
    invoke-virtual {p1, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Ld2/b3;->o:Ld2/j0;

    .line 7
    iget-object v0, v0, Ld2/j0;->l:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
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
    iget v13, v0, Ld2/b3;->a:I

    const-string v14, "view_id"

    invoke-static {v12, v14, v13}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 8
    iget-object v13, v0, Ld2/b3;->k:Ljava/lang/String;

    const-string v14, "ad_session_id"

    invoke-static {v12, v14, v13}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    iget v13, v0, Ld2/b3;->b:I

    add-int/2addr v13, v10

    const-string v14, "container_x"

    invoke-static {v12, v14, v13}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 10
    iget v13, v0, Ld2/b3;->c:I

    add-int/2addr v13, v11

    const-string v15, "container_y"

    invoke-static {v12, v15, v13}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v13, "view_x"

    .line 11
    invoke-static {v12, v13, v10}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v10, "view_y"

    .line 12
    invoke-static {v12, v10, v11}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 13
    iget-object v11, v0, Ld2/b3;->o:Ld2/j0;

    .line 14
    iget v11, v11, Ld2/j0;->j:I

    const-string v5, "id"

    .line 15
    invoke-static {v12, v5, v11}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v5, "AdContainer.on_touch_began"

    if-eqz v4, :cond_8

    const-string v11, "AdContainer.on_touch_ended"

    if-eq v4, v9, :cond_6

    if-eq v4, v8, :cond_5

    if-eq v4, v7, :cond_4

    const v7, 0xff00

    if-eq v4, v6, :cond_3

    const/4 v6, 0x6

    if-eq v4, v6, :cond_1

    goto/16 :goto_0

    .line 16
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/2addr v4, v7

    shr-int/lit8 v4, v4, 0x8

    .line 17
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, v0, Ld2/b3;->b:I

    add-int/2addr v5, v6

    invoke-static {v12, v14, v5}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 18
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, v0, Ld2/b3;->c:I

    add-int/2addr v5, v6

    invoke-static {v12, v15, v5}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 19
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v12, v13, v5}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 20
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v12, v10, v1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 21
    iget-object v1, v0, Ld2/b3;->o:Ld2/j0;

    .line 22
    iget-boolean v1, v1, Ld2/j0;->u:Z

    if-nez v1, :cond_2

    .line 23
    iget-object v1, v3, Ld2/k0;->f:Ljava/util/Map;

    .line 24
    iget-object v3, v0, Ld2/b3;->k:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/j;

    .line 25
    iput-object v1, v2, Ld2/f1;->n:Ld2/j;

    .line 26
    :cond_2
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/b3;->o:Ld2/j0;

    .line 27
    iget v2, v2, Ld2/j0;->k:I

    .line 28
    invoke-direct {v1, v11, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto/16 :goto_0

    .line 29
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/2addr v2, v7

    shr-int/lit8 v2, v2, 0x8

    .line 30
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, v0, Ld2/b3;->b:I

    add-int/2addr v3, v4

    invoke-static {v12, v14, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 31
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, v0, Ld2/b3;->c:I

    add-int/2addr v3, v4

    invoke-static {v12, v15, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 32
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v12, v13, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 33
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v12, v10, v1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 34
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/b3;->o:Ld2/j0;

    .line 35
    iget v2, v2, Ld2/j0;->k:I

    .line 36
    invoke-direct {v1, v5, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_0

    .line 37
    :cond_4
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/b3;->o:Ld2/j0;

    .line 38
    iget v2, v2, Ld2/j0;->k:I

    const-string v3, "AdContainer.on_touch_cancelled"

    .line 39
    invoke-direct {v1, v3, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_0

    .line 40
    :cond_5
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/b3;->o:Ld2/j0;

    .line 41
    iget v2, v2, Ld2/j0;->k:I

    const-string v3, "AdContainer.on_touch_moved"

    .line 42
    invoke-direct {v1, v3, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_0

    .line 43
    :cond_6
    iget-object v1, v0, Ld2/b3;->o:Ld2/j0;

    .line 44
    iget-boolean v1, v1, Ld2/j0;->u:Z

    if-nez v1, :cond_7

    .line 45
    iget-object v1, v3, Ld2/k0;->f:Ljava/util/Map;

    .line 46
    iget-object v3, v0, Ld2/b3;->k:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/j;

    .line 47
    iput-object v1, v2, Ld2/f1;->n:Ld2/j;

    .line 48
    :cond_7
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/b3;->o:Ld2/j0;

    .line 49
    iget v2, v2, Ld2/j0;->k:I

    .line 50
    invoke-direct {v1, v11, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    goto :goto_0

    .line 51
    :cond_8
    new-instance v1, Ld2/t0;

    iget-object v2, v0, Ld2/b3;->o:Ld2/j0;

    .line 52
    iget v2, v2, Ld2/j0;->k:I

    .line 53
    invoke-direct {v1, v5, v2, v12}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    :goto_0
    return v9
.end method
