.class public final enum Lo01;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lk01;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo01;",
        ">;",
        "Lk01;"
    }
.end annotation


# static fields
.field public static final enum d:Lo01;

.field public static final enum f:Lo01;

.field public static final synthetic g:[Lo01;


# instance fields
.field public a:I

.field public b:I

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v6, Lo01;

    sget-object v0, Lr71$a;->f:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v5

    const-string v1, "LEGACY_INTERFACE"

    const/4 v2, 0x0

    const v3, 0x7f1103d7

    const v4, 0x7f1103d8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo01;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lo01;->d:Lo01;

    new-instance v0, Lo01;

    const-string v8, "APP_LANGUAGES"

    const/4 v9, 0x1

    const v10, 0x7f1100bf

    const v11, 0x7f1100c0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo01;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lo01;->f:Lo01;

    const/4 v1, 0x2

    new-array v1, v1, [Lo01;

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lo01;->g:[Lo01;

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

    iput p3, p0, Lo01;->a:I

    iput p4, p0, Lo01;->b:I

    iput-boolean p5, p0, Lo01;->c:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo01;
    .locals 1

    const-class v0, Lo01;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo01;

    return-object p0
.end method

.method public static values()[Lo01;
    .locals 1

    sget-object v0, Lo01;->g:[Lo01;

    invoke-virtual {v0}, [Lo01;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo01;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lo01;->c:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lo01;->c:Z

    return v0
.end method

.method public c()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lo01;->b:I

    return v0
.end method

.method public getTitle()I
    .locals 1

    iget v0, p0, Lo01;->a:I

    return v0
.end method
