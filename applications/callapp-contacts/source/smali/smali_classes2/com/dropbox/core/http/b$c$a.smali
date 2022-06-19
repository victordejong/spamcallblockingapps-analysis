.class final Lcom/dropbox/core/http/b$c$a;
.super Lc/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/b$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/dropbox/core/http/b$c;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/b$c;Lc/ab;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/dropbox/core/http/b$c$a;->a:Lcom/dropbox/core/http/b$c;

    .line 378
    invoke-direct {p0, p2}, Lc/k;-><init>(Lc/ab;)V

    const-wide/16 p1, 0x0

    .line 375
    iput-wide p1, p0, Lcom/dropbox/core/http/b$c$a;->b:J

    return-void
.end method


# virtual methods
.method public final write(Lc/f;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    invoke-super {p0, p1, p2, p3}, Lc/k;->write(Lc/f;J)V

    .line 385
    iget-wide v0, p0, Lcom/dropbox/core/http/b$c$a;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/dropbox/core/http/b$c$a;->b:J

    .line 387
    iget-object p1, p0, Lcom/dropbox/core/http/b$c$a;->a:Lcom/dropbox/core/http/b$c;

    invoke-static {p1}, Lcom/dropbox/core/http/b$c;->a(Lcom/dropbox/core/http/b$c;)Lcom/dropbox/core/util/IOUtil$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 388
    iget-object p1, p0, Lcom/dropbox/core/http/b$c$a;->a:Lcom/dropbox/core/http/b$c;

    invoke-static {p1}, Lcom/dropbox/core/http/b$c;->a(Lcom/dropbox/core/http/b$c;)Lcom/dropbox/core/util/IOUtil$a;

    :cond_0
    return-void
.end method
