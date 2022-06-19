.class public final enum Lv40;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lv40;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lv40;

.field public static final enum b:Lv40;

.field public static final enum c:Lv40;

.field public static final synthetic d:[Lv40;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lv40;

    const-string v1, "REPLACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lv40;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv40;->a:Lv40;

    new-instance v1, Lv40;

    const-string v3, "KEEP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lv40;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lv40;->b:Lv40;

    new-instance v3, Lv40;

    const-string v5, "APPEND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lv40;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lv40;->c:Lv40;

    const/4 v5, 0x3

    new-array v5, v5, [Lv40;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lv40;->d:[Lv40;

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

.method public static valueOf(Ljava/lang/String;)Lv40;
    .locals 1

    const-class v0, Lv40;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv40;

    return-object p0
.end method

.method public static values()[Lv40;
    .locals 1

    sget-object v0, Lv40;->d:[Lv40;

    invoke-virtual {v0}, [Lv40;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv40;

    return-object v0
.end method
