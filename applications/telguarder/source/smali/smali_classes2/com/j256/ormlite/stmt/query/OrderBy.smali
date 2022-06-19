.class public Lcom/j256/ormlite/stmt/query/OrderBy;
.super Ljava/lang/Object;
.source "OrderBy.java"


# instance fields
.field private final ascending:Z

.field private final columnName:Ljava/lang/String;

.field private final nullsFirst:Z

.field private final nullsLast:Z

.field private final orderByArgs:[Lcom/j256/ormlite/stmt/ArgumentHolder;

.field private final rawSql:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/j256/ormlite/stmt/query/OrderBy;-><init>(Ljava/lang/String;ZLjava/lang/String;[Lcom/j256/ormlite/stmt/ArgumentHolder;ZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZLjava/lang/String;[Lcom/j256/ormlite/stmt/ArgumentHolder;ZZ)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->columnName:Ljava/lang/String;

    .line 36
    iput-boolean p2, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->ascending:Z

    .line 37
    iput-object p3, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->rawSql:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->orderByArgs:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    .line 39
    iput-boolean p5, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->nullsFirst:Z

    .line 40
    iput-boolean p6, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->nullsLast:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 7

    xor-int/lit8 v6, p3, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/j256/ormlite/stmt/query/OrderBy;-><init>(Ljava/lang/String;ZLjava/lang/String;[Lcom/j256/ormlite/stmt/ArgumentHolder;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/j256/ormlite/stmt/ArgumentHolder;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 30
    invoke-direct/range {v0 .. v6}, Lcom/j256/ormlite/stmt/query/OrderBy;-><init>(Ljava/lang/String;ZLjava/lang/String;[Lcom/j256/ormlite/stmt/ArgumentHolder;ZZ)V

    return-void
.end method


# virtual methods
.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderByArgs()[Lcom/j256/ormlite/stmt/ArgumentHolder;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->orderByArgs:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    return-object v0
.end method

.method public getRawSql()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->rawSql:Ljava/lang/String;

    return-object v0
.end method

.method public isAscending()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->ascending:Z

    return v0
.end method

.method public isNullsFirst()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->nullsFirst:Z

    return v0
.end method

.method public isNullsLast()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/query/OrderBy;->nullsLast:Z

    return v0
.end method
