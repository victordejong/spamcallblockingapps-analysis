.class public final enum Lq71$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq71;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq71$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lq71$a;

.field public static final enum d:Lq71$a;

.field public static final enum f:Lq71$a;

.field public static final enum g:Lq71$a;

.field public static final synthetic h:[Lq71$a;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lq71$a;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Li61;->bydefault:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "DEFAULT"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lq71$a;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lq71$a;->c:Lq71$a;

    new-instance v1, Lq71$a;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Li61;->drop:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "PICKUP_HANGUP"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lq71$a;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v1, Lq71$a;->d:Lq71$a;

    new-instance v2, Lq71$a;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v5, Li61;->ignore:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "IGNORE"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lq71$a;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v2, Lq71$a;->f:Lq71$a;

    new-instance v3, Lq71$a;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v7, Li61;->sentToVoicemail:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "VOICE_MAIL"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, Lq71$a;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v3, Lq71$a;->g:Lq71$a;

    const/4 v5, 0x4

    new-array v5, v5, [Lq71$a;

    aput-object v0, v5, v4

    aput-object v1, v5, v6

    aput-object v2, v5, v8

    aput-object v3, v5, v10

    sput-object v5, Lq71$a;->h:[Lq71$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lq71$a;->a:Ljava/lang/Integer;

    iput-object p4, p0, Lq71$a;->b:Ljava/lang/Integer;

    return-void
.end method

.method public static a()Lq71$a;
    .locals 1

    sget-object v0, Lr71$a;->n:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lq71$a;->h(Ljava/lang/Integer;)Lq71$a;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lq71$a;
    .locals 1

    sget-object v0, Lr71$a;->o:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lq71$a;->h(Ljava/lang/Integer;)Lq71$a;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lq71$a;)V
    .locals 1

    sget-object v0, Lq71$a;->c:Lq71$a;

    if-eq v0, p0, :cond_0

    sget-object v0, Lr71$a;->n:Lr71$a;

    invoke-virtual {p0}, Lq71$a;->g()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lr71$a;->m(Ljava/lang/Integer;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set preferred BlockMode as DEFAULT which is illegal"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lq71$a;)V
    .locals 1

    sget-object v0, Lq71$a;->c:Lq71$a;

    if-eq v0, p0, :cond_0

    sget-object v0, Lr71$a;->o:Lr71$a;

    invoke-virtual {p0}, Lq71$a;->g()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lr71$a;->m(Ljava/lang/Integer;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to set second line preferred BlockMode as DEFAULT which is illegal"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Ljava/lang/Integer;)Lq71$a;
    .locals 5

    invoke-static {}, Lq71$a;->values()[Lq71$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lq71$a;->g()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lq71$a;->c:Lq71$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lq71$a;
    .locals 1

    const-class v0, Lq71$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq71$a;

    return-object p0
.end method

.method public static values()[Lq71$a;
    .locals 1

    sget-object v0, Lq71$a;->h:[Lq71$a;

    invoke-virtual {v0}, [Lq71$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq71$a;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lq71$a;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public d()Lq71$a;
    .locals 1

    sget-object v0, Lq71$a;->c:Lq71$a;

    if-eq v0, p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lq71$a;->a()Lq71$a;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lq71$a;->a:Ljava/lang/Integer;

    return-object v0
.end method
