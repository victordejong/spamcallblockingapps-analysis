.class public Lb6$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Lz5;

.field public c:I

.field public d:Ly5;

.field public e:Ly5;

.field public f:Ly5;

.field public g:Ly5;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public final synthetic r:Lb6;


# direct methods
.method public constructor <init>(Lb6;ILy5;Ly5;Ly5;Ly5;I)V
    .locals 2

    iput-object p1, p0, Lb6$a;->r:Lb6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb6$a;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lb6$a;->b:Lz5;

    iput v0, p0, Lb6$a;->c:I

    iput v0, p0, Lb6$a;->h:I

    iput v0, p0, Lb6$a;->i:I

    iput v0, p0, Lb6$a;->j:I

    iput v0, p0, Lb6$a;->k:I

    iput v0, p0, Lb6$a;->l:I

    iput v0, p0, Lb6$a;->m:I

    iput v0, p0, Lb6$a;->n:I

    iput v0, p0, Lb6$a;->o:I

    iput v0, p0, Lb6$a;->p:I

    iput v0, p0, Lb6$a;->q:I

    iput p2, p0, Lb6$a;->a:I

    iput-object p3, p0, Lb6$a;->d:Ly5;

    iput-object p4, p0, Lb6$a;->e:Ly5;

    iput-object p5, p0, Lb6$a;->f:Ly5;

    iput-object p6, p0, Lb6$a;->g:Ly5;

    invoke-virtual {p1}, Lg6;->l1()I

    move-result p2

    iput p2, p0, Lb6$a;->h:I

    invoke-virtual {p1}, Lg6;->n1()I

    move-result p2

    iput p2, p0, Lb6$a;->i:I

    invoke-virtual {p1}, Lg6;->m1()I

    move-result p2

    iput p2, p0, Lb6$a;->j:I

    invoke-virtual {p1}, Lg6;->k1()I

    move-result p1

    iput p1, p0, Lb6$a;->k:I

    iput p7, p0, Lb6$a;->q:I

    return-void
.end method

.method public static synthetic a(Lb6$a;)Lz5;
    .locals 0

    iget-object p0, p0, Lb6$a;->b:Lz5;

    return-object p0
.end method


# virtual methods
.method public b(Lz5;)V
    .locals 6

    iget v0, p0, Lb6$a;->a:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lb6$a;->r:Lb6;

    iget v3, p0, Lb6$a;->q:I

    invoke-static {v0, p1, v3}, Lb6;->N1(Lb6;Lz5;I)I

    move-result v0

    invoke-virtual {p1}, Lz5;->B()Lz5$b;

    move-result-object v3

    sget-object v4, Lz5$b;->c:Lz5$b;

    if-ne v3, v4, :cond_0

    iget v0, p0, Lb6$a;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb6$a;->p:I

    const/4 v0, 0x0

    :cond_0
    iget-object v3, p0, Lb6$a;->r:Lb6;

    invoke-static {v3}, Lb6;->B1(Lb6;)I

    move-result v3

    invoke-virtual {p1}, Lz5;->T()I

    move-result v4

    if-ne v4, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iget v1, p0, Lb6$a;->l:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lb6$a;->l:I

    iget-object v0, p0, Lb6$a;->r:Lb6;

    iget v1, p0, Lb6$a;->q:I

    invoke-static {v0, p1, v1}, Lb6;->O1(Lb6;Lz5;I)I

    move-result v0

    iget-object v1, p0, Lb6$a;->b:Lz5;

    if-eqz v1, :cond_2

    iget v1, p0, Lb6$a;->c:I

    if-ge v1, v0, :cond_7

    :cond_2
    iput-object p1, p0, Lb6$a;->b:Lz5;

    iput v0, p0, Lb6$a;->c:I

    iput v0, p0, Lb6$a;->m:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lb6$a;->r:Lb6;

    iget v3, p0, Lb6$a;->q:I

    invoke-static {v0, p1, v3}, Lb6;->N1(Lb6;Lz5;I)I

    move-result v0

    iget-object v3, p0, Lb6$a;->r:Lb6;

    iget v4, p0, Lb6$a;->q:I

    invoke-static {v3, p1, v4}, Lb6;->O1(Lb6;Lz5;I)I

    move-result v3

    invoke-virtual {p1}, Lz5;->R()Lz5$b;

    move-result-object v4

    sget-object v5, Lz5$b;->c:Lz5$b;

    if-ne v4, v5, :cond_4

    iget v3, p0, Lb6$a;->p:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lb6$a;->p:I

    const/4 v3, 0x0

    :cond_4
    iget-object v4, p0, Lb6$a;->r:Lb6;

    invoke-static {v4}, Lb6;->C1(Lb6;)I

    move-result v4

    invoke-virtual {p1}, Lz5;->T()I

    move-result v5

    if-ne v5, v1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v4

    :goto_1
    iget v1, p0, Lb6$a;->m:I

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    iput v1, p0, Lb6$a;->m:I

    iget-object v1, p0, Lb6$a;->b:Lz5;

    if-eqz v1, :cond_6

    iget v1, p0, Lb6$a;->c:I

    if-ge v1, v0, :cond_7

    :cond_6
    iput-object p1, p0, Lb6$a;->b:Lz5;

    iput v0, p0, Lb6$a;->c:I

    iput v0, p0, Lb6$a;->l:I

    :cond_7
    :goto_2
    iget p1, p0, Lb6$a;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb6$a;->o:I

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lb6$a;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Lb6$a;->b:Lz5;

    iput v0, p0, Lb6$a;->l:I

    iput v0, p0, Lb6$a;->m:I

    iput v0, p0, Lb6$a;->n:I

    iput v0, p0, Lb6$a;->o:I

    iput v0, p0, Lb6$a;->p:I

    return-void
