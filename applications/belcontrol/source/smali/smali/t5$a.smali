.class public final enum Lt5$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lt5$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lt5$a;

.field public static final enum b:Lt5$a;

.field public static final enum c:Lt5$a;

.field public static final enum d:Lt5$a;

.field public static final enum f:Lt5$a;

.field public static final synthetic g:[Lt5$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lt5$a;

    const-string v1, "UNRESTRICTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lt5$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt5$a;->a:Lt5$a;

    new-instance v1, Lt5$a;

    const-string v3, "CONSTANT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lt5$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lt5$a;->b:Lt5$a;

    new-instance v3, Lt5$a;

    const-string v5, "SLACK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lt5$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lt5$a;->c:Lt5$a;

    new-instance v5, Lt5$a;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lt5$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lt5$a;->d:Lt5$a;

    new-instance v7, Lt5$a;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lt5$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lt5$a;->f:Lt5$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lt5$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lt5$a;->g:[Lt5$a;

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

.method public static valueOf(Ljava/lang/String;)Lt5$a;
    .locals 1

    const-class v0, Lt5$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt5$a;

    return-object p0
.end method

.method public static values()[Lt5$a;
    .locals 1

    sget-object v0, Lt5$a;->g:[Lt5$a;

    invoke-virtual {v0}, [Lt5$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt5$a;

    return-object v0
.end method
