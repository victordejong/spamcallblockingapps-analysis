.class public final Lh8/f;
.super Lb9/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb9/d<",
        "Lh8/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:[Lx8/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    const-class v0, Lh8/e;

    new-instance v1, Lx8/b;

    const-string v2, "id"

    invoke-direct {v1, v0, v2}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lh8/f;->f:Lx8/b;

    .line 2
    new-instance v2, Lx8/b;

    const-string v3, "mItemType"

    invoke-direct {v2, v0, v3}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3
    new-instance v3, Lx8/b;

    const-string v4, "mOrderId"

    invoke-direct {v3, v0, v4}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4
    new-instance v4, Lx8/b;

    const-string v5, "mPackageName"

    invoke-direct {v4, v0, v5}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 5
    new-instance v5, Lx8/b;

    const-string v6, "mSku"

    invoke-direct {v5, v0, v6}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 6
    new-instance v6, Lx8/b;

    const-string v7, "mPurchaseTime"

    invoke-direct {v6, v0, v7}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 7
    new-instance v7, Lx8/b;

    const-string v8, "mPurchaseState"

    invoke-direct {v7, v0, v8}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 8
    new-instance v8, Lx8/b;

    const-string v9, "mDeveloperPayload"

    invoke-direct {v8, v0, v9}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 9
    new-instance v9, Lx8/b;

    const-string v10, "mToken"

    invoke-direct {v9, v0, v10}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 10
    new-instance v10, Lx8/b;

    const-string v11, "mOriginalJson"

    invoke-direct {v10, v0, v11}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 11
    new-instance v11, Lx8/b;

    const-string v12, "mSignature"

    invoke-direct {v11, v0, v12}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 12
    new-instance v12, Lx8/b;

    const-string v13, "mIsAutoRenewing"

    invoke-direct {v12, v0, v13}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 13
    new-instance v13, Lx8/b;

    const-string v14, "sent"

    invoke-direct {v13, v0, v14}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 14
    new-instance v14, Lx8/b;

    const-string v15, "isGPlay"

    invoke-direct {v14, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 15
    new-instance v15, Lx8/b;

    move-object/from16 v16, v14

    const-string v14, "inventoryPrice"

    invoke-direct {v15, v0, v14}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 16
    new-instance v14, Lx8/b;

    move-object/from16 v17, v15

    const-string v15, "inventoryPriceCurrencyCode"

    invoke-direct {v14, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 17
    new-instance v15, Lx8/b;

    move-object/from16 v18, v14

    const-string v14, "inventoryType"

    invoke-direct {v15, v0, v14}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 18
    new-instance v14, Lx8/b;

    move-object/from16 v19, v15

    const-string v15, "inventoryTitle"

    invoke-direct {v14, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 19
    new-instance v15, Lx8/b;

    move-object/from16 v20, v14

    const-string v14, "inventoryDescription"

    invoke-direct {v15, v0, v14}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 20
    new-instance v14, Lx8/b;

    move-object/from16 v21, v15

    const-string v15, "inventoryPriceAmountMicros"

    invoke-direct {v14, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const/16 v0, 0x14

    new-array v0, v0, [Lx8/a;

    const/4 v15, 0x0

    aput-object v1, v0, v15

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v5, v0, v1

    const/4 v1, 0x5

    aput-object v6, v0, v1

    const/4 v1, 0x6

    aput-object v7, v0, v1

    const/4 v1, 0x7

    aput-object v8, v0, v1

    const/16 v1, 0x8

    aput-object v9, v0, v1

    const/16 v1, 0x9

    aput-object v10, v0, v1

    const/16 v1, 0xa

    aput-object v11, v0, v1

    const/16 v1, 0xb

    aput-object v12, v0, v1

    const/16 v1, 0xc

    aput-object v13, v0, v1

    const/16 v1, 0xd

    aput-object v16, v0, v1

    const/16 v1, 0xe

    aput-object v17, v0, v1

    const/16 v1, 0xf

    aput-object v18, v0, v1

    const/16 v1, 0x10

    aput-object v19, v0, v1

    const/16 v1, 0x11

    aput-object v20, v0, v1

    const/16 v1, 0x12

    aput-object v21, v0, v1

    const/16 v1, 0x13

    aput-object v14, v0, v1

    .line 21
    sput-object v0, Lh8/f;->g:[Lx8/a;

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb9/d;-><init>(Lcom/raizlabs/android/dbflow/config/c;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lc9/f;)Z
    .locals 5

    .line 1
    check-cast p1, Lh8/e;

    .line 2
    iget v0, p1, Lh8/e;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    new-array v0, v2, [Lx8/a;

    .line 3
    invoke-static {v0}, Li4/d;->F([Lx8/a;)Lw8/o;

    move-result-object v0

    const-class v3, Lh8/e;

    .line 4
    new-instance v4, Lw8/g;

    invoke-direct {v4, v0, v3}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v0, v1, [Lw8/n;

    .line 5
    invoke-virtual {p0, p1}, Lh8/f;->u(Lh8/e;)Lw8/l;

    move-result-object p1

    aput-object p1, v0, v2

    .line 6
    new-instance p1, Lw8/r;

    invoke-direct {p1, v4, v0}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 7
    invoke-virtual {p1, p2}, Lw8/d;->g(Lc9/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lh8/e;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lh8/e;

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Lw8/l;
    .locals 0

    .line 1
    check-cast p1, Lh8/e;

    invoke-virtual {p0, p1}, Lh8/f;->u(Lh8/e;)Lw8/l;

    move-result-object p1

    return-object p1
.end method

.method public d(Lc9/g;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lh8/e;

    const-string v0, "id"

    .line 2
    invoke-virtual {p1, v0}, Lc9/g;->k(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lh8/e;->b:I

    const-string v0, "mItemType"

    .line 3
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/e;->c:Ljava/lang/String;

    const-string v0, "mOrderId"

    .line 4
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/e;->d:Ljava/lang/String;

    const-string v0, "mPackageName"

    .line 5
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/e;->e:Ljava/lang/String;

    const-string v0, "mSku"

    .line 6
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/e;->f:Ljava/lang/String;

    const-string v0, "mPurchaseTime"

    .line 7
    invoke-virtual {p1, v0}, Lc9/g;->o(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Lh8/e;->g:J

    const-string v0, "mPurchaseState"

    .line 8
    invoke-virtual {p1, v0}, Lc9/g;->k(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lh8/e;->h:I

    const-string v0, "mDeveloperPayload"

    .line 9
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/e;->i:Ljava/lang/String;

    const-string v0, "mToken"

    .line 10
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/e;->j:Ljava/lang/String;

    const-string v0, "mOriginalJson"

    .line 11
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/e;->k:Ljava/lang/String;

    const-string v0, "mSignature"

    .line 12
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/e;->l:Ljava/lang/String;

    const-string v0, "mIsAutoRenewing"

    .line 13
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 14
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 15
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/e;->m:Z

    goto :goto_0

    .line 16
    :cond_0
    iput-boolean v1, p2, Lh8/e;->m:Z

    :goto_0
    const-string v0, "sent"

    .line 17
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 18
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 19
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/e;->n:Z

    goto :goto_1

    .line 20
    :cond_1
    iput-boolean v1, p2, Lh8/e;->n:Z

    :goto_1
    const-string v0, "isGPlay"

    .line 21
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 22
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 23
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/e;->o:Z

    goto :goto_2

    .line 24
    :cond_2
    iput-boolean v1, p2, Lh8/e;->o:Z

    :goto_2
    const-string v0, "inventoryPrice"

    .line 25
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/e;->p:Ljava/lang/String;

    const-string v0, "inventoryPriceCurrencyCode"

    .line 26
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/e;->q:Ljava/lang/String;

    const-string v0, "inventoryType"

    .line 27
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/e;->r:Ljava/lang/String;

    const-string v0, "inventoryTitle"

    .line 28
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/e;->s:Ljava/lang/String;

    const-string v0, "inventoryDescription"

    .line 29
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/e;->t:Ljava/lang/String;

    const-string v0, "inventoryPriceAmountMicros"

    .line 30
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lh8/e;->u:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lh8/e;

    invoke-direct {v0}, Lh8/e;-><init>()V

    return-object v0
.end method

.method public bridge synthetic f(Landroid/support/v4/media/a;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lh8/e;

    invoke-virtual {p0, p1, p2, p3}, Lh8/f;->t(Landroid/support/v4/media/a;Lh8/e;I)V

    return-void
.end method

.method public g(Landroid/support/v4/media/a;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lh8/e;

    .line 2
    iget v0, p2, Lh8/e;->b:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/support/v4/media/a;->g(IJ)V

    .line 3
    invoke-virtual {p0, p1, p2, v2}, Lh8/f;->t(Landroid/support/v4/media/a;Lh8/e;I)V

    return-void
.end method

.method public h(Landroid/support/v4/media/a;Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p2, Lh8/e;

    .line 2
    iget v0, p2, Lh8/e;->b:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/support/v4/media/a;->g(IJ)V

    .line 3
    iget-object v0, p2, Lh8/e;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    .line 4
    iget-object v0, p2, Lh8/e;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    .line 5
    iget-object v0, p2, Lh8/e;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    .line 6
    iget-object v0, p2, Lh8/e;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    .line 7
    iget-wide v0, p2, Lh8/e;->g:J

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Landroid/support/v4/media/a;->g(IJ)V

    .line 8
    iget v0, p2, Lh8/e;->h:I

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Landroid/support/v4/media/a;->g(IJ)V

    .line 9
    iget-object v0, p2, Lh8/e;->i:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    .line 10
    iget-object v0, p2, Lh8/e;->j:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    .line 11
    iget-object v0, p2, Lh8/e;->k:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    .line 12
    iget-object v0, p2, Lh8/e;->l:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    .line 13
    iget-boolean v0, p2, Lh8/e;->m:Z

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v5, v6}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0xd

    .line 14
    iget-boolean v5, p2, Lh8/e;->n:Z

    if-eqz v5, :cond_1

    move-wide v5, v1

    goto :goto_1

    :cond_1
    move-wide v5, v3

    :goto_1
    invoke-virtual {p1, v0, v5, v6}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0xe

    .line 15
    iget-boolean v5, p2, Lh8/e;->o:Z

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move-wide v1, v3

    :goto_2
    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0xf

    .line 16
    iget-object v1, p2, Lh8/e;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    const/16 v0, 0x10

    .line 17
    iget-object v1, p2, Lh8/e;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    const/16 v0, 0x11

    .line 18
    iget-object v1, p2, Lh8/e;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    const/16 v0, 0x12

    .line 19
    iget-object v1, p2, Lh8/e;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    const/16 v0, 0x13

    .line 20
    iget-object v1, p2, Lh8/e;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    const/16 v0, 0x14

    .line 21
    iget-object v1, p2, Lh8/e;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    const/16 v0, 0x15

    .line 22
    iget p2, p2, Lh8/e;->b:I

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/media/a;->g(IJ)V

    return-void
.end method

.method public final i()La9/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La9/b<",
            "Lh8/e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, La9/a;

    invoke-direct {v0}, La9/a;-><init>()V

    return-object v0
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 0

    .line 1
    check-cast p1, Lh8/e;

    .line 2
    iget p1, p1, Lh8/e;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `Billing`(`id`,`mItemType`,`mOrderId`,`mPackageName`,`mSku`,`mPurchaseTime`,`mPurchaseState`,`mDeveloperPayload`,`mToken`,`mOriginalJson`,`mSignature`,`mIsAutoRenewing`,`sent`,`isGPlay`,`inventoryPrice`,`inventoryPriceCurrencyCode`,`inventoryType`,`inventoryTitle`,`inventoryDescription`,`inventoryPriceAmountMicros`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `Billing`(`id` INTEGER PRIMARY KEY AUTOINCREMENT, `mItemType` TEXT, `mOrderId` TEXT, `mPackageName` TEXT, `mSku` TEXT, `mPurchaseTime` INTEGER, `mPurchaseState` INTEGER, `mDeveloperPayload` TEXT, `mToken` TEXT, `mOriginalJson` TEXT, `mSignature` TEXT, `mIsAutoRenewing` INTEGER, `sent` INTEGER, `isGPlay` INTEGER, `inventoryPrice` TEXT, `inventoryPriceCurrencyCode` TEXT, `inventoryType` TEXT, `inventoryTitle` TEXT, `inventoryDescription` TEXT, `inventoryPriceAmountMicros` TEXT)"

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `Billing`(`mItemType`,`mOrderId`,`mPackageName`,`mSku`,`mPurchaseTime`,`mPurchaseState`,`mDeveloperPayload`,`mToken`,`mOriginalJson`,`mSignature`,`mIsAutoRenewing`,`sent`,`isGPlay`,`inventoryPrice`,`inventoryPriceCurrencyCode`,`inventoryType`,`inventoryTitle`,`inventoryDescription`,`inventoryPriceAmountMicros`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    const-string v0, "`Billing`"

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE `Billing` SET `id`=?,`mItemType`=?,`mOrderId`=?,`mPackageName`=?,`mSku`=?,`mPurchaseTime`=?,`mPurchaseState`=?,`mDeveloperPayload`=?,`mToken`=?,`mOriginalJson`=?,`mSignature`=?,`mIsAutoRenewing`=?,`sent`=?,`isGPlay`=?,`inventoryPrice`=?,`inventoryPriceCurrencyCode`=?,`inventoryType`=?,`inventoryTitle`=?,`inventoryDescription`=?,`inventoryPriceAmountMicros`=? WHERE `id`=?"

    return-object v0
.end method

.method public s(Ljava/lang/Object;Ljava/lang/Number;)V
    .locals 0

    .line 1
    check-cast p1, Lh8/e;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iput p2, p1, Lh8/e;->b:I

    return-void
.end method

.method public final t(Landroid/support/v4/media/a;Lh8/e;I)V
    .locals 8

    add-int/lit8 v0, p3, 0x1

    .line 1
    iget-object v1, p2, Lh8/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 2
    iget-object v1, p2, Lh8/e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 3
    iget-object v1, p2, Lh8/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 4
    iget-object v1, p2, Lh8/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 5
    iget-wide v1, p2, Lh8/e;->g:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x6

    .line 6
    iget v1, p2, Lh8/e;->h:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x7

    .line 7
    iget-object v1, p2, Lh8/e;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x8

    .line 8
    iget-object v1, p2, Lh8/e;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x9

    .line 9
    iget-object v1, p2, Lh8/e;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0xa

    .line 10
    iget-object v1, p2, Lh8/e;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0xb

    .line 11
    iget-boolean v1, p2, Lh8/e;->m:Z

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_0

    move-wide v6, v2

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0xc

    .line 12
    iget-boolean v1, p2, Lh8/e;->n:Z

    if-eqz v1, :cond_1

    move-wide v6, v2

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0xd

    .line 13
    iget-boolean v1, p2, Lh8/e;->o:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-wide v2, v4

    :goto_2
    invoke-virtual {p1, v0, v2, v3}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0xe

    .line 14
    iget-object v1, p2, Lh8/e;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0xf

    .line 15
    iget-object v1, p2, Lh8/e;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x10

    .line 16
    iget-object v1, p2, Lh8/e;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x11

    .line 17
    iget-object v1, p2, Lh8/e;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x12

    .line 18
    iget-object v1, p2, Lh8/e;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 p3, p3, 0x13

    .line 19
    iget-object p2, p2, Lh8/e;->u:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    return-void
.end method

.method public final u(Lh8/e;)Lw8/l;
    .locals 2

    .line 1
    new-instance v0, Lw8/l;

    invoke-direct {v0}, Lw8/l;-><init>()V

    .line 2
    sget-object v1, Lh8/f;->f:Lx8/b;

    iget p1, p1, Lh8/e;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p1

    const-string v1, "AND"

    .line 3
    invoke-virtual {v0, v1, p1}, Lw8/l;->k(Ljava/lang/String;Lw8/n;)Lw8/l;

    return-object v0
.end method
