.class final Lretrofit2/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/e<",
        "TT;",
        "Lokhttp3/RequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lokhttp3/MediaType;

.field private static final b:Ljava/nio/charset/Charset;


# instance fields
.field private final c:Lcom/google/gson/f;

.field private final d:Lcom/google/gson/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/j<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    .line 31
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lretrofit2/a/a/b;->a:Lokhttp3/MediaType;

    const-string v0, "UTF-8"

    .line 32
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lretrofit2/a/a/b;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Lcom/google/gson/f;Lcom/google/gson/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            "Lcom/google/gson/j<",
            "TT;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lretrofit2/a/a/b;->c:Lcom/google/gson/f;

    .line 39
    iput-object p2, p0, Lretrofit2/a/a/b;->d:Lcom/google/gson/j;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1043
    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    .line 1044
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 1081
    new-instance v2, Lc/f$c;

    invoke-direct {v2, v0}, Lc/f$c;-><init>(Lc/f;)V

    check-cast v2, Ljava/io/OutputStream;

    .line 1044
    sget-object v3, Lretrofit2/a/a/b;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 1045
    iget-object v2, p0, Lretrofit2/a/a/b;->c:Lcom/google/gson/f;

    invoke-virtual {v2, v1}, Lcom/google/gson/f;->a(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    .line 1046
    iget-object v2, p0, Lretrofit2/a/a/b;->d:Lcom/google/gson/j;

    invoke-virtual {v2, v1, p1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 1047
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonWriter;->close()V

    .line 1048
    sget-object p1, Lretrofit2/a/a/b;->a:Lokhttp3/MediaType;

    invoke-virtual {v0}, Lc/f;->q()Lc/i;

    move-result-object v0

    invoke-static {p1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Lc/i;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method
