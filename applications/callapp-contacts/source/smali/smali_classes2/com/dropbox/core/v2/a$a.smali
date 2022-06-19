.class final Lcom/dropbox/core/v2/a$a;
.super Lcom/dropbox/core/v2/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final c:Lcom/dropbox/core/oauth/a;


# direct methods
.method constructor <init>(Lcom/dropbox/core/h;Lcom/dropbox/core/oauth/a;Lcom/dropbox/core/e;Ljava/lang/String;Lcom/dropbox/core/v2/c/a;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/dropbox/core/v2/c;-><init>(Lcom/dropbox/core/h;Lcom/dropbox/core/e;Ljava/lang/String;Lcom/dropbox/core/v2/c/a;)V

    const-string p1, "credential"

    .line 167
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    iput-object p2, p0, Lcom/dropbox/core/v2/a$a;->c:Lcom/dropbox/core/oauth/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/dropbox/core/oauth/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/dropbox/core/v2/a$a;->c:Lcom/dropbox/core/oauth/a;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/a$a;->d()Lcom/dropbox/core/h;

    move-result-object v1

    .line 1236
    sget-object v2, Lcom/dropbox/core/e;->a:Lcom/dropbox/core/e;

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/oauth/a;->a(Lcom/dropbox/core/h;Lcom/dropbox/core/e;)Lcom/dropbox/core/oauth/c;

    .line 174
    new-instance v0, Lcom/dropbox/core/oauth/c;

    iget-object v1, p0, Lcom/dropbox/core/v2/a$a;->c:Lcom/dropbox/core/oauth/a;

    .line 2111
    iget-object v1, v1, Lcom/dropbox/core/oauth/a;->a:Ljava/lang/String;

    .line 174
    iget-object v2, p0, Lcom/dropbox/core/v2/a$a;->c:Lcom/dropbox/core/oauth/a;

    .line 2121
    iget-object v2, v2, Lcom/dropbox/core/oauth/a;->b:Ljava/lang/Long;

    .line 174
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/oauth/c;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method protected final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;)V"
        }
    .end annotation

    .line 189
    invoke-static {p1}, Lcom/dropbox/core/i;->a(Ljava/util/List;)Ljava/util/List;

    .line 190
    iget-object v0, p0, Lcom/dropbox/core/v2/a$a;->c:Lcom/dropbox/core/oauth/a;

    .line 5111
    iget-object v0, v0, Lcom/dropbox/core/oauth/a;->a:Ljava/lang/String;

    .line 190
    invoke-static {p1, v0}, Lcom/dropbox/core/i;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method final b()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/dropbox/core/v2/a$a;->c:Lcom/dropbox/core/oauth/a;

    .line 2139
    iget-object v0, v0, Lcom/dropbox/core/oauth/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final c()Z
    .locals 8

    .line 184
    invoke-virtual {p0}, Lcom/dropbox/core/v2/a$a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dropbox/core/v2/a$a;->c:Lcom/dropbox/core/oauth/a;

    .line 3121
    iget-object v2, v0, Lcom/dropbox/core/oauth/a;->b:Ljava/lang/Long;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 2151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    add-long/2addr v4, v6

    .line 4121
    iget-object v0, v0, Lcom/dropbox/core/oauth/a;->b:Ljava/lang/Long;

    .line 2151
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v1
.end method
