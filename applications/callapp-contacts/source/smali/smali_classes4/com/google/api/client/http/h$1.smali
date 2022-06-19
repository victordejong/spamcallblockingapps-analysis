.class final Lcom/google/api/client/http/h$1;
.super Ljava/io/BufferedOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/http/h;->a(Lcom/google/api/client/a/ad;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/client/http/h;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/h;Ljava/io/OutputStream;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/google/api/client/http/h$1;->a:Lcom/google/api/client/http/h;

    invoke-direct {p0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/google/api/client/http/h$1;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
