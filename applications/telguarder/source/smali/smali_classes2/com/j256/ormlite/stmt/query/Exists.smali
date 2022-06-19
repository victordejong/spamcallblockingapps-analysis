.class public Lcom/j256/ormlite/stmt/query/Exists;
.super Ljava/lang/Object;
.source "Exists.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/query/Clause;


# instance fields
.field private final subQueryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/Exists;->subQueryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;

    return-void
.end method


# virtual methods
.method public appendSql(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/query/Clause;)V
    .locals 0
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

    const-string p1, "EXISTS ("

    .line 27
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object p1, p0, Lcom/j256/ormlite/stmt/query/Exists;->subQueryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;

    invoke-virtual {p1, p3, p4}, Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;->appendStatementString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 30
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 31
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    const/16 p4, 0x20

    if-ne p2, p4, :cond_0

    .line 32
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    const-string p1, ") "

    .line 34
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
