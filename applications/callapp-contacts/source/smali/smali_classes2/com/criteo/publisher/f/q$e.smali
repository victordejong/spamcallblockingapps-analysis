.class final Lcom/criteo/publisher/f/q$e;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/f/q;->a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/model/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/model/s;

.field final synthetic b:Lcom/criteo/publisher/f/q;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/f/q;Lcom/criteo/publisher/model/s;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/criteo/publisher/f/q$e;->b:Lcom/criteo/publisher/f/q;

    iput-object p2, p0, Lcom/criteo/publisher/f/q$e;->a:Lcom/criteo/publisher/model/s;

    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    return-void
.end method

.method private static synthetic a(ZJLcom/criteo/publisher/f/s$a;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 256
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/criteo/publisher/f/s$a;->c(Ljava/lang/Long;)Lcom/criteo/publisher/f/s$a;

    :cond_0
    const/4 p0, 0x1

    .line 259
    invoke-virtual {p3, p0}, Lcom/criteo/publisher/f/s$a;->c(Z)Lcom/criteo/publisher/f/s$a;

    return-void
.end method

.method public static synthetic lambda$6bUNLbkpliRhpH8rzWGmsF_WFQQ(ZJLcom/criteo/publisher/f/s$a;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/criteo/publisher/f/q$e;->a(ZJLcom/criteo/publisher/f/s$a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 246
    iget-object v0, p0, Lcom/criteo/publisher/f/q$e;->a:Lcom/criteo/publisher/model/s;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/s;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/criteo/publisher/f/q$e;->a:Lcom/criteo/publisher/model/s;

    iget-object v2, p0, Lcom/criteo/publisher/f/q$e;->b:Lcom/criteo/publisher/f/q;

    invoke-static {v2}, Lcom/criteo/publisher/f/q;->c(Lcom/criteo/publisher/f/q;)Lcom/criteo/publisher/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/criteo/publisher/model/s;->a(Lcom/criteo/publisher/h;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 252
    iget-object v2, p0, Lcom/criteo/publisher/f/q$e;->b:Lcom/criteo/publisher/f/q;

    invoke-static {v2}, Lcom/criteo/publisher/f/q;->c(Lcom/criteo/publisher/f/q;)Lcom/criteo/publisher/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/criteo/publisher/h;->a()J

    move-result-wide v2

    .line 254
    iget-object v4, p0, Lcom/criteo/publisher/f/q$e;->b:Lcom/criteo/publisher/f/q;

    invoke-static {v4}, Lcom/criteo/publisher/f/q;->a(Lcom/criteo/publisher/f/q;)Lcom/criteo/publisher/f/w;

    move-result-object v4

    new-instance v5, Lcom/criteo/publisher/f/-$$Lambda$q$e$6bUNLbkpliRhpH8rzWGmsF_WFQQ;

    invoke-direct {v5, v1, v2, v3}, Lcom/criteo/publisher/f/-$$Lambda$q$e$6bUNLbkpliRhpH8rzWGmsF_WFQQ;-><init>(ZJ)V

    invoke-virtual {v4, v0, v5}, Lcom/criteo/publisher/f/w;->a(Ljava/lang/String;Lcom/criteo/publisher/f/w$a;)V

    .line 262
    iget-object v1, p0, Lcom/criteo/publisher/f/q$e;->b:Lcom/criteo/publisher/f/q;

    invoke-static {v1}, Lcom/criteo/publisher/f/q;->b(Lcom/criteo/publisher/f/q;)Lcom/criteo/publisher/f/ac;

    move-result-object v1

    iget-object v2, p0, Lcom/criteo/publisher/f/q$e;->b:Lcom/criteo/publisher/f/q;

    invoke-static {v2}, Lcom/criteo/publisher/f/q;->a(Lcom/criteo/publisher/f/q;)Lcom/criteo/publisher/f/w;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/criteo/publisher/f/ac;->a(Lcom/criteo/publisher/f/w;Ljava/lang/String;)V

    return-void
.end method
