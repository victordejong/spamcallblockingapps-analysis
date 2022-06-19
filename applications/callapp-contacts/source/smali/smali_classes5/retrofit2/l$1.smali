.class final Lretrofit2/l$1;
.super Lretrofit2/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/l;->a()Lretrofit2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lretrofit2/l<",
        "Ljava/lang/Iterable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lretrofit2/l;


# direct methods
.method constructor <init>(Lretrofit2/l;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lretrofit2/l$1;->a:Lretrofit2/l;

    invoke-direct {p0}, Lretrofit2/l;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a(Lretrofit2/n;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    check-cast p2, Ljava/lang/Iterable;

    if-eqz p2, :cond_0

    .line 1036
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1037
    iget-object v1, p0, Lretrofit2/l$1;->a:Lretrofit2/l;

    invoke-virtual {v1, p1, v0}, Lretrofit2/l;->a(Lretrofit2/n;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
