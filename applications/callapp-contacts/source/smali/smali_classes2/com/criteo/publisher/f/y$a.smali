.class public abstract Lcom/criteo/publisher/f/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/f/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/criteo/publisher/f/s;)Lcom/criteo/publisher/f/y$a;
    .locals 9

    .line 72
    invoke-virtual {p0}, Lcom/criteo/publisher/f/s;->f()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/criteo/publisher/f/s;->h()Ljava/lang/Integer;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lcom/criteo/publisher/f/s;->d()Z

    move-result v2

    .line 71
    invoke-static {v0, v1, v2}, Lcom/criteo/publisher/f/y$b;->a(Ljava/lang/String;Ljava/lang/Integer;Z)Lcom/criteo/publisher/f/y$b;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 79
    invoke-virtual {p0}, Lcom/criteo/publisher/f/s;->e()Ljava/lang/Long;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/criteo/publisher/f/s;->a()Ljava/lang/Long;

    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Lcom/criteo/publisher/f/y$a;->a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    .line 84
    invoke-virtual {p0}, Lcom/criteo/publisher/f/s;->b()Ljava/lang/Long;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/criteo/publisher/f/s;->a()Ljava/lang/Long;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Lcom/criteo/publisher/f/y$a;->a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v7

    .line 88
    new-instance v0, Lcom/criteo/publisher/f/l;

    .line 91
    invoke-virtual {p0}, Lcom/criteo/publisher/f/s;->c()Z

    move-result v4

    .line 94
    invoke-virtual {p0}, Lcom/criteo/publisher/f/s;->g()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/criteo/publisher/f/l;-><init>(Ljava/util/List;Ljava/lang/Long;ZJLjava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/google/gson/f;)Lcom/google/gson/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            ")",
            "Lcom/google/gson/j<",
            "Lcom/criteo/publisher/f/y$a;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/criteo/publisher/f/l$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/f/l$a;-><init>(Lcom/google/gson/f;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/f/y$b;",
            ">;"
        }
    .end annotation
.end method

.method abstract b()Ljava/lang/Long;
.end method

.method abstract c()Z
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "isTimeout"
    .end annotation
.end method

.method abstract d()J
.end method

.method abstract e()Ljava/lang/Long;
.end method

.method abstract f()Ljava/lang/String;
.end method
