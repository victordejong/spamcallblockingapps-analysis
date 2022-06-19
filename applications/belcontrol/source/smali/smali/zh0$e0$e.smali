.class public final enum Lzh0$e0$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh0$e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzh0$e0$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lzh0$e0$e;

.field public static final enum b:Lzh0$e0$e;

.field public static final enum c:Lzh0$e0$e;

.field public static final synthetic d:[Lzh0$e0$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lzh0$e0$e;

    const-string v1, "Start"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzh0$e0$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzh0$e0$e;->a:Lzh0$e0$e;

    new-instance v1, Lzh0$e0$e;

    const-string v3, "Middle"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzh0$e0$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzh0$e0$e;->b:Lzh0$e0$e;

    new-instance v3, Lzh0$e0$e;

    const-string v5, "End"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzh0$e0$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzh0$e0$e;->c:Lzh0$e0$e;

    const/4 v5, 0x3

    new-array v5, v5, [Lzh0$e0$e;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lzh0$e0$e;->d:[Lzh0$e0$e;

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

.method public static valueOf(Ljava/lang/String;)Lzh0$e0$e;
    .locals 1

    const-class v0, Lzh0$e0$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzh0$e0$e;

    return-object p0
.end method

.method public static values()[Lzh0$e0$e;
    .locals 1

    sget-object v0, Lzh0$e0$e;->d:[Lzh0$e0$e;

    invoke-virtual {v0}, [Lzh0$e0$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzh0$e0$e;

    return-object v0
.end method
