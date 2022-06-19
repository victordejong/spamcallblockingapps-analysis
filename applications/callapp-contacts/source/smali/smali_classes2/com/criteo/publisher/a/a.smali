.class public Lcom/criteo/publisher/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/m0/d;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/criteo/publisher/m0/b;

.field private final c:Lcom/criteo/publisher/h;

.field private final d:Lcom/criteo/publisher/j0/g;

.field private final e:Lcom/criteo/publisher/k/c;

.field private final f:Lcom/criteo/publisher/model/u;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/criteo/publisher/m0/b;Lcom/criteo/publisher/h;Lcom/criteo/publisher/j0/g;Lcom/criteo/publisher/k/c;Lcom/criteo/publisher/model/u;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/criteo/publisher/a/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 62
    iput-object p1, p0, Lcom/criteo/publisher/a/a;->a:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/criteo/publisher/a/a;->b:Lcom/criteo/publisher/m0/b;

    .line 64
    iput-object p3, p0, Lcom/criteo/publisher/a/a;->c:Lcom/criteo/publisher/h;

    .line 65
    iput-object p4, p0, Lcom/criteo/publisher/a/a;->d:Lcom/criteo/publisher/j0/g;

    .line 66
    iput-object p5, p0, Lcom/criteo/publisher/a/a;->e:Lcom/criteo/publisher/k/c;

    .line 67
    iput-object p6, p0, Lcom/criteo/publisher/a/a;->f:Lcom/criteo/publisher/model/u;

    .line 68
    iput-object p7, p0, Lcom/criteo/publisher/a/a;->g:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/criteo/publisher/a/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/criteo/publisher/a/a;->c:Lcom/criteo/publisher/h;

    invoke-interface {v1}, Lcom/criteo/publisher/h;->a()J

    move-result-wide v1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 10

    .line 1114
    iget-object v0, p0, Lcom/criteo/publisher/a/a;->e:Lcom/criteo/publisher/k/c;

    .line 1131
    invoke-virtual {v0}, Lcom/criteo/publisher/k/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 1132
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1139
    invoke-virtual {v0}, Lcom/criteo/publisher/k/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 1140
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v3

    goto :goto_0

    .line 1144
    :cond_0
    invoke-virtual {v0}, Lcom/criteo/publisher/k/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 1146
    sget-object v1, Lcom/criteo/publisher/k/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/criteo/publisher/k/c;->b:Ljava/util/List;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1147
    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 1114
    iget-object v0, p0, Lcom/criteo/publisher/a/a;->e:Lcom/criteo/publisher/k/c;

    .line 1151
    invoke-virtual {v0}, Lcom/criteo/publisher/k/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 1152
    sget-object v1, Lcom/criteo/publisher/k/c;->c:Ljava/util/List;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    return-void

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/criteo/publisher/a/a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    .line 77
    iget-object v2, p0, Lcom/criteo/publisher/a/a;->c:Lcom/criteo/publisher/h;

    invoke-interface {v2}, Lcom/criteo/publisher/h;->a()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_4

    return-void

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/criteo/publisher/a/a;->g:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/criteo/publisher/j0/a;

    iget-object v2, p0, Lcom/criteo/publisher/a/a;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/criteo/publisher/a/a;->b:Lcom/criteo/publisher/m0/b;

    iget-object v5, p0, Lcom/criteo/publisher/a/a;->d:Lcom/criteo/publisher/j0/g;

    iget-object v6, p0, Lcom/criteo/publisher/a/a;->f:Lcom/criteo/publisher/model/u;

    iget-object v7, p0, Lcom/criteo/publisher/a/a;->e:Lcom/criteo/publisher/k/c;

    move-object v1, v9

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/criteo/publisher/j0/a;-><init>(Landroid/content/Context;Lcom/criteo/publisher/m0/d;Lcom/criteo/publisher/m0/b;Lcom/criteo/publisher/j0/g;Lcom/criteo/publisher/model/u;Lcom/criteo/publisher/k/c;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
