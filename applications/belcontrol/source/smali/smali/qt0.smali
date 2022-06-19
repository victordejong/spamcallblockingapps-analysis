.class public final enum Lqt0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqt0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lqt0;

.field public static final enum b:Lqt0;

.field public static final enum c:Lqt0;

.field public static final synthetic d:[Lqt0;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lqt0;

    const-string v1, "BLACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lqt0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqt0;->a:Lqt0;

    new-instance v1, Lqt0;

    const-string v3, "BLUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lqt0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lqt0;->b:Lqt0;

    new-instance v3, Lqt0;

    const-string v5, "WHITE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lqt0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lqt0;->c:Lqt0;

    const/4 v5, 0x3

    new-array v5, v5, [Lqt0;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lqt0;->d:[Lqt0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lqt0;
    .locals 1

    const-class v0, Lqt0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lqt0;

    return-object p0
.end method

.method public static values()[Lqt0;
    .locals 1

    sget-object v0, Lqt0;->d:[Lqt0;

    invoke-virtual {v0}, [Lqt0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqt0;

    return-object v0
.end method
