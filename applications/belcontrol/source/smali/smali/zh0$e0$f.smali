.class public final enum Lzh0$e0$f;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh0$e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzh0$e0$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lzh0$e0$f;

.field public static final enum b:Lzh0$e0$f;

.field public static final enum c:Lzh0$e0$f;

.field public static final enum d:Lzh0$e0$f;

.field public static final enum f:Lzh0$e0$f;

.field public static final synthetic g:[Lzh0$e0$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lzh0$e0$f;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzh0$e0$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzh0$e0$f;->a:Lzh0$e0$f;

    new-instance v1, Lzh0$e0$f;

    const-string v3, "Underline"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzh0$e0$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzh0$e0$f;->b:Lzh0$e0$f;

    new-instance v3, Lzh0$e0$f;

    const-string v5, "Overline"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzh0$e0$f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzh0$e0$f;->c:Lzh0$e0$f;

    new-instance v5, Lzh0$e0$f;

    const-string v7, "LineThrough"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lzh0$e0$f;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lzh0$e0$f;->d:Lzh0$e0$f;

    new-instance v7, Lzh0$e0$f;

    const-string v9, "Blink"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lzh0$e0$f;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lzh0$e0$f;->f:Lzh0$e0$f;

    const/4 v9, 0x5

    new-array v9, v9, [Lzh0$e0$f;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lzh0$e0$f;->g:[Lzh0$e0$f;

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

.method public static valueOf(Ljava/lang/String;)Lzh0$e0$f;
    .locals 1

    const-class v0, Lzh0$e0$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzh0$e0$f;

    return-object p0
.end method

.method public static values()[Lzh0$e0$f;
    .locals 1

    sget-object v0, Lzh0$e0$f;->g:[Lzh0$e0$f;

    invoke-virtual {v0}, [Lzh0$e0$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzh0$e0$f;

    return-object v0
.end method
