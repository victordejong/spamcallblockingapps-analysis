.class public Lcom/callapp/common/util/Joiner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/callapp/common/util/Joiner;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/callapp/common/util/Joiner;->b:Z

    .line 67
    iget-object p1, p1, Lcom/callapp/common/util/Joiner;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/callapp/common/util/Joiner;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/callapp/common/util/Joiner;->b:Z

    .line 14
    iput-object p1, p0, Lcom/callapp/common/util/Joiner;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/callapp/common/util/Joiner;
    .locals 1

    .line 10
    new-instance v0, Lcom/callapp/common/util/Joiner;

    invoke-direct {v0, p0}, Lcom/callapp/common/util/Joiner;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/callapp/common/util/Joiner;
    .locals 2

    .line 61
    new-instance v0, Lcom/callapp/common/util/Joiner;

    invoke-direct {v0, p0}, Lcom/callapp/common/util/Joiner;-><init>(Lcom/callapp/common/util/Joiner;)V

    const/4 v1, 0x1

    .line 62
    iput-boolean v1, v0, Lcom/callapp/common/util/Joiner;->b:Z

    return-object v0
.end method

.method public final a(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 71
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    .line 1041
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1042
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1044
    iget-boolean v3, p0, Lcom/callapp/common/util/Joiner;->b:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    .line 1051
    :cond_2
    iget-object v3, p0, Lcom/callapp/common/util/Joiner;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1057
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, p1, v4

    .line 22
    iget-boolean v6, p0, Lcom/callapp/common/util/Joiner;->b:Z

    if-eqz v6, :cond_0

    if-eqz v5, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 29
    :cond_1
    iget-object v6, p0, Lcom/callapp/common/util/Joiner;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 35
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
