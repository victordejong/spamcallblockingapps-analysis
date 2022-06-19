.class public final enum Lcom/j256/ormlite/stmt/query/ManyClause$Operation;
.super Ljava/lang/Enum;
.source "ManyClause.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/stmt/query/ManyClause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/j256/ormlite/stmt/query/ManyClause$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

.field public static final enum AND:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

.field public static final enum OR:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;


# instance fields
.field public final sql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 93
    new-instance v0, Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    const-string v1, "AND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/j256/ormlite/stmt/query/ManyClause$Operation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/stmt/query/ManyClause$Operation;->AND:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    .line 94
    new-instance v1, Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    const-string v3, "OR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/j256/ormlite/stmt/query/ManyClause$Operation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/j256/ormlite/stmt/query/ManyClause$Operation;->OR:Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 92
    sput-object v3, Lcom/j256/ormlite/stmt/query/ManyClause$Operation;->$VALUES:[Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput-object p3, p0, Lcom/j256/ormlite/stmt/query/ManyClause$Operation;->sql:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/ManyClause$Operation;
    .locals 1

    .line 92
    const-class v0, Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    return-object p0
.end method

.method public static values()[Lcom/j256/ormlite/stmt/query/ManyClause$Operation;
    .locals 1

    .line 92
    sget-object v0, Lcom/j256/ormlite/stmt/query/ManyClause$Operation;->$VALUES:[Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    invoke-virtual {v0}, [Lcom/j256/ormlite/stmt/query/ManyClause$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/j256/ormlite/stmt/query/ManyClause$Operation;

    return-object v0
.end method
