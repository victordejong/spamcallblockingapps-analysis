.class public final enum Le2/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le2/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le2/b;

.field public static final enum b:Le2/b;

.field public static final enum c:Le2/b;

.field public static final synthetic d:[Le2/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le2/b;

    const-string v1, "POSITIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le2/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le2/b;->a:Le2/b;

    .line 2
    new-instance v1, Le2/b;

    const-string v3, "NEUTRAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le2/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le2/b;->b:Le2/b;

    .line 3
    new-instance v3, Le2/b;

    const-string v5, "NEGATIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le2/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le2/b;->c:Le2/b;

    const/4 v5, 0x3

    new-array v5, v5, [Le2/b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Le2/b;->d:[Le2/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le2/b;
    .locals 1

    .line 1
    const-class v0, Le2/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le2/b;

    return-object p0
.end method

.method public static values()[Le2/b;
    .locals 1

    .line 1
    sget-object v0, Le2/b;->d:[Le2/b;

    invoke-virtual {v0}, [Le2/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le2/b;

    return-object v0
.end method
