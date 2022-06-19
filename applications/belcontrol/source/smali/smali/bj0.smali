.class public final enum Lbj0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbj0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbj0;

.field public static final enum b:Lbj0;

.field public static final enum c:Lbj0;

.field public static final synthetic d:[Lbj0;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lbj0;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbj0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbj0;->a:Lbj0;

    new-instance v1, Lbj0;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbj0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbj0;->b:Lbj0;

    new-instance v3, Lbj0;

    const-string v5, "DELETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lbj0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lbj0;->c:Lbj0;

    const/4 v5, 0x3

    new-array v5, v5, [Lbj0;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lbj0;->d:[Lbj0;

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

.method public static valueOf(Ljava/lang/String;)Lbj0;
    .locals 1

    const-class v0, Lbj0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbj0;

    return-object p0
.end method

.method public static values()[Lbj0;
    .locals 1

    sget-object v0, Lbj0;->d:[Lbj0;

    invoke-virtual {v0}, [Lbj0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbj0;

    return-object v0
.end method
