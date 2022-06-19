.class final Lcom/criteo/publisher/f/q$f;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/f/q;->a(Lcom/criteo/publisher/model/s;)V
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

    .line 273
    iput-object p1, p0, Lcom/criteo/publisher/f/q$f;->b:Lcom/criteo/publisher/f/q;

    iput-object p2, p0, Lcom/criteo/publisher/f/q$f;->a:Lcom/criteo/publisher/model/s;

    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/criteo/publisher/f/s$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 285
    invoke-virtual {p0, v0}, Lcom/criteo/publisher/f/s$a;->b(Z)Lcom/criteo/publisher/f/s$a;

    return-void
.end method

.method public static synthetic lambda$LrN-mEjE3TR-ihKu_9NkJfYdbsQ(Lcom/criteo/publisher/f/s$a;)V
    .locals 0

    invoke-static {p0}, Lcom/criteo/publisher/f/q$f;->a(Lcom/criteo/publisher/f/s$a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/criteo/publisher/f/q$f;->a:Lcom/criteo/publisher/model/s;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/s;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/criteo/publisher/f/q$f;->a:Lcom/criteo/publisher/model/s;

    invoke-virtual {v1}, Lcom/criteo/publisher/model/s;->n()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/criteo/publisher/f/q$f;->b:Lcom/criteo/publisher/f/q;

    invoke-static {v1}, Lcom/criteo/publisher/f/q;->a(Lcom/criteo/publisher/f/q;)Lcom/criteo/publisher/f/w;

    move-result-object v1

    sget-object v2, Lcom/criteo/publisher/f/-$$Lambda$q$f$LrN-mEjE3TR-ihKu_9NkJfYdbsQ;->INSTANCE:Lcom/criteo/publisher/f/-$$Lambda$q$f$LrN-mEjE3TR-ihKu_9NkJfYdbsQ;

    invoke-virtual {v1, v0, v2}, Lcom/criteo/publisher/f/w;->a(Ljava/lang/String;Lcom/criteo/publisher/f/w$a;)V

    return-void
.end method
