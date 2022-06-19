.class public final enum Liv0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Liv0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Liv0;

.field public static final enum f:Liv0;

.field public static final enum g:Liv0;

.field public static final enum h:Liv0;

.field public static final enum j:Liv0;

.field public static final synthetic k:[Liv0;


# instance fields
.field public a:Z

.field public b:I

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v6, Liv0;

    const-string v1, "RECENTS_ITEM"

    const/4 v2, 0x0

    const v3, 0x7f080445

    const v4, 0x7f1105fc

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Liv0;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Liv0;->d:Liv0;

    new-instance v0, Liv0;

    const-string v8, "ACTIVITY_ITEM"

    const/4 v9, 0x1

    const v10, 0x7f080444

    const v11, 0x7f110099

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Liv0;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Liv0;->f:Liv0;

    new-instance v1, Liv0;

    const-string v14, "LEGACY_ITEM"

    const/4 v15, 0x2

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Liv0;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v1, Liv0;->g:Liv0;

    new-instance v2, Liv0;

    const-string v8, "CALL_FILTER_ITEM"

    const/4 v9, 0x3

    const v10, 0x7f08043f

    const v11, 0x7f11014b

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Liv0;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v2, Liv0;->h:Liv0;

    new-instance v3, Liv0;

    const-string v14, "SETTINGS_ITEM"

    const/4 v15, 0x4

    const v16, 0x7f080448

    const v17, 0x7f11066b

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Liv0;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Liv0;->j:Liv0;

    const/4 v4, 0x5

    new-array v4, v4, [Liv0;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    sput-object v4, Liv0;->k:[Liv0;

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

    iput-boolean p5, p0, Liv0;->a:Z

    iput p3, p0, Liv0;->b:I

    iput p4, p0, Liv0;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Liv0;
    .locals 1

    const-class v0, Liv0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Liv0;

    return-object p0
.end method

.method public static values()[Liv0;
    .locals 1

    sget-object v0, Liv0;->k:[Liv0;

    invoke-virtual {v0}, [Liv0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liv0;

    return-object v0
.end method
