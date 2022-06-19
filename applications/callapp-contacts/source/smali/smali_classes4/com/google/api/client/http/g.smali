.class public final Lcom/google/api/client/http/g;
.super Lcom/google/api/client/http/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/google/api/client/http/b;-><init>(Ljava/lang/String;)V

    .line 1125
    invoke-static {p2}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 53
    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/google/api/client/http/g;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;)Lcom/google/api/client/http/b;
    .locals 0

    .line 3080
    invoke-super {p0, p1}, Lcom/google/api/client/http/b;->a(Ljava/lang/String;)Lcom/google/api/client/http/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/g;

    return-object p1
.end method

.method public final bridge synthetic a(Z)Lcom/google/api/client/http/b;
    .locals 0

    .line 2085
    invoke-super {p0, p1}, Lcom/google/api/client/http/b;->a(Z)Lcom/google/api/client/http/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/g;

    return-object p1
.end method

.method public final a()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/api/client/http/g;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final getLength()J
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/google/api/client/http/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final retrySupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
