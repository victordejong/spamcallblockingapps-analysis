.class public final enum Lz5$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz5$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lz5$b;

.field public static final enum b:Lz5$b;

.field public static final enum c:Lz5$b;

.field public static final enum d:Lz5$b;

.field public static final synthetic f:[Lz5$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lz5$b;

    const-string v1, "FIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz5$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz5$b;->a:Lz5$b;

    new-instance v1, Lz5$b;

    const-string v3, "WRAP_CONTENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lz5$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz5$b;->b:Lz5$b;

    new-instance v3, Lz5$b;

    const-string v5, "MATCH_CONSTRAINT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lz5$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lz5$b;->c:Lz5$b;

    new-instance v5, Lz5$b;

    const-string v7, "MATCH_PARENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lz5$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lz5$b;->d:Lz5$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lz5$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lz5$b;->f:[Lz5$b;

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

.method public static valueOf(Ljava/lang/String;)Lz5$b;
    .locals 1

    const-class v0, Lz5$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz5$b;

    return-object p0
.end method

.method public static values()[Lz5$b;
    .locals 1

    sget-object v0, Lz5$b;->f:[Lz5$b;

    invoke-virtual {v0}, [Lz5$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz5$b;

    return-object v0
.end method
