.class public final enum Lz21;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lk01;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz21;",
        ">;",
        "Lk01;"
    }
.end annotation


# static fields
.field public static final enum d:Lz21;

.field public static final enum f:Lz21;

.field public static final enum g:Lz21;

.field public static final enum h:Lz21;

.field public static final synthetic j:[Lz21;


# instance fields
.field public a:I

.field public b:I

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v6, Lz21;

    sget-object v0, Lr71$a;->p:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v5

    const-string v1, "STATUS_NOTIF"

    const/4 v2, 0x0

    const v3, 0x7f1106be

    const v4, 0x7f1106bf

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lz21;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lz21;->d:Lz21;

    new-instance v0, Lz21;

    sget-object v1, Lr71$a;->s:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v12

    const-string v8, "BLOCKED_NOTIF"

    const/4 v9, 0x1

    const v10, 0x7f1100fc

    const v11, 0x7f1100fd

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lz21;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lz21;->f:Lz21;

    new-instance v1, Lz21;

    sget-object v2, Lr71$a;->r:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v18

    const-string v14, "MISSED_CALL_NOTIF"

    const/4 v15, 0x2

    const v16, 0x7f110480

    const v17, 0x7f110481

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lz21;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v1, Lz21;->g:Lz21;

    new-instance v2, Lz21;

    sget-object v3, Lr71$a;->t:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v12

    const-string v8, "IMPORTANT_NOTIF"

    const/4 v9, 0x3

    const v10, 0x7f1103c3

    const v11, 0x7f1103c4

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lz21;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v2, Lz21;->h:Lz21;

    const/4 v3, 0x4

    new-array v3, v3, [Lz21;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    sput-object v3, Lz21;->j:[Lz21;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lz21;->a:I

    iput p4, p0, Lz21;->b:I

    iput-boolean p5, p0, Lz21;->c:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz21;
    .locals 1

    const-class v0, Lz21;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz21;

    return-object p0
.end method

.method public static values()[Lz21;
    .locals 1

    sget-object v0, Lz21;->j:[Lz21;

    invoke-virtual {v0}, [Lz21;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz21;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lz21;->c:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lz21;->c:Z

    return v0
.end method

.method public c()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lz21;->b:I

    return v0
.end method

.method public getTitle()I
    .locals 1

    iget v0, p0, Lz21;->a:I

    return v0
.end method
