.class public abstract Lcom/google/api/client/http/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/j;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/google/api/client/http/b;->b:Z

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/b;->a(Ljava/lang/String;)Lcom/google/api/client/http/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/api/client/http/b;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/google/api/client/http/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/google/api/client/http/b;
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/google/api/client/http/b;->b:Z

    return-object p0
.end method

.method public abstract a()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/google/api/client/http/b;->b:Z

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/api/client/http/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/google/api/client/http/b;->a()Ljava/io/InputStream;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/api/client/http/b;->b:Z

    invoke-static {v0, p1, v1}, Lcom/google/api/client/a/o;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 68
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
