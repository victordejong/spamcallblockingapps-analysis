.class public final enum Le2/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le2/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le2/h;

.field public static final enum b:Le2/h;

.field public static final enum c:Le2/h;

.field public static final synthetic d:[Le2/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le2/h;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le2/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le2/h;->a:Le2/h;

    .line 2
    new-instance v1, Le2/h;

    const-string v3, "ADAPTIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le2/h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le2/h;->b:Le2/h;

    .line 3
    new-instance v3, Le2/h;

    const-string v5, "NEVER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le2/h;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le2/h;->c:Le2/h;

    const/4 v5, 0x3

    new-array v5, v5, [Le2/h;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Le2/h;->d:[Le2/h;

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

.method public static valueOf(Ljava/lang/String;)Le2/h;
    .locals 1

    .line 1
    const-class v0, Le2/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le2/h;

    return-object p0
.end method

.method public static values()[Le2/h;
    .locals 1

    .line 1
    sget-object v0, Le2/h;->d:[Le2/h;

    invoke-virtual {v0}, [Le2/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le2/h;

    return-object v0
.end method
