.class public final enum Lq71$d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq71;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq71$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lq71$d;

.field public static final enum c:Lq71$d;

.field public static final enum d:Lq71$d;

.field public static final synthetic f:[Lq71$d;


# instance fields
.field public a:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lq71$d;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "UNKNOWN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lq71$d;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lq71$d;->b:Lq71$d;

    new-instance v2, Lq71$d;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ERROR"

    invoke-direct {v2, v6, v1, v5}, Lq71$d;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v2, Lq71$d;->c:Lq71$d;

    new-instance v5, Lq71$d;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "SUCCESS"

    invoke-direct {v5, v8, v3, v7}, Lq71$d;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v5, Lq71$d;->d:Lq71$d;

    new-array v6, v6, [Lq71$d;

    aput-object v0, v6, v4

    aput-object v2, v6, v1

    aput-object v5, v6, v3

    sput-object v6, Lq71$d;->f:[Lq71$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lq71$d;->a:Ljava/lang/Integer;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq71$d;
    .locals 1

    const-class v0, Lq71$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq71$d;

    return-object p0
.end method

.method public static values()[Lq71$d;
    .locals 1

    sget-object v0, Lq71$d;->f:[Lq71$d;

    invoke-virtual {v0}, [Lq71$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq71$d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lq71$d;->a:Ljava/lang/Integer;

    return-object v0
.end method
