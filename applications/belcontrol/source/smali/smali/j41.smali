.class public final enum Lj41;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj41;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lj41;

.field public static final enum c:Lj41;

.field public static final enum d:Lj41;

.field public static final enum f:Lj41;

.field public static final synthetic g:[Lj41;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lj41;

    const-string v1, "PREROLL"

    const/4 v2, 0x0

    const-string v3, "preroll"

    invoke-direct {v0, v1, v2, v3}, Lj41;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj41;->b:Lj41;

    new-instance v1, Lj41;

    const-string v3, "MIDROLL"

    const/4 v4, 0x1

    const-string v5, "midroll"

    invoke-direct {v1, v3, v4, v5}, Lj41;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lj41;->c:Lj41;

    new-instance v3, Lj41;

    const-string v5, "POSTROLL"

    const/4 v6, 0x2

    const-string v7, "postroll"

    invoke-direct {v3, v5, v6, v7}, Lj41;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lj41;->d:Lj41;

    new-instance v5, Lj41;

    const-string v7, "STANDALONE"

    const/4 v8, 0x3

    const-string v9, "standalone"

    invoke-direct {v5, v7, v8, v9}, Lj41;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lj41;->f:Lj41;

    const/4 v7, 0x4

    new-array v7, v7, [Lj41;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lj41;->g:[Lj41;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lj41;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj41;
    .locals 1

    const-class v0, Lj41;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj41;

    return-object p0
.end method

.method public static values()[Lj41;
    .locals 1

    sget-object v0, Lj41;->g:[Lj41;

    invoke-virtual {v0}, [Lj41;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj41;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj41;->a:Ljava/lang/String;

    return-object v0
.end method
