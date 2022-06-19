.class public final Lcom/google/api/client/http/g;
.super Lcom/google/api/client/http/b;
.source "FileContent.java"


# instance fields
.field private final c:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/client/http/b;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/google/api/client/http/g;->c:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/api/client/http/g;->c:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public bridge synthetic f(Ljava/lang/String;)Lcom/google/api/client/http/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/g;->g(Ljava/lang/String;)Lcom/google/api/client/http/g;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;)Lcom/google/api/client/http/g;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/http/b;->f(Ljava/lang/String;)Lcom/google/api/client/http/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/g;

    return-object p1
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/g;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
