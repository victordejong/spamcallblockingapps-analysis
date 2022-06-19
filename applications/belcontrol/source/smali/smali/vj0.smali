.class public final enum Lvj0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvj0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lvj0;

.field public static final enum b:Lvj0;

.field public static final enum c:Lvj0;

.field public static final enum d:Lvj0;

.field public static final synthetic f:[Lvj0;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lvj0;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lvj0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvj0;->a:Lvj0;

    new-instance v1, Lvj0;

    const-string v3, "SERVER_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lvj0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lvj0;->b:Lvj0;

    new-instance v3, Lvj0;

    const-string v5, "NO_CONNECTIVITY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lvj0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lvj0;->c:Lvj0;

    new-instance v5, Lvj0;

    const-string v7, "UNKNOWN_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lvj0;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lvj0;->d:Lvj0;

    const/4 v7, 0x4

    new-array v7, v7, [Lvj0;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lvj0;->f:[Lvj0;

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

.method public static valueOf(Ljava/lang/String;)Lvj0;
    .locals 1

    const-class v0, Lvj0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvj0;

    return-object p0
.end method

.method public static values()[Lvj0;
    .locals 1

    sget-object v0, Lvj0;->f:[Lvj0;

    invoke-virtual {v0}, [Lvj0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvj0;

    return-object v0
.end method
