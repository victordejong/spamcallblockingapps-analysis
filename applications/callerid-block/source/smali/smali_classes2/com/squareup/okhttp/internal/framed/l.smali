.class public interface abstract Lcom/squareup/okhttp/internal/framed/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lcom/squareup/okhttp/internal/framed/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/okhttp/internal/framed/l$a;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/framed/l$a;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/framed/l;->a:Lcom/squareup/okhttp/internal/framed/l;

    return-void
.end method


# virtual methods
.method public abstract a(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
.end method

.method public abstract onData(ILokio/BufferedSource;IZ)Z
.end method

.method public abstract onHeaders(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract onRequest(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;)Z"
        }
    .end annotation
.end method
