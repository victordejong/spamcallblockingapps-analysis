.class public final enum Li11;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lk01;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li11;",
        ">;",
        "Lk01;"
    }
.end annotation


# static fields
.field public static final enum f:Li11;

.field public static final enum g:Li11;

.field public static final enum h:Li11;

.field public static final enum j:Li11;

.field public static final enum k:Li11;

.field public static final enum l:Li11;

.field public static final enum m:Li11;

.field public static final enum n:Li11;

.field public static final enum o:Li11;

.field public static final enum p:Li11;

.field public static final enum q:Li11;

.field public static final synthetic r:[Li11;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    new-instance v7, Li11;

    const-string v1, "COMMUNITY_IQ"

    const/4 v2, 0x0

    const v3, 0x7f1101ea

    const v4, 0x7f1101eb

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Li11;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v7, Li11;->f:Li11;

    new-instance v0, Li11;

    const-string v9, "REALTIME_CALLBLOCKING"

    const/4 v10, 0x1

    const v11, 0x7f1105dd

    const v12, 0x7f1105df

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Li11;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v0, Li11;->g:Li11;

    new-instance v1, Li11;

    const-string v16, "BLOCK_BY_CARRIER_NAME"

    const/16 v17, 0x2

    const v18, 0x7f1100e8

    const v19, 0x7f1100ef

    const/16 v20, -0x1

    const/16 v21, 0x0

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Li11;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v1, Li11;->h:Li11;

    new-instance v2, Li11;

    const-string v9, "SPOOFED_SIMILAR_NUMBER"

    const/4 v10, 0x3

    const v11, 0x7f110690

    const/4 v12, -0x1

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Li11;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v2, Li11;->j:Li11;

    new-instance v3, Li11;

    const-string v16, "PRIVATE_CALLS"

    const/16 v17, 0x4

    const v18, 0x7f1105a0

    const v19, 0x7f1105a1

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Li11;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v3, Li11;->k:Li11;

    new-instance v4, Li11;

    const-string v9, "UNKNOWN_CALLS"

    const/4 v10, 0x5

    const v11, 0x7f110737

    const v12, 0x7f110738

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Li11;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v4, Li11;->l:Li11;

    new-instance v5, Li11;

    const-string v16, "FAKE_CALLER_ID"

    const/16 v17, 0x6

    const v18, 0x7f110348

    const v19, 0x7f110349

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Li11;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v5, Li11;->m:Li11;

    new-instance v6, Li11;

    const-string v9, "NON_NUMERIC"

    const/4 v10, 0x7

    const v11, 0x7f110534

    const v12, 0x7f110535

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Li11;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v6, Li11;->n:Li11;

    new-instance v8, Li11;

    const-string v16, "EMAILED_TXT_MSG"

    const/16 v17, 0x8

    const v18, 0x7f1102cf

    const v19, 0x7f1102d0

    move-object v15, v8

    invoke-direct/range {v15 .. v21}, Li11;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v8, Li11;->o:Li11;

    new-instance v16, Li11;

    const-string v10, "TOLL_FREE_NUMBERS"

    const/16 v11, 0x9

    const v12, 0x7f11072b

    const v13, 0x7f11072c

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Li11;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v16, Li11;->p:Li11;

    new-instance v9, Li11;

    const-string v18, "INTERNATIONAL_NUMBERS"

    const/16 v19, 0xa

    const v20, 0x7f1103c6

    const v21, 0x7f1103c7

    const/16 v22, -0x1

    const/16 v23, 0x0

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v23}, Li11;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v9, Li11;->q:Li11;

    const/16 v10, 0xb

    new-array v10, v10, [Li11;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v7, 0x1

    aput-object v0, v10, v7

    const/4 v0, 0x2

    aput-object v1, v10, v0

    const/4 v0, 0x3

    aput-object v2, v10, v0

    const/4 v0, 0x4

    aput-object v3, v10, v0

    const/4 v0, 0x5

    aput-object v4, v10, v0

    const/4 v0, 0x6

    aput-object v5, v10, v0

    const/4 v0, 0x7

    aput-object v6, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v16, v10, v0

    const/16 v0, 0xa

    aput-object v9, v10, v0

    sput-object v10, Li11;->r:[Li11;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Li11;->a:I

    iput p4, p0, Li11;->b:I

    iput p5, p0, Li11;->c:I

    iput-boolean p6, p0, Li11;->d:Z

    return-void
.end method

.method public static e()V
    .locals 5

    sget-object v0, Li11;->f:Li11;

    sget-object v1, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lr71$a;->g:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Li11;->d:Z

    sget-object v0, Li11;->j:Li11;

    invoke-static {}, Lr71$b;->f()Lr71$b;

    move-result-object v2

    iget-boolean v2, v2, Lea1;->a:Z

    iput-boolean v2, v0, Li11;->d:Z

    sget-object v0, Li11;->k:Li11;

    sget-object v2, Lr71$a;->x:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    iput-boolean v2, v0, Li11;->d:Z

    sget-object v0, Li11;->l:Li11;

    sget-object v2, Lr71$a;->y:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    iput-boolean v2, v0, Li11;->d:Z

    sget-object v0, Li11;->m:Li11;

    sget-object v2, Lr71$a;->z:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    iput-boolean v2, v0, Li11;->d:Z

    sget-object v0, Li11;->n:Li11;

    sget-object v2, Lr71$a;->A:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    iput-boolean v2, v0, Li11;->d:Z

    sget-object v0, Li11;->o:Li11;

    sget-object v2, Lr71$a;->B:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    iput-boolean v2, v0, Li11;->d:Z

    sget-object v0, Li11;->p:Li11;

    sget-object v2, Lr71$a;->C:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    iput-boolean v2, v0, Li11;->d:Z

    sget-object v0, Li11;->q:Li11;

    sget-object v2, Lr71$a;->D:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    iput-boolean v2, v0, Li11;->d:Z

    sget-object v0, Li11;->g:Li11;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lr71$a;->h:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lr71$a;->g:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v0, Li11;->d:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li11;
    .locals 1

    const-class v0, Li11;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li11;

    return-object p0
.end method

.method public static values()[Li11;
    .locals 1

    sget-object v0, Li11;->r:[Li11;

    invoke-virtual {v0}, [Li11;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li11;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Li11;->d:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Li11;->d:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Li11;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Li11;->b:I

    return v0
.end method

.method public getTitle()I
    .locals 1

    iget v0, p0, Li11;->a:I

    return v0
.end method
