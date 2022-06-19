.class public final enum Luh0$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luh0$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Luh0$c;

.field public static final enum b:Luh0$c;

.field public static final enum c:Luh0$c;

.field public static final enum d:Luh0$c;

.field public static final synthetic f:[Luh0$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Luh0$c;

    const-string v1, "EXISTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luh0$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luh0$c;->a:Luh0$c;

    new-instance v1, Luh0$c;

    const-string v3, "EQUALS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luh0$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luh0$c;->b:Luh0$c;

    new-instance v3, Luh0$c;

    const-string v5, "INCLUDES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luh0$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luh0$c;->c:Luh0$c;

    new-instance v5, Luh0$c;

    const-string v7, "DASHMATCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Luh0$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Luh0$c;->d:Luh0$c;

    const/4 v7, 0x4

    new-array v7, v7, [Luh0$c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Luh0$c;->f:[Luh0$c;

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

.method public static valueOf(Ljava/lang/String;)Luh0$c;
    .locals 1

    const-class v0, Luh0$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luh0$c;

    return-object p0
.end method

.method public static values()[Luh0$c;
    .locals 1

    sget-object v0, Luh0$c;->f:[Luh0$c;

    invoke-virtual {v0}, [Luh0$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luh0$c;

    return-object v0
.end method
