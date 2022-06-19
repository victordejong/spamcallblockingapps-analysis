.class public final enum Lep0$d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lep0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lep0$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lep0$d;

.field public static final enum b:Lep0$d;

.field public static final enum c:Lep0$d;

.field public static final enum d:Lep0$d;

.field public static final synthetic f:[Lep0$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lep0$d;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lep0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lep0$d;->a:Lep0$d;

    new-instance v1, Lep0$d;

    const-string v3, "NATIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lep0$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lep0$d;->b:Lep0$d;

    new-instance v3, Lep0$d;

    const-string v5, "WEB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lep0$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lep0$d;->c:Lep0$d;

    new-instance v5, Lep0$d;

    const-string v7, "FEED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lep0$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lep0$d;->d:Lep0$d;

    const/4 v7, 0x4

    new-array v7, v7, [Lep0$d;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lep0$d;->f:[Lep0$d;

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

.method public static valueOf(Ljava/lang/String;)Lep0$d;
    .locals 1

    const-class v0, Lep0$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lep0$d;

    return-object p0
.end method

.method public static values()[Lep0$d;
    .locals 1

    sget-object v0, Lep0$d;->f:[Lep0$d;

    invoke-virtual {v0}, [Lep0$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lep0$d;

    return-object v0
.end method
