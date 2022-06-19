.class abstract Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OutputStreamRequestBody"
.end annotation


# instance fields
.field c:Lc/ae;

.field d:J

.field e:Ljava/io/OutputStream;

.field f:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 765
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Request;)Lokhttp3/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p1
.end method

.method final a(Lc/g;J)V
    .locals 1

    .line 772
    invoke-interface {p1}, Lc/g;->timeout()Lc/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;->c:Lc/ae;

    .line 773
    iput-wide p2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;->d:J

    .line 777
    new-instance v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;-><init>(Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;JLc/g;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;->e:Ljava/io/OutputStream;

    return-void
.end method

.method public contentLength()J
    .locals 2

    .line 819
    iget-wide v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;->d:J

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
