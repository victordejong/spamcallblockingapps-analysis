.class public abstract Lcom/bytedance/sdk/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/a/a/s;


# instance fields
.field private final a:Lcom/bytedance/sdk/a/a/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/a/s;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/h;->a:Lcom/bytedance/sdk/a/a/s;

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/a/c;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/h;->a:Lcom/bytedance/sdk/a/a/s;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/s;->a(Lcom/bytedance/sdk/a/a/c;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a()Lcom/bytedance/sdk/a/a/t;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/h;->a:Lcom/bytedance/sdk/a/a/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/s;->a()Lcom/bytedance/sdk/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/bytedance/sdk/a/a/s;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/h;->a:Lcom/bytedance/sdk/a/a/s;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/h;->a:Lcom/bytedance/sdk/a/a/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/s;->close()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/h;->a:Lcom/bytedance/sdk/a/a/s;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
