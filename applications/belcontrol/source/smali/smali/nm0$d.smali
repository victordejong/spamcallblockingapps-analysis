.class public final enum Lnm0$d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnm0$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lnm0$d;

.field public static final enum b:Lnm0$d;

.field public static final enum c:Lnm0$d;

.field public static final enum d:Lnm0$d;

.field public static final synthetic f:[Lnm0$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lnm0$d;

    const-string v1, "NOT_LOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnm0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnm0$d;->a:Lnm0$d;

    new-instance v1, Lnm0$d;

    const-string v3, "LOADING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnm0$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnm0$d;->b:Lnm0$d;

    new-instance v3, Lnm0$d;

    const-string v5, "SUCCESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnm0$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnm0$d;->c:Lnm0$d;

    new-instance v5, Lnm0$d;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnm0$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnm0$d;->d:Lnm0$d;

    const/4 v7, 0x4

    new-array v7, v7, [Lnm0$d;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lnm0$d;->f:[Lnm0$d;

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

.method public static valueOf(Ljava/lang/String;)Lnm0$d;
    .locals 1

    const-class v0, Lnm0$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnm0$d;

    return-object p0
.end method

.method public static values()[Lnm0$d;
    .locals 1

    sget-object v0, Lnm0$d;->f:[Lnm0$d;

    invoke-virtual {v0}, [Lnm0$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnm0$d;

    return-object v0
.end method
