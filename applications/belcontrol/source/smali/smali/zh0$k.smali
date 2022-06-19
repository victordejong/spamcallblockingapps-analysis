.class public final enum Lzh0$k;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzh0$k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lzh0$k;

.field public static final enum b:Lzh0$k;

.field public static final enum c:Lzh0$k;

.field public static final synthetic d:[Lzh0$k;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lzh0$k;

    const-string v1, "pad"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzh0$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzh0$k;->a:Lzh0$k;

    new-instance v1, Lzh0$k;

    const-string v3, "reflect"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzh0$k;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzh0$k;->b:Lzh0$k;

    new-instance v3, Lzh0$k;

    const-string v5, "repeat"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzh0$k;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzh0$k;->c:Lzh0$k;

    const/4 v5, 0x3

    new-array v5, v5, [Lzh0$k;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lzh0$k;->d:[Lzh0$k;

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

.method public static valueOf(Ljava/lang/String;)Lzh0$k;
    .locals 1

    const-class v0, Lzh0$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzh0$k;

    return-object p0
.end method

.method public static values()[Lzh0$k;
    .locals 1

    sget-object v0, Lzh0$k;->d:[Lzh0$k;

    invoke-virtual {v0}, [Lzh0$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzh0$k;

    return-object v0
.end method
