.class public Lon$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lhn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lxt;

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lpn;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/util/SparseIntArray;

.field public final d:I

.field public final synthetic e:Lon;


# direct methods
.method public constructor <init>(Lon;I)V
    .locals 1

    iput-object p1, p0, Lon$b;->e:Lon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lxt;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lxt;-><init>([B)V

    iput-object p1, p0, Lon$b;->a:Lxt;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lon$b;->b:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lon$b;->c:Landroid/util/SparseIntArray;

    iput p2, p0, Lon$b;->d:I

    return-void
.end method


# virtual methods
.method public a(Lyt;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lyt;->w()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lon$b;->e:Lon;

    invoke-static {v2}, Lon;->j(Lon;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    iget-object v2, v0, Lon$b;->e:Lon;

    invoke-static {v2}, Lon;->j(Lon;)I

    move-result v2

    if-eq v2, v3, :cond_2

    iget-object v2, v0, Lon$b;->e:Lon;

    invoke-static {v2}, Lon;->e(Lon;)I

    move-result v2

    if-ne v2, v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lju;

    iget-object v6, v0, Lon$b;->e:Lon;

    invoke-static {v6}, Lon;->k(Lon;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lju;

    invoke-virtual {v6}, Lju;->c()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lju;-><init>(J)V

    iget-object v6, v0, Lon$b;->e:Lon;

    invoke-static {v6}, Lon;->k(Lon;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, v0, Lon$b;->e:Lon;

    invoke-static {v2}, Lon;->k(Lon;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lju;

    :goto_1
    invoke-virtual {v1, v3}, Lyt;->K(I)V

    invoke-virtual/range {p1 .. p1}, Lyt;->C()I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Lyt;->K(I)V

    iget-object v8, v0, Lon$b;->a:Lxt;

    invoke-virtual {v1, v8, v3}, Lyt;->e(Lxt;I)V

    iget-object v8, v0, Lon$b;->a:Lxt;

    invoke-virtual {v8, v7}, Lxt;->n(I)V

    iget-object v8, v0, Lon$b;->e:Lon;

    iget-object v9, v0, Lon$b;->a:Lxt;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lxt;->g(I)I

    move-result v9

    invoke-static {v8, v9}, Lon;->l(Lon;I)I

    iget-object v8, v0, Lon$b;->a:Lxt;

    invoke-virtual {v1, v8, v3}, Lyt;->e(Lxt;I)V

    iget-object v8, v0, Lon$b;->a:Lxt;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lxt;->n(I)V

    iget-object v8, v0, Lon$b;->a:Lxt;

    const/16 v11, 0xc

    invoke-virtual {v8, v11}, Lxt;->g(I)I

    move-result v8

    invoke-virtual {v1, v8}, Lyt;->K(I)V

    iget-object v8, v0, Lon$b;->e:Lon;

    invoke-static {v8}, Lon;->j(Lon;)I

    move-result v8

    const/16 v12, 0x2000

    const/16 v13, 0x15

    if-ne v8, v3, :cond_3

    iget-object v8, v0, Lon$b;->e:Lon;

    invoke-static {v8}, Lon;->m(Lon;)Lpn;

    move-result-object v8

    if-nez v8, :cond_3

    new-instance v8, Lpn$b;

    sget-object v14, Lnu;->f:[B

    const/4 v15, 0x0

    invoke-direct {v8, v13, v15, v15, v14}, Lpn$b;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    iget-object v14, v0, Lon$b;->e:Lon;

    invoke-static {v14}, Lon;->o(Lon;)Lpn$c;

    move-result-object v15

    invoke-interface {v15, v13, v8}, Lpn$c;->a(ILpn$b;)Lpn;

    move-result-object v8

    invoke-static {v14, v8}, Lon;->n(Lon;Lpn;)Lpn;

    iget-object v8, v0, Lon$b;->e:Lon;

    invoke-static {v8}, Lon;->m(Lon;)Lpn;

    move-result-object v8

    iget-object v14, v0, Lon$b;->e:Lon;

    invoke-static {v14}, Lon;->p(Lon;)Lck;

    move-result-object v14

    new-instance v15, Lpn$d;

    invoke-direct {v15, v6, v13, v12}, Lpn$d;-><init>(III)V

    invoke-interface {v8, v2, v14, v15}, Lpn;->b(Lju;Lck;Lpn$d;)V

    :cond_3
    iget-object v8, v0, Lon$b;->b:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    iget-object v8, v0, Lon$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual/range {p1 .. p1}, Lyt;->a()I

    move-result v8

    :goto_2
    if-lez v8, :cond_a

    iget-object v14, v0, Lon$b;->a:Lxt;

    const/4 v15, 0x5

    invoke-virtual {v1, v14, v15}, Lyt;->e(Lxt;I)V

    iget-object v14, v0, Lon$b;->a:Lxt;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lxt;->g(I)I

    move-result v14

    iget-object v15, v0, Lon$b;->a:Lxt;

    invoke-virtual {v15, v7}, Lxt;->n(I)V

    iget-object v15, v0, Lon$b;->a:Lxt;

    invoke-virtual {v15, v10}, Lxt;->g(I)I

    move-result v15

    iget-object v7, v0, Lon$b;->a:Lxt;

    invoke-virtual {v7, v9}, Lxt;->n(I)V

    iget-object v7, v0, Lon$b;->a:Lxt;

    invoke-virtual {v7, v11}, Lxt;->g(I)I

    move-result v7

    invoke-virtual {v0, v1, v7}, Lon$b;->c(Lyt;I)Lpn$b;

    move-result-object v9

    const/4 v10, 0x6

    if-ne v14, v10, :cond_4

    iget v14, v9, Lpn$b;->a:I

    :cond_4
    add-int/lit8 v7, v7, 0x5

    sub-int/2addr v8, v7

    iget-object v7, v0, Lon$b;->e:Lon;

    invoke-static {v7}, Lon;->j(Lon;)I

    move-result v7

    if-ne v7, v3, :cond_5

    move v7, v14

    goto :goto_3

    :cond_5
    move v7, v15

    :goto_3
    iget-object v10, v0, Lon$b;->e:Lon;

    invoke-static {v10}, Lon;->q(Lon;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_5

    :cond_6
    iget-object v10, v0, Lon$b;->e:Lon;

    invoke-static {v10}, Lon;->j(Lon;)I

    move-result v10

    if-ne v10, v3, :cond_7

    if-ne v14, v13, :cond_7

    iget-object v9, v0, Lon$b;->e:Lon;

    invoke-static {v9}, Lon;->m(Lon;)Lpn;

    move-result-object v9

    goto :goto_4

    :cond_7
    iget-object v10, v0, Lon$b;->e:Lon;

    invoke-static {v10}, Lon;->o(Lon;)Lpn$c;

    move-result-object v10

    invoke-interface {v10, v14, v9}, Lpn$c;->a(ILpn$b;)Lpn;

    move-result-object v9

    :goto_4
    iget-object v10, v0, Lon$b;->e:Lon;

    invoke-static {v10}, Lon;->j(Lon;)I

    move-result v10

    if-ne v10, v3, :cond_8

    iget-object v10, v0, Lon$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v7, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    if-ge v15, v10, :cond_9

    :cond_8
    iget-object v10, v0, Lon$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v7, v15}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, v0, Lon$b;->b:Landroid/util/SparseArray;

    invoke-virtual {v10, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    :goto_5
    const/4 v7, 0x3

    const/4 v9, 0x4

    const/16 v10, 0xd

    goto/16 :goto_2

    :cond_a
    iget-object v1, v0, Lon$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v1, :cond_d

    iget-object v8, v0, Lon$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    iget-object v9, v0, Lon$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    iget-object v10, v0, Lon$b;->e:Lon;

    invoke-static {v10}, Lon;->q(Lon;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v8, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v10, v0, Lon$b;->e:Lon;

    invoke-static {v10}, Lon;->r(Lon;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v9, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v10, v0, Lon$b;->b:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpn;

    if-eqz v10, :cond_c

    iget-object v11, v0, Lon$b;->e:Lon;

    invoke-static {v11}, Lon;->m(Lon;)Lpn;

    move-result-object v11

    if-eq v10, v11, :cond_b

    iget-object v11, v0, Lon$b;->e:Lon;

    invoke-static {v11}, Lon;->p(Lon;)Lck;

    move-result-object v11

    new-instance v13, Lpn$d;

    invoke-direct {v13, v6, v8, v12}, Lpn$d;-><init>(III)V

    invoke-interface {v10, v2, v11, v13}, Lpn;->b(Lju;Lck;Lpn$d;)V

    :cond_b
    iget-object v8, v0, Lon$b;->e:Lon;

    invoke-static {v8}, Lon;->d(Lon;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_d
    iget-object v1, v0, Lon$b;->e:Lon;

    invoke-static {v1}, Lon;->j(Lon;)I

    move-result v1

    if-ne v1, v3, :cond_e

    iget-object v1, v0, Lon$b;->e:Lon;

    invoke-static {v1}, Lon;->f(Lon;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lon$b;->e:Lon;

    invoke-static {v1}, Lon;->p(Lon;)Lck;

    move-result-object v1

    invoke-interface {v1}, Lck;->endTracks()V

    iget-object v1, v0, Lon$b;->e:Lon;

    invoke-static {v1, v4}, Lon;->h(Lon;I)I

    :goto_7
    iget-object v1, v0, Lon$b;->e:Lon;

    invoke-static {v1, v5}, Lon;->g(Lon;Z)Z

    goto :goto_9

    :cond_e
    iget-object v1, v0, Lon$b;->e:Lon;

    invoke-static {v1}, Lon;->d(Lon;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, v0, Lon$b;->d:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, v0, Lon$b;->e:Lon;

    invoke-static {v1}, Lon;->j(Lon;)I

    move-result v2

    if-ne v2, v5, :cond_f

    goto :goto_8

    :cond_f
    iget-object v2, v0, Lon$b;->e:Lon;

    invoke-static {v2}, Lon;->e(Lon;)I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :goto_8
    invoke-static {v1, v4}, Lon;->h(Lon;I)I

    iget-object v1, v0, Lon$b;->e:Lon;

    invoke-static {v1}, Lon;->e(Lon;)I

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lon$b;->e:Lon;

    invoke-static {v1}, Lon;->p(Lon;)Lck;

    move-result-object v1

    invoke-interface {v1}, Lck;->endTracks()V

    goto :goto_7

    :cond_10
    :goto_9
    return-void
.end method

.method public b(Lju;Lck;Lpn$d;)V
    .locals 0

    return-void
.end method

.method public final c(Lyt;I)Lpn$b;
    .locals 13

    invoke-virtual {p1}, Lyt;->c()I

    move-result v0

    add-int/2addr p2, v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v2, v1

    const/4 v3, -0x1

    :goto_0
    invoke-virtual {p1}, Lyt;->c()I

    move-result v4

    if-ge v4, p2, :cond_b

    invoke-virtual {p1}, Lyt;->w()I

    move-result v4

    invoke-virtual {p1}, Lyt;->w()I

    move-result v5

    invoke-virtual {p1}, Lyt;->c()I

    move-result v6

    add-int/2addr v6, v5

    const/4 v5, 0x5

    const/16 v7, 0x59

    const/16 v8, 0xac

    const/16 v9, 0x87

    const/16 v10, 0x81

    if-ne v4, v5, :cond_3

    invoke-virtual {p1}, Lyt;->y()J

    move-result-wide v4

    const-wide/32 v11, 0x41432d33

    cmp-long v7, v4, v11

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    const-wide/32 v10, 0x45414333

    cmp-long v7, v4, v10

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    const-wide/32 v9, 0x41432d34

    cmp-long v7, v4, v9

    if-nez v7, :cond_2

    :goto_1
    const/16 v3, 0xac

    goto :goto_5

    :cond_2
    const-wide/32 v7, 0x48455643

    cmp-long v9, v4, v7

    if-nez v9, :cond_a

    const/16 v3, 0x24

    goto :goto_5

    :cond_3
    const/16 v5, 0x6a

    if-ne v4, v5, :cond_4

    :goto_2
    const/16 v3, 0x81

    goto :goto_5

    :cond_4
    const/16 v5, 0x7a

    if-ne v4, v5, :cond_5

    :goto_3
    const/16 v3, 0x87

    goto :goto_5

    :cond_5
    const/16 v5, 0x7f

    if-ne v4, v5, :cond_6

    invoke-virtual {p1}, Lyt;->w()I

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_a

    goto :goto_1

    :cond_6
    const/16 v5, 0x7b

    if-ne v4, v5, :cond_7

    const/16 v3, 0x8a

    goto :goto_5

    :cond_7
    const/16 v5, 0xa

    const/4 v8, 0x3

    if-ne v4, v5, :cond_8

    invoke-virtual {p1, v8}, Lyt;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_8
    if-ne v4, v7, :cond_a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    invoke-virtual {p1}, Lyt;->c()I

    move-result v3

    if-ge v3, v6, :cond_9

    invoke-virtual {p1, v8}, Lyt;->t(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lyt;->w()I

    move-result v4

    const/4 v5, 0x4

    new-array v9, v5, [B

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10, v5}, Lyt;->f([BII)V

    new-instance v5, Lpn$a;

    invoke-direct {v5, v3, v4, v9}, Lpn$a;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    const/16 v3, 0x59

    :cond_a
    :goto_5
    invoke-virtual {p1}, Lyt;->c()I

    move-result v4

    sub-int/2addr v6, v4

    invoke-virtual {p1, v6}, Lyt;->K(I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1, p2}, Lyt;->J(I)V

    new-instance v4, Lpn$b;

    iget-object p1, p1, Lyt;->a:[B

    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v4, v3, v1, v2, p1}, Lpn$b;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    return-object v4
.end method
