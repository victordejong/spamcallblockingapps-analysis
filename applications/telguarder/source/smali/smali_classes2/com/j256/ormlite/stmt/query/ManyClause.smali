.class public Lcom/j256/ormlite/stmt/query/ManyClause;
.super Ljava/lang/Object;
.source "ManyClause.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/query/Clause;
.implements Lcom/j256/ormlite/stmt/query/NeedsFutureClause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/stmt/query/ManyClause$Operation;
    }
.end annotation


# instance fields
.field private final first:Lcom/j256/ormlite/stmt/query/Clause;

.field private final operation:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

.field private final others:[Lcom/j256/ormlite/stmt/query/Clause;

.field private second:Lcom/j256/ormlite/stmt/query/Clause;

.field private final startOthersAt:I


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/stmt/query/Clause;Lcom/j256/ormlite/stmt/query/Clause;[Lcom/j256/ormlite/stmt/query/Clause;Lcom/j256/ormlite/stmt/query/ManyClause$Operation;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->first:Lcom/j256/ormlite/stmt/query/Clause;

    .line 33
    iput-object p2, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->second:Lcom/j256/ormlite/stmt/query/Clause;

    .line 34
    iput-object p3, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->others:[Lcom/j256/ormlite/stmt/query/Clause;

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->startOthersAt:I

    .line 36
    iput-object p4, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->operation:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/stmt/query/Clause;Lcom/j256/ormlite/stmt/query/ManyClause$Operation;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->first:Lcom/j256/ormlite/stmt/query/Clause;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->second:Lcom/j256/ormlite/stmt/query/Clause;

    .line 26
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->others:[Lcom/j256/ormlite/stmt/query/Clause;

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->startOthersAt:I

    .line 28
    iput-object p2, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->operation:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    return-void
.end method

.method public constructor <init>([Lcom/j256/ormlite/stmt/query/Clause;Lcom/j256/ormlite/stmt/query/ManyClause$Operation;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->first:Lcom/j256/ormlite/stmt/query/Clause;

    .line 41
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->second:Lcom/j256/ormlite/stmt/query/Clause;

    .line 43
    array-length v0, p1

    iput v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->startOthersAt:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 45
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->second:Lcom/j256/ormlite/stmt/query/Clause;

    .line 46
    iput v1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->startOthersAt:I

    .line 48
    :goto_0
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->others:[Lcom/j256/ormlite/stmt/query/Clause;

    .line 49
    iput-object p2, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->operation:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    return-void
.end method


# virtual methods
.method public appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/query/Clause;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;",
            "Lcom/j256/ormlite/stmt/query/Clause;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 57
    instance-of v0, p5, Lcom/j256/ormlite/stmt/query/ManyClause;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p5, Lcom/j256/ormlite/stmt/query/ManyClause;

    iget-object p5, p5, Lcom/j256/ormlite/stmt/query/ManyClause;->operation:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->operation:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    if-ne p5, v0, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    if-nez p5, :cond_1

    const/16 v0, 0x28

    .line 59
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->first:Lcom/j256/ormlite/stmt/query/Clause;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p0

    invoke-interface/range {v2 .. v7}, Lcom/j256/ormlite/stmt/query/Clause;->appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 62
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->second:Lcom/j256/ormlite/stmt/query/Clause;

    const/16 v2, 0x20

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->operation:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    iget-object v0, v0, Lcom/j256/ormlite/stmt/query/ManyClause$Operation;->sql:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    iget-object v3, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->second:Lcom/j256/ormlite/stmt/query/Clause;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p0

    invoke-interface/range {v3 .. v8}, Lcom/j256/ormlite/stmt/query/Clause;->appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/query/Clause;)V

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->others:[Lcom/j256/ormlite/stmt/query/Clause;

    if-eqz v0, :cond_3

    .line 68
    iget v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->startOthersAt:I

    :goto_1
    iget-object v3, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->others:[Lcom/j256/ormlite/stmt/query/Clause;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 69
    iget-object v3, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->operation:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    iget-object v3, v3, Lcom/j256/ormlite/stmt/query/ManyClause$Operation;->sql:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    iget-object v3, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->others:[Lcom/j256/ormlite/stmt/query/Clause;

    aget-object v4, v3, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p0

    invoke-interface/range {v4 .. v9}, Lcom/j256/ormlite/stmt/query/Clause;->appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/query/Clause;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-nez p5, :cond_5

    .line 76
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_4

    sub-int/2addr p1, v1

    .line 77
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    if-ne p2, v2, :cond_4

    .line 78
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_4
    const-string p1, ") "

    .line 80
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    return-void
.end method

.method public setMissingClause(Lcom/j256/ormlite/stmt/query/Clause;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->second:Lcom/j256/ormlite/stmt/query/Clause;

    return-void
.end method
