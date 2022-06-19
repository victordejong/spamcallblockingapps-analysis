.class public Lcom/squareup/tape/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/tape/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/tape/a$b;,
        Lcom/squareup/tape/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/tape/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/squareup/tape/d;

.field private final b:Lcom/squareup/tape/a$b;

.field private final c:Ljava/io/File;

.field private final d:Lcom/squareup/tape/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/tape/a$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/squareup/tape/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/squareup/tape/a$a<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/squareup/tape/a$b;

    invoke-direct {v0}, Lcom/squareup/tape/a$b;-><init>()V

    iput-object v0, p0, Lcom/squareup/tape/a;->b:Lcom/squareup/tape/a$b;

    .line 33
    iput-object p1, p0, Lcom/squareup/tape/a;->c:Ljava/io/File;

    .line 34
    iput-object p2, p0, Lcom/squareup/tape/a;->d:Lcom/squareup/tape/a$a;

    .line 35
    new-instance p2, Lcom/squareup/tape/d;

    invoke-direct {p2, p1}, Lcom/squareup/tape/d;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/squareup/tape/a;->a:Lcom/squareup/tape/d;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/squareup/tape/a;->a:Lcom/squareup/tape/d;

    invoke-virtual {v0}, Lcom/squareup/tape/d;->b()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/squareup/tape/a;->b:Lcom/squareup/tape/a$b;

    invoke-virtual {v0}, Lcom/squareup/tape/a$b;->reset()V

    .line 45
    iget-object v0, p0, Lcom/squareup/tape/a;->d:Lcom/squareup/tape/a$a;

    iget-object v1, p0, Lcom/squareup/tape/a;->b:Lcom/squareup/tape/a$b;

    invoke-interface {v0, p1, v1}, Lcom/squareup/tape/a$a;->a(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 46
    iget-object p1, p0, Lcom/squareup/tape/a;->a:Lcom/squareup/tape/d;

    iget-object v0, p0, Lcom/squareup/tape/a;->b:Lcom/squareup/tape/a$b;

    invoke-virtual {v0}, Lcom/squareup/tape/a$b;->a()[B

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/tape/a;->b:Lcom/squareup/tape/a$b;

    invoke-virtual {v1}, Lcom/squareup/tape/a$b;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/squareup/tape/d;->a([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 49
    new-instance v0, Lcom/squareup/tape/FileException;

    iget-object v1, p0, Lcom/squareup/tape/a;->c:Ljava/io/File;

    const-string v2, "Failed to add entry."

    invoke-direct {v0, v2, p1, v1}, Lcom/squareup/tape/FileException;-><init>(Ljava/lang/String;Ljava/io/IOException;Ljava/io/File;)V

    throw v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/squareup/tape/a;->a:Lcom/squareup/tape/d;

    invoke-virtual {v0}, Lcom/squareup/tape/d;->a()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/squareup/tape/a;->d:Lcom/squareup/tape/a$a;

    invoke-interface {v1, v0}, Lcom/squareup/tape/a$a;->a([B)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Lcom/squareup/tape/FileException;

    iget-object v2, p0, Lcom/squareup/tape/a;->c:Ljava/io/File;

    const-string v3, "Failed to peek."

    invoke-direct {v1, v3, v0, v2}, Lcom/squareup/tape/FileException;-><init>(Ljava/lang/String;Ljava/io/IOException;Ljava/io/File;)V

    throw v1
.end method

.method public final c()V
    .locals 4

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/squareup/tape/a;->a:Lcom/squareup/tape/d;

    invoke-virtual {v0}, Lcom/squareup/tape/d;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Lcom/squareup/tape/FileException;

    iget-object v2, p0, Lcom/squareup/tape/a;->c:Ljava/io/File;

    const-string v3, "Failed to remove."

    invoke-direct {v1, v3, v0, v2}, Lcom/squareup/tape/FileException;-><init>(Ljava/lang/String;Ljava/io/IOException;Ljava/io/File;)V

    throw v1
.end method