.end method

.method public d(ZIZ)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lb6$a;->o:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget v4, v0, Lb6$a;->n:I

    add-int/2addr v4, v3

    iget-object v5, v0, Lb6$a;->r:Lb6;

    invoke-static {v5}, Lb6;->P1(Lb6;)I

    move-result v5

    if-lt v4, v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v0, Lb6$a;->r:Lb6;

    invoke-static {v4}, Lb6;->Q1(Lb6;)[Lz5;

    move-result-object v4

    iget v5, v0, Lb6$a;->n:I

    add-int/2addr v5, v3

    aget-object v4, v4, v5

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lz5;->l0()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_35

    iget-object v3, v0, Lb6$a;->b:Lz5;

    if-nez v3, :cond_3

    goto/16 :goto_17

    :cond_3
    if-eqz p3, :cond_4

    if-nez p2, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    :goto_3
    if-ge v6, v1, :cond_9

    if-eqz p1, :cond_5

    add-int/lit8 v9, v1, -0x1

    sub-int/2addr v9, v6

    goto :goto_4

    :cond_5
    move v9, v6

    :goto_4
    iget v10, v0, Lb6$a;->n:I

    add-int/2addr v10, v9

    iget-object v11, v0, Lb6$a;->r:Lb6;

    invoke-static {v11}, Lb6;->P1(Lb6;)I

    move-result v11

    if-lt v10, v11, :cond_6

    goto :goto_5

    :cond_6
    iget-object v10, v0, Lb6$a;->r:Lb6;

    invoke-static {v10}, Lb6;->Q1(Lb6;)[Lz5;

    move-result-object v10

    iget v11, v0, Lb6$a;->n:I

    add-int/2addr v11, v9

    aget-object v9, v10, v11

    invoke-virtual {v9}, Lz5;->T()I

    move-result v9

    if-nez v9, :cond_8

    if-ne v7, v5, :cond_7

    move v7, v6

    :cond_7
    move v8, v6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    const/4 v6, 0x0

    iget v9, v0, Lb6$a;->a:I

    if-nez v9, :cond_1f

    iget-object v9, v0, Lb6$a;->b:Lz5;

    iget-object v10, v0, Lb6$a;->r:Lb6;

    invoke-static {v10}, Lb6;->R1(Lb6;)I

    move-result v10

    invoke-virtual {v9, v10}, Lz5;->S0(I)V

    iget v10, v0, Lb6$a;->i:I

    if-lez p2, :cond_a

    iget-object v11, v0, Lb6$a;->r:Lb6;

    invoke-static {v11}, Lb6;->C1(Lb6;)I

    move-result v11

    add-int/2addr v10, v11

    :cond_a
    iget-object v11, v9, Lz5;->I:Ly5;

    iget-object v12, v0, Lb6$a;->e:Ly5;

    invoke-virtual {v11, v12, v10}, Ly5;->a(Ly5;I)Z

    if-eqz p3, :cond_b

    iget-object v10, v9, Lz5;->K:Ly5;

    iget-object v11, v0, Lb6$a;->g:Ly5;

    iget v12, v0, Lb6$a;->k:I

    invoke-virtual {v10, v11, v12}, Ly5;->a(Ly5;I)Z

    :cond_b
    if-lez p2, :cond_c

    iget-object v10, v0, Lb6$a;->e:Ly5;

    iget-object v10, v10, Ly5;->d:Lz5;

    iget-object v10, v10, Lz5;->K:Ly5;

    iget-object v11, v9, Lz5;->I:Ly5;

    invoke-virtual {v10, v11, v2}, Ly5;->a(Ly5;I)Z

    :cond_c
    iget-object v10, v0, Lb6$a;->r:Lb6;

    invoke-static {v10}, Lb6;->S1(Lb6;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_10

    invoke-virtual {v9}, Lz5;->X()Z

    move-result v10

    if-nez v10, :cond_10

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v1, :cond_10

    if-eqz p1, :cond_d

    add-int/lit8 v12, v1, -0x1

    sub-int/2addr v12, v10

    goto :goto_7

    :cond_d
    move v12, v10

    :goto_7
    iget v13, v0, Lb6$a;->n:I

    add-int/2addr v13, v12

    iget-object v14, v0, Lb6$a;->r:Lb6;

    invoke-static {v14}, Lb6;->P1(Lb6;)I

    move-result v14

    if-lt v13, v14, :cond_e

    goto :goto_8

    :cond_e
    iget-object v13, v0, Lb6$a;->r:Lb6;

    invoke-static {v13}, Lb6;->Q1(Lb6;)[Lz5;

    move-result-object v13

    iget v14, v0, Lb6$a;->n:I

    add-int/2addr v14, v12

    aget-object v12, v13, v14

    invoke-virtual {v12}, Lz5;->X()Z

    move-result v13

    if-eqz v13, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_10
    :goto_8
    move-object v12, v9

    :goto_9
    const/4 v10, 0x0

    :goto_a
    if-ge v10, v1, :cond_35

    if-eqz p1, :cond_11

    add-int/lit8 v13, v1, -0x1

    sub-int/2addr v13, v10

    goto :goto_b

    :cond_11
    move v13, v10

    :goto_b
    iget v14, v0, Lb6$a;->n:I

    add-int/2addr v14, v13

    iget-object v15, v0, Lb6$a;->r:Lb6;

    invoke-static {v15}, Lb6;->P1(Lb6;)I

    move-result v15

    if-lt v14, v15, :cond_12

    goto/16 :goto_17

    :cond_12
    iget-object v14, v0, Lb6$a;->r:Lb6;

    invoke-static {v14}, Lb6;->Q1(Lb6;)[Lz5;

    move-result-object v14

    iget v15, v0, Lb6$a;->n:I

    add-int/2addr v15, v13

    aget-object v14, v14, v15

    if-nez v10, :cond_13

    iget-object v15, v14, Lz5;->H:Ly5;

    iget-object v11, v0, Lb6$a;->d:Ly5;

    iget v3, v0, Lb6$a;->h:I

    invoke-virtual {v14, v15, v11, v3}, Lz5;->k(Ly5;Ly5;I)V

    :cond_13
    if-nez v13, :cond_16

    iget-object v3, v0, Lb6$a;->r:Lb6;

    invoke-static {v3}, Lb6;->T1(Lb6;)I

    move-result v3

    iget-object v11, v0, Lb6$a;->r:Lb6;

    invoke-static {v11}, Lb6;->U1(Lb6;)F

    move-result v11

    iget v13, v0, Lb6$a;->n:I

    if-nez v13, :cond_14

    iget-object v13, v0, Lb6$a;->r:Lb6;

    invoke-static {v13}, Lb6;->D1(Lb6;)I

    move-result v13

    if-eq v13, v5, :cond_14

    iget-object v3, v0, Lb6$a;->r:Lb6;

    invoke-static {v3}, Lb6;->D1(Lb6;)I

    move-result v3

    iget-object v11, v0, Lb6$a;->r:Lb6;

    invoke-static {v11}, Lb6;->E1(Lb6;)F

    move-result v11

    goto :goto_c

    :cond_14
    if-eqz p3, :cond_15

    iget-object v13, v0, Lb6$a;->r:Lb6;

    invoke-static {v13}, Lb6;->F1(Lb6;)I

    move-result v13

    if-eq v13, v5, :cond_15

    iget-object v3, v0, Lb6$a;->r:Lb6;

    invoke-static {v3}, Lb6;->F1(Lb6;)I

    move-result v3

    iget-object v11, v0, Lb6$a;->r:Lb6;

    invoke-static {v11}, Lb6;->G1(Lb6;)F

    move-result v11

    :cond_15
    :goto_c
    invoke-virtual {v14, v3}, Lz5;->B0(I)V

    invoke-virtual {v14, v11}, Lz5;->A0(F)V

    :cond_16
    add-int/lit8 v3, v1, -0x1

    if-ne v10, v3, :cond_17

    iget-object v3, v14, Lz5;->J:Ly5;

    iget-object v11, v0, Lb6$a;->f:Ly5;

    iget v13, v0, Lb6$a;->j:I

    invoke-virtual {v14, v3, v11, v13}, Lz5;->k(Ly5;Ly5;I)V

    :cond_17
    if-eqz v6, :cond_19

    iget-object v3, v14, Lz5;->H:Ly5;

    iget-object v11, v6, Lz5;->J:Ly5;

    iget-object v13, v0, Lb6$a;->r:Lb6;

    invoke-static {v13}, Lb6;->B1(Lb6;)I

    move-result v13

    invoke-virtual {v3, v11, v13}, Ly5;->a(Ly5;I)Z

    if-ne v10, v7, :cond_18

    iget-object v3, v14, Lz5;->H:Ly5;

    iget v11, v0, Lb6$a;->h:I

    invoke-virtual {v3, v11}, Ly5;->u(I)V

    :cond_18
    iget-object v3, v6, Lz5;->J:Ly5;

    iget-object v11, v14, Lz5;->H:Ly5;

    invoke-virtual {v3, v11, v2}, Ly5;->a(Ly5;I)Z

    const/4 v3, 0x1

    add-int/lit8 v11, v8, 0x1

    if-ne v10, v11, :cond_19

    iget-object v3, v6, Lz5;->J:Ly5;

    iget v6, v0, Lb6$a;->j:I

    invoke-virtual {v3, v6}, Ly5;->u(I)V

    :cond_19
    if-eq v14, v9, :cond_1e

    iget-object v3, v0, Lb6$a;->r:Lb6;

    invoke-static {v3}, Lb6;->S1(Lb6;)I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1a

    invoke-virtual {v12}, Lz5;->X()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eq v14, v12, :cond_1a

    invoke-virtual {v14}, Lz5;->X()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, v14, Lz5;->L:Ly5;

    iget-object v11, v12, Lz5;->L:Ly5;

    goto :goto_d

    :cond_1a
    iget-object v3, v0, Lb6$a;->r:Lb6;

    invoke-static {v3}, Lb6;->S1(Lb6;)I

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v11, 0x1

    if-eq v3, v11, :cond_1c

    iget-object v3, v14, Lz5;->I:Ly5;

    if-eqz v4, :cond_1b

    iget-object v11, v0, Lb6$a;->e:Ly5;

    iget v13, v0, Lb6$a;->i:I

    invoke-virtual {v3, v11, v13}, Ly5;->a(Ly5;I)Z

    iget-object v3, v14, Lz5;->K:Ly5;

    iget-object v11, v0, Lb6$a;->g:Ly5;

    iget v13, v0, Lb6$a;->k:I

    invoke-virtual {v3, v11, v13}, Ly5;->a(Ly5;I)Z

    goto :goto_e

    :cond_1b
    iget-object v11, v9, Lz5;->I:Ly5;

    invoke-virtual {v3, v11, v2}, Ly5;->a(Ly5;I)Z

    :cond_1c
    iget-object v3, v14, Lz5;->K:Ly5;

    iget-object v11, v9, Lz5;->K:Ly5;

    goto :goto_d

    :cond_1d
    iget-object v3, v14, Lz5;->I:Ly5;

    iget-object v11, v9, Lz5;->I:Ly5;

    :goto_d
    invoke-virtual {v3, v11, v2}, Ly5;->a(Ly5;I)Z

    goto :goto_e

    :cond_1e
    const/4 v6, 0x3

    :goto_e
    add-int/lit8 v10, v10, 0x1

    move-object v6, v14

    const/4 v11, 0x3

    goto/16 :goto_a

    :cond_1f
    iget-object v3, v0, Lb6$a;->b:Lz5;

    iget-object v9, v0, Lb6$a;->r:Lb6;

    invoke-static {v9}, Lb6;->T1(Lb6;)I

    move-result v9

    invoke-virtual {v3, v9}, Lz5;->B0(I)V

    iget v9, v0, Lb6$a;->h:I

    if-lez p2, :cond_20

    iget-object v10, v0, Lb6$a;->r:Lb6;

    invoke-static {v10}, Lb6;->B1(Lb6;)I

    move-result v10

    add-int/2addr v9, v10

    :cond_20
    if-eqz p1, :cond_22

    iget-object v10, v3, Lz5;->J:Ly5;

    iget-object v11, v0, Lb6$a;->f:Ly5;

    invoke-virtual {v10, v11, v9}, Ly5;->a(Ly5;I)Z

    if-eqz p3, :cond_21

    iget-object v9, v3, Lz5;->H:Ly5;

    iget-object v10, v0, Lb6$a;->d:Ly5;

    iget v11, v0, Lb6$a;->j:I

    invoke-virtual {v9, v10, v11}, Ly5;->a(Ly5;I)Z

    :cond_21
    if-lez p2, :cond_24

    iget-object v9, v0, Lb6$a;->f:Ly5;

    iget-object v9, v9, Ly5;->d:Lz5;

    iget-object v9, v9, Lz5;->H:Ly5;

    iget-object v10, v3, Lz5;->J:Ly5;

    goto :goto_f

    :cond_22
    iget-object v10, v3, Lz5;->H:Ly5;

    iget-object v11, v0, Lb6$a;->d:Ly5;

    invoke-virtual {v10, v11, v9}, Ly5;->a(Ly5;I)Z

    if-eqz p3, :cond_23

    iget-object v9, v3, Lz5;->J:Ly5;

    iget-object v10, v0, Lb6$a;->f:Ly5;

    iget v11, v0, Lb6$a;->j:I

    invoke-virtual {v9, v10, v11}, Ly5;->a(Ly5;I)Z

    :cond_23
    if-lez p2, :cond_24

    iget-object v9, v0, Lb6$a;->d:Ly5;

    iget-object v9, v9, Ly5;->d:Lz5;

    iget-object v9, v9, Lz5;->J:Ly5;

    iget-object v10, v3, Lz5;->H:Ly5;

    :goto_f
    invoke-virtual {v9, v10, v2}, Ly5;->a(Ly5;I)Z

    :cond_24
    const/4 v9, 0x0

    :goto_10
    if-ge v9, v1, :cond_35

    iget v10, v0, Lb6$a;->n:I

    add-int/2addr v10, v9

    iget-object v11, v0, Lb6$a;->r:Lb6;

    invoke-static {v11}, Lb6;->P1(Lb6;)I

    move-result v11

    if-lt v10, v11, :cond_25

    goto/16 :goto_17

    :cond_25
    iget-object v10, v0, Lb6$a;->r:Lb6;

    invoke-static {v10}, Lb6;->Q1(Lb6;)[Lz5;

    move-result-object v10

    iget v11, v0, Lb6$a;->n:I

    add-int/2addr v11, v9

    aget-object v10, v10, v11

    if-nez v9, :cond_28

    iget-object v11, v10, Lz5;->I:Ly5;

    iget-object v12, v0, Lb6$a;->e:Ly5;

    iget v13, v0, Lb6$a;->i:I

    invoke-virtual {v10, v11, v12, v13}, Lz5;->k(Ly5;Ly5;I)V

    iget-object v11, v0, Lb6$a;->r:Lb6;

    invoke-static {v11}, Lb6;->R1(Lb6;)I

    move-result v11

    iget-object v12, v0, Lb6$a;->r:Lb6;

    invoke-static {v12}, Lb6;->H1(Lb6;)F

    move-result v12

    iget v13, v0, Lb6$a;->n:I

    if-nez v13, :cond_26

    iget-object v13, v0, Lb6$a;->r:Lb6;

    invoke-static {v13}, Lb6;->I1(Lb6;)I

    move-result v13

    if-eq v13, v5, :cond_26

    iget-object v11, v0, Lb6$a;->r:Lb6;

    invoke-static {v11}, Lb6;->I1(Lb6;)I

    move-result v11

    iget-object v12, v0, Lb6$a;->r:Lb6;

    invoke-static {v12}, Lb6;->J1(Lb6;)F

    move-result v12

    goto :goto_11

    :cond_26
    if-eqz p3, :cond_27

    iget-object v13, v0, Lb6$a;->r:Lb6;

    invoke-static {v13}, Lb6;->K1(Lb6;)I

    move-result v13

    if-eq v13, v5, :cond_27

    iget-object v11, v0, Lb6$a;->r:Lb6;

    invoke-static {v11}, Lb6;->K1(Lb6;)I

    move-result v11

    iget-object v12, v0, Lb6$a;->r:Lb6;

    invoke-static {v12}, Lb6;->L1(Lb6;)F

    move-result v12

    :cond_27
    :goto_11
    invoke-virtual {v10, v11}, Lz5;->S0(I)V

    invoke-virtual {v10, v12}, Lz5;->R0(F)V

    :cond_28
    add-int/lit8 v11, v1, -0x1

    if-ne v9, v11, :cond_29

    iget-object v11, v10, Lz5;->K:Ly5;

    iget-object v12, v0, Lb6$a;->g:Ly5;

    iget v13, v0, Lb6$a;->k:I

    invoke-virtual {v10, v11, v12, v13}, Lz5;->k(Ly5;Ly5;I)V

    :cond_29
    if-eqz v6, :cond_2b

    iget-object v11, v10, Lz5;->I:Ly5;

    iget-object v12, v6, Lz5;->K:Ly5;

    iget-object v13, v0, Lb6$a;->r:Lb6;

    invoke-static {v13}, Lb6;->C1(Lb6;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ly5;->a(Ly5;I)Z

    if-ne v9, v7, :cond_2a

    iget-object v11, v10, Lz5;->I:Ly5;

    iget v12, v0, Lb6$a;->i:I

    invoke-virtual {v11, v12}, Ly5;->u(I)V

    :cond_2a
    iget-object v11, v6, Lz5;->K:Ly5;

    iget-object v12, v10, Lz5;->I:Ly5;

    invoke-virtual {v11, v12, v2}, Ly5;->a(Ly5;I)Z

    const/4 v11, 0x1

    add-int/lit8 v12, v8, 0x1

    if-ne v9, v12, :cond_2b

    iget-object v6, v6, Lz5;->K:Ly5;

    iget v11, v0, Lb6$a;->k:I

    invoke-virtual {v6, v11}, Ly5;->u(I)V

    :cond_2b
    if-eq v10, v3, :cond_34

    const/4 v6, 0x2

    iget-object v11, v0, Lb6$a;->r:Lb6;

    invoke-static {v11}, Lb6;->M1(Lb6;)I

    move-result v11

    if-eqz p1, :cond_2f

    if-eqz v11, :cond_2e

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2d

    if-eq v11, v6, :cond_2c

    goto :goto_15

    :cond_2c
    iget-object v6, v10, Lz5;->H:Ly5;

    iget-object v11, v3, Lz5;->H:Ly5;

    invoke-virtual {v6, v11, v2}, Ly5;->a(Ly5;I)Z

    goto :goto_12

    :cond_2d
    iget-object v6, v10, Lz5;->H:Ly5;

    iget-object v11, v3, Lz5;->H:Ly5;

    goto :goto_13

    :cond_2e
    :goto_12
    iget-object v6, v10, Lz5;->J:Ly5;

    iget-object v11, v3, Lz5;->J:Ly5;

    :goto_13
    invoke-virtual {v6, v11, v2}, Ly5;->a(Ly5;I)Z

    goto :goto_15

    :cond_2f
    const/4 v12, 0x1

    if-eqz v11, :cond_33

    if-eq v11, v12, :cond_32

    if-eq v11, v6, :cond_30

    goto :goto_16

    :cond_30
    iget-object v6, v10, Lz5;->H:Ly5;

    if-eqz v4, :cond_31

    iget-object v11, v0, Lb6$a;->d:Ly5;

    iget v13, v0, Lb6$a;->h:I

    invoke-virtual {v6, v11, v13}, Ly5;->a(Ly5;I)Z

    iget-object v6, v10, Lz5;->J:Ly5;

    iget-object v11, v0, Lb6$a;->f:Ly5;

    iget v13, v0, Lb6$a;->j:I

    invoke-virtual {v6, v11, v13}, Ly5;->a(Ly5;I)Z

    goto :goto_16

    :cond_31
    iget-object v11, v3, Lz5;->H:Ly5;

    invoke-virtual {v6, v11, v2}, Ly5;->a(Ly5;I)Z

    :cond_32
    iget-object v6, v10, Lz5;->J:Ly5;

    iget-object v11, v3, Lz5;->J:Ly5;

    goto :goto_14

    :cond_33
    iget-object v6, v10, Lz5;->H:Ly5;

    iget-object v11, v3, Lz5;->H:Ly5;

    :goto_14
    invoke-virtual {v6, v11, v2}, Ly5;->a(Ly5;I)Z

    goto :goto_16

    :cond_34
    :goto_15
    const/4 v12, 0x1

    :goto_16
    add-int/lit8 v9, v9, 0x1

    move-object v6, v10

    goto/16 :goto_10

    :cond_35
    :goto_17
    return-void
.end method

.method public e()I
    .locals 2

    iget v0, p0, Lb6$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lb6$a;->m:I

    iget-object v1, p0, Lb6$a;->r:Lb6;

    invoke-static {v1}, Lb6;->C1(Lb6;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lb6$a;->m:I

    return v0
.end method

.method public f()I
    .locals 2

    iget v0, p0, Lb6$a;->a:I

    if-nez v0, :cond_0

    iget v0, p0, Lb6$a;->l:I

    iget-object v1, p0, Lb6$a;->r:Lb6;

    invoke-static {v1}, Lb6;->B1(Lb6;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lb6$a;->l:I

    return v0
.end method

.method public g(I)V
    .locals 8

    iget v0, p0, Lb6$a;->p:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lb6$a;->o:I

    div-int/2addr p1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    iget v2, p0, Lb6$a;->n:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lb6$a;->r:Lb6;

    invoke-static {v3}, Lb6;->P1(Lb6;)I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lb6$a;->r:Lb6;

    invoke-static {v2}, Lb6;->Q1(Lb6;)[Lz5;

    move-result-object v2

    iget v3, p0, Lb6$a;->n:I

    add-int/2addr v3, v0

    aget-object v3, v2, v3

    iget v2, p0, Lb6$a;->a:I

    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lz5;->B()Lz5$b;

    move-result-object v2

    sget-object v4, Lz5$b;->c:Lz5$b;

    if-ne v2, v4, :cond_3

    iget v2, v3, Lz5;->n:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lb6$a;->r:Lb6;

    sget-object v4, Lz5$b;->a:Lz5$b;

    invoke-virtual {v3}, Lz5;->R()Lz5$b;

    move-result-object v6

    invoke-virtual {v3}, Lz5;->y()I

    move-result v7

    move v5, p1

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lz5;->R()Lz5$b;

    move-result-object v2

    sget-object v4, Lz5$b;->c:Lz5$b;

    if-ne v2, v4, :cond_3

    iget v2, v3, Lz5;->o:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lb6$a;->r:Lb6;

    invoke-virtual {v3}, Lz5;->B()Lz5$b;

    move-result-object v4

    invoke-virtual {v3}, Lz5;->U()I

    move-result v5

    sget-object v6, Lz5$b;->a:Lz5$b;

    move v7, p1

    :goto_1
    invoke-virtual/range {v2 .. v7}, Lg6;->p1(Lz5;Lz5$b;ILz5$b;I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lb6$a;->h()V

    return-void
.end method

.method public final h()V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Lb6$a;->l:I

    iput v0, p0, Lb6$a;->m:I

    const/4 v1, 0x0

    iput-object v1, p0, Lb6$a;->b:Lz5;

    iput v0, p0, Lb6$a;->c:I

    iget v1, p0, Lb6$a;->o:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    iget v3, p0, Lb6$a;->n:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lb6$a;->r:Lb6;

    invoke-static {v4}, Lb6;->P1(Lb6;)I

    move-result v4

    if-lt v3, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v3, p0, Lb6$a;->r:Lb6;

    invoke-static {v3}, Lb6;->Q1(Lb6;)[Lz5;

    move-result-object v3

    iget v4, p0, Lb6$a;->n:I

    add-int/2addr v4, v2

    aget-object v3, v3, v4

    iget v4, p0, Lb6$a;->a:I

    const/16 v5, 0x8

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lz5;->U()I

    move-result v4

    iget-object v6, p0, Lb6$a;->r:Lb6;

    invoke-static {v6}, Lb6;->B1(Lb6;)I

    move-result v6

    invoke-virtual {v3}, Lz5;->T()I

    move-result v7

    if-ne v7, v5, :cond_1

    const/4 v6, 0x0

    :cond_1
    iget v5, p0, Lb6$a;->l:I

    add-int/2addr v4, v6

    add-int/2addr v5, v4

    iput v5, p0, Lb6$a;->l:I

    iget-object v4, p0, Lb6$a;->r:Lb6;

    iget v5, p0, Lb6$a;->q:I

    invoke-static {v4, v3, v5}, Lb6;->O1(Lb6;Lz5;I)I

    move-result v4

    iget-object v5, p0, Lb6$a;->b:Lz5;

    if-eqz v5, :cond_2

    iget v5, p0, Lb6$a;->c:I

    if-ge v5, v4, :cond_6

    :cond_2
    iput-object v3, p0, Lb6$a;->b:Lz5;

    iput v4, p0, Lb6$a;->c:I

    iput v4, p0, Lb6$a;->m:I

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lb6$a;->r:Lb6;

    iget v6, p0, Lb6$a;->q:I

    invoke-static {v4, v3, v6}, Lb6;->N1(Lb6;Lz5;I)I

    move-result v4

    iget-object v6, p0, Lb6$a;->r:Lb6;

    iget v7, p0, Lb6$a;->q:I

    invoke-static {v6, v3, v7}, Lb6;->O1(Lb6;Lz5;I)I

    move-result v6

    iget-object v7, p0, Lb6$a;->r:Lb6;

    invoke-static {v7}, Lb6;->C1(Lb6;)I

    move-result v7

    invoke-virtual {v3}, Lz5;->T()I

    move-result v8

    if-ne v8, v5, :cond_4

    const/4 v7, 0x0

    :cond_4
    iget v5, p0, Lb6$a;->m:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, p0, Lb6$a;->m:I

    iget-object v5, p0, Lb6$a;->b:Lz5;

    if-eqz v5, :cond_5

    iget v5, p0, Lb6$a;->c:I

    if-ge v5, v4, :cond_6

    :cond_5
    iput-object v3, p0, Lb6$a;->b:Lz5;

    iput v4, p0, Lb6$a;->c:I

    iput v4, p0, Lb6$a;->l:I

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_2
    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lb6$a;->n:I

    return-void
.end method

.method public j(ILy5;Ly5;Ly5;Ly5;IIIII)V
    .locals 0

    iput p1, p0, Lb6$a;->a:I

    iput-object p2, p0, Lb6$a;->d:Ly5;

    iput-object p3, p0, Lb6$a;->e:Ly5;

    iput-object p4, p0, Lb6$a;->f:Ly5;

    iput-object p5, p0, Lb6$a;->g:Ly5;

    iput p6, p0, Lb6$a;->h:I

    iput p7, p0, Lb6$a;->i:I

    iput p8, p0, Lb6$a;->j:I

    iput p9, p0, Lb6$a;->k:I

    iput p10, p0, Lb6$a;->q:I

    return-void
.end method
