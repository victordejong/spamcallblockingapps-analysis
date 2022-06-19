.class final Lcom/criteo/publisher/f/q$a;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/f/q;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/f/q;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/f/q;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/criteo/publisher/f/q$a;->a:Lcom/criteo/publisher/f/q;

    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/criteo/publisher/f/q$a;->a:Lcom/criteo/publisher/f/q;

    invoke-static {v0}, Lcom/criteo/publisher/f/q;->b(Lcom/criteo/publisher/f/q;)Lcom/criteo/publisher/f/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/f/q$a;->a:Lcom/criteo/publisher/f/q;

    invoke-static {v1}, Lcom/criteo/publisher/f/q;->a(Lcom/criteo/publisher/f/q;)Lcom/criteo/publisher/f/w;

    move-result-object v1

    .line 1031
    invoke-virtual {v1}, Lcom/criteo/publisher/f/w;->a()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/criteo/publisher/f/s;

    .line 1032
    invoke-virtual {v3}, Lcom/criteo/publisher/f/s;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/criteo/publisher/f/ac;->a(Lcom/criteo/publisher/f/w;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
