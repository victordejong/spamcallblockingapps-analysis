.class public final enum Lc01;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc01;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lc01;

.field public static final enum c:Lc01;

.field public static final synthetic d:[Lc01;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lc01;

    const-string v1, "RO_RECENT_CALLS"

    const/4 v2, 0x0

    const v3, 0x7f110405

    invoke-direct {v0, v1, v2, v3}, Lc01;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc01;->b:Lc01;

    new-instance v1, Lc01;

    const-string v3, "RO_RECENT_MESSAGES"

    const/4 v4, 0x1

    const v5, 0x7f110406

    invoke-direct {v1, v3, v4, v5}, Lc01;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lc01;->c:Lc01;

    const/4 v3, 0x2

    new-array v3, v3, [Lc01;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lc01;->d:[Lc01;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lc01;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc01;
    .locals 1

    const-class v0, Lc01;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc01;

    return-object p0
.end method

.method public static values()[Lc01;
    .locals 1

    sget-object v0, Lc01;->d:[Lc01;

    invoke-virtual {v0}, [Lc01;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc01;

    return-object v0
.end method
