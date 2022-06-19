.class final Lcom/criteo/publisher/f/ae$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/tape/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/f/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/tape/a$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/m0/l;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/criteo/publisher/m0/l;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/m0/l;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/criteo/publisher/f/ae$a;->a:Lcom/criteo/publisher/m0/l;

    .line 136
    iput-object p2, p0, Lcom/criteo/publisher/f/ae$a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a([B)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 146
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 147
    :try_start_0
    iget-object p1, p0, Lcom/criteo/publisher/f/ae$a;->a:Lcom/criteo/publisher/m0/l;

    iget-object v1, p0, Lcom/criteo/publisher/f/ae$a;->b:Ljava/lang/Class;

    invoke-virtual {p1, v1, v0}, Lcom/criteo/publisher/m0/l;->a(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 146
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 148
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public final a(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 154
    iget-object v0, p0, Lcom/criteo/publisher/f/ae$a;->a:Lcom/criteo/publisher/m0/l;

    invoke-virtual {v0, p1, p2}, Lcom/criteo/publisher/m0/l;->a(Ljava/lang/Object;Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method
