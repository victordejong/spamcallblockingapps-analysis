.class public final enum Lit0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lit0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lit0;

.field public static final enum b:Lit0;

.field public static final enum c:Lit0;

.field public static final synthetic d:[Lit0;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lit0;

    const-string v1, "PRIVATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lit0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit0;->a:Lit0;

    new-instance v1, Lit0;

    const-string v3, "UNKNOWN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lit0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lit0;->b:Lit0;

    new-instance v3, Lit0;

    const-string v5, "ALPHANUMERIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lit0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lit0;->c:Lit0;

    const/4 v5, 0x3

    new-array v5, v5, [Lit0;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lit0;->d:[Lit0;

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

.method public static valueOf(Ljava/lang/String;)Lit0;
    .locals 1

    const-class v0, Lit0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lit0;

    return-object p0
.end method

.method public static values()[Lit0;
    .locals 1

    sget-object v0, Lit0;->d:[Lit0;

    invoke-virtual {v0}, [Lit0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lit0;

    return-object v0
.end method
