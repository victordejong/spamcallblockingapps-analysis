.class public final enum Lqn0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqn0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lqn0;

.field public static final enum c:Lqn0;

.field public static final enum d:Lqn0;

.field public static final enum f:Lqn0;

.field public static final synthetic g:[Lqn0;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lqn0;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lqn0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lqn0;->b:Lqn0;

    new-instance v1, Lqn0;

    const-string v3, "ONLY_ME"

    const/4 v4, 0x1

    const-string v5, "only_me"

    invoke-direct {v1, v3, v4, v5}, Lqn0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lqn0;->c:Lqn0;

    new-instance v3, Lqn0;

    const-string v5, "FRIENDS"

    const/4 v6, 0x2

    const-string v7, "friends"

    invoke-direct {v3, v5, v6, v7}, Lqn0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lqn0;->d:Lqn0;

    new-instance v5, Lqn0;

    const-string v7, "EVERYONE"

    const/4 v8, 0x3

    const-string v9, "everyone"

    invoke-direct {v5, v7, v8, v9}, Lqn0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lqn0;->f:Lqn0;

    const/4 v7, 0x4

    new-array v7, v7, [Lqn0;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lqn0;->g:[Lqn0;

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

    iput-object p3, p0, Lqn0;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lqn0;
    .locals 1

    const-class v0, Lqn0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lqn0;

    return-object p0
.end method

.method public static values()[Lqn0;
    .locals 1

    sget-object v0, Lqn0;->g:[Lqn0;

    invoke-virtual {v0}, [Lqn0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqn0;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqn0;->a:Ljava/lang/String;

    return-object v0
.end method
