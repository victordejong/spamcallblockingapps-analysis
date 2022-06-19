.class public Lcom/amazonaws/auth/policy/Condition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;
    .locals 0

    .line 1084
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/amazonaws/auth/policy/Condition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/auth/policy/Condition;"
        }
    .end annotation

    .line 1146
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->c:Ljava/util/List;

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;
    .locals 0

    .line 1117
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Condition;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Condition;->c:Ljava/util/List;

    return-object v0
.end method
