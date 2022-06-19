.class public Lcom/yanzhenjie/nohttp/db/Where;
.super Ljava/lang/Object;
.source "Where.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/nohttp/db/Where$Options;
    }
.end annotation


# instance fields
.field private builder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/yanzhenjie/nohttp/db/Where;->add(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;

    return-void
.end method

.method private addColumnName(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;)Lcom/yanzhenjie/nohttp/db/Where;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p1, "\" "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/db/Where$Options;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private and()Lcom/yanzhenjie/nohttp/db/Where;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-object p0
.end method

.method private in(Ljava/util/List;)Lcom/yanzhenjie/nohttp/db/Where;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/yanzhenjie/nohttp/db/Where;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yanzhenjie/nohttp/db/Where$Options;->IN:Lcom/yanzhenjie/nohttp/db/Where$Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, ", "

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v2, v0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5
    :cond_0
    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_1

    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_1

    instance-of v2, v0, Ljava/lang/Short;

    if-eqz v2, :cond_2

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static isNumber(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of p0, p0, Ljava/lang/Float;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private or()Lcom/yanzhenjie/nohttp/db/Where;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final add(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/db/Where$Options;->EQUAL:Lcom/yanzhenjie/nohttp/db/Where$Options;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/yanzhenjie/nohttp/db/Where$Options;->ThAN_LARGE:Lcom/yanzhenjie/nohttp/db/Where$Options;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/yanzhenjie/nohttp/db/Where$Options;->THAN_SMALL:Lcom/yanzhenjie/nohttp/db/Where$Options;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/yanzhenjie/nohttp/db/Where$Options;->NO_EQUAL:Lcom/yanzhenjie/nohttp/db/Where$Options;

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/yanzhenjie/nohttp/db/Where$Options;->IN:Lcom/yanzhenjie/nohttp/db/Where$Options;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p3, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/yanzhenjie/nohttp/db/Where;->addColumnName(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;)Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/yanzhenjie/nohttp/db/Where;->append(Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object p1

    check-cast p3, Ljava/util/List;

    invoke-direct {p1, p3}, Lcom/yanzhenjie/nohttp/db/Where;->in(Ljava/util/List;)Lcom/yanzhenjie/nohttp/db/Where;

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Value is not supported by the data type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/yanzhenjie/nohttp/db/Where;->addColumnName(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;)Lcom/yanzhenjie/nohttp/db/Where;

    .line 7
    invoke-static {p3}, Lcom/yanzhenjie/nohttp/db/Where;->isNumber(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-object p0
.end method

.method public final and(Lcom/yanzhenjie/nohttp/db/Where;)Lcom/yanzhenjie/nohttp/db/Where;
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/db/Where;->and()Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/db/Where;->append(Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object p1

    return-object p1
.end method

.method public final and(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/db/Where;->and()Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/yanzhenjie/nohttp/db/Where;->add(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object p1

    return-object p1
.end method

.method public final andNull(Ljava/lang/CharSequence;)Lcom/yanzhenjie/nohttp/db/Where;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/db/Where;->and()Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/db/Where;->isNull(Ljava/lang/CharSequence;)Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object p1

    return-object p1
.end method

.method public final append(Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final bracket()Lcom/yanzhenjie/nohttp/db/Where;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "("

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/yanzhenjie/nohttp/db/Where;->insert(ILjava/lang/CharSequence;)Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object v0

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/nohttp/db/Where;->append(Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/yanzhenjie/nohttp/db/Where;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final get()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final insert(ILjava/lang/CharSequence;)Lcom/yanzhenjie/nohttp/db/Where;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final isNull(Ljava/lang/CharSequence;)Lcom/yanzhenjie/nohttp/db/Where;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p1, "\" "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "IS "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "NULL"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final or(Lcom/yanzhenjie/nohttp/db/Where;)Lcom/yanzhenjie/nohttp/db/Where;
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/db/Where;->or()Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/db/Where;->append(Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object p1

    return-object p1
.end method

.method public final or(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/db/Where;->or()Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/yanzhenjie/nohttp/db/Where;->add(Ljava/lang/CharSequence;Lcom/yanzhenjie/nohttp/db/Where$Options;Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object p1

    return-object p1
.end method

.method public final orNull(Ljava/lang/CharSequence;)Lcom/yanzhenjie/nohttp/db/Where;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/yanzhenjie/nohttp/db/Where;->or()Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/db/Where;->isNull(Ljava/lang/CharSequence;)Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/db/Where;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/db/Where;->clear()Lcom/yanzhenjie/nohttp/db/Where;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/db/Where;->append(Ljava/lang/Object;)Lcom/yanzhenjie/nohttp/db/Where;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/db/Where;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
