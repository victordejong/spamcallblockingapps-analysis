.class public final enum Li01;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lk01;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li01;",
        ">;",
        "Lk01;"
    }
.end annotation


# static fields
.field public static final enum f:Li01;

.field public static final enum g:Li01;

.field public static final enum h:Li01;

.field public static final enum j:Li01;

.field public static final enum k:Li01;

.field public static final enum l:Li01;

.field public static final synthetic m:[Li01;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v7, Li01;

    const-string v1, "CALL_BLOCKING"

    const/4 v2, 0x0

    const v3, 0x7f110141

    const v4, 0x7f110144

    const v5, 0x7f0801a8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Li01;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v7, Li01;->f:Li01;

    new-instance v0, Li01;

    const-string v9, "CALL_BLOCKING_MODES"

    const/4 v10, 0x1

    const v11, 0x7f110142

    const v12, 0x7f110143

    const v13, 0x7f0801a9

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Li01;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v0, Li01;->g:Li01;

    new-instance v1, Li01;

    const-string v16, "CALLER_ID"

    const/16 v17, 0x2

    const v18, 0x7f110198

    const v19, 0x7f1101a1

    const v20, 0x7f0801af

    const/16 v21, 0x0

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Li01;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v1, Li01;->h:Li01;

    new-instance v2, Li01;

    const-string v9, "SMS_BLOCKING"

    const/4 v10, 0x3

    const v11, 0x7f110689

    const v12, 0x7f11068a

    const v13, 0x7f08036e

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Li01;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v2, Li01;->j:Li01;

    new-instance v3, Li01;

    const-string v16, "NOTIFICATIONS"

    const/16 v17, 0x4

    const v18, 0x7f110548

    const v19, 0x7f110549

    const v20, 0x7f080307

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Li01;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v3, Li01;->k:Li01;

    new-instance v4, Li01;

    const-string v9, "APPEARANCE"

    const/4 v10, 0x5

    const v11, 0x7f1100cd

    const v12, 0x7f1100ce

    const v13, 0x7f08016c

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Li01;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v4, Li01;->l:Li01;

    const/4 v5, 0x6

    new-array v5, v5, [Li01;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v3, v5, v0

    const/4 v0, 0x5

    aput-object v4, v5, v0

    sput-object v5, Li01;->m:[Li01;

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

    iput p3, p0, Li01;->a:I

    iput p4, p0, Li01;->b:I

    iput p5, p0, Li01;->c:I

    iput-boolean p6, p0, Li01;->d:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li01;
    .locals 1

    const-class v0, Li01;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li01;

    return-object p0
.end method

.method public static values()[Li01;
    .locals 1

    sget-object v0, Li01;->m:[Li01;

    invoke-virtual {v0}, [Li01;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li01;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Li01;->d:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Li01;->d:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Li01;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Li01;->b:I

    return v0
.end method

.method public getTitle()I
    .locals 1

    iget v0, p0, Li01;->a:I

    return v0
.end method
