.class final Lcom/criteo/publisher/f/q$d;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/f/q;->a(Lcom/criteo/publisher/model/o;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/criteo/publisher/model/o;

.field final synthetic c:Lcom/criteo/publisher/f/q;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/f/q;Ljava/lang/Exception;Lcom/criteo/publisher/model/o;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/criteo/publisher/f/q$d;->c:Lcom/criteo/publisher/f/q;

    iput-object p2, p0, Lcom/criteo/publisher/f/q$d;->a:Ljava/lang/Exception;

    iput-object p3, p0, Lcom/criteo/publisher/f/q$d;->b:Lcom/criteo/publisher/model/o;

    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/criteo/publisher/f/q$d;->a:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/criteo/publisher/f/q$d;->c:Lcom/criteo/publisher/f/q;

    iget-object v1, p0, Lcom/criteo/publisher/f/q$d;->b:Lcom/criteo/publisher/model/o;

    invoke-static {v0, v1}, Lcom/criteo/publisher/f/q;->a(Lcom/criteo/publisher/f/q;Lcom/criteo/publisher/model/o;)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/f/q$d;->c:Lcom/criteo/publisher/f/q;

    iget-object v1, p0, Lcom/criteo/publisher/f/q$d;->b:Lcom/criteo/publisher/model/o;

    invoke-static {v0, v1}, Lcom/criteo/publisher/f/q;->b(Lcom/criteo/publisher/f/q;Lcom/criteo/publisher/model/o;)V

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/criteo/publisher/f/q$d;->b:Lcom/criteo/publisher/model/o;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/o;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/model/q;

    .line 207
    invoke-virtual {v1}, Lcom/criteo/publisher/model/q;->a()Ljava/lang/String;

    move-result-object v1

    .line 208
    iget-object v2, p0, Lcom/criteo/publisher/f/q$d;->c:Lcom/criteo/publisher/f/q;

    invoke-static {v2}, Lcom/criteo/publisher/f/q;->b(Lcom/criteo/publisher/f/q;)Lcom/criteo/publisher/f/ac;

    move-result-object v2

    iget-object v3, p0, Lcom/criteo/publisher/f/q$d;->c:Lcom/criteo/publisher/f/q;

    invoke-static {v3}, Lcom/criteo/publisher/f/q;->a(Lcom/criteo/publisher/f/q;)Lcom/criteo/publisher/f/w;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/criteo/publisher/f/ac;->a(Lcom/criteo/publisher/f/w;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method
