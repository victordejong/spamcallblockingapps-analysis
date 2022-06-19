.class public final enum Lq71$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq71;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq71$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lq71$e;

.field public static final enum c:Lq71$e;

.field public static final enum d:Lq71$e;

.field public static final synthetic f:[Lq71$e;


# instance fields
.field public a:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lq71$e;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "CALL"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lq71$e;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lq71$e;->b:Lq71$e;

    new-instance v2, Lq71$e;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "SMS"

    invoke-direct {v2, v6, v1, v5}, Lq71$e;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v2, Lq71$e;->c:Lq71$e;

    new-instance v5, Lq71$e;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "MMS"

    invoke-direct {v5, v7, v3, v6}, Lq71$e;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v5, Lq71$e;->d:Lq71$e;

    const/4 v6, 0x3

    new-array v6, v6, [Lq71$e;

    aput-object v0, v6, v4

    aput-object v2, v6, v1

    aput-object v5, v6, v3

    sput-object v6, Lq71$e;->f:[Lq71$e;

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

    iput-object p3, p0, Lq71$e;->a:Ljava/lang/Integer;

    return-void
.end method

.method public static a(Ljava/util/EnumSet;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lq71$e;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq71$e;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Lq71$e;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static c(Ljava/lang/Integer;)Ljava/util/EnumSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/EnumSet<",
            "Lq71$e;",
            ">;"
        }
    .end annotation

    const-class v0, Lq71$e;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {}, Lq71$e;->values()[Lq71$e;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Lq71$e;->b()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/2addr v5, v6

    invoke-virtual {v4}, Lq71$e;->b()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lq71$e;
    .locals 1

    const-class v0, Lq71$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq71$e;

    return-object p0
.end method

.method public static values()[Lq71$e;
    .locals 1

    sget-object v0, Lq71$e;->f:[Lq71$e;

    invoke-virtual {v0}, [Lq71$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq71$e;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lq71$e;->a:Ljava/lang/Integer;

    return-object v0
.end method
