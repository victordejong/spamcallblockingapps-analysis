.class final Lokhttp3/internal/http2/k$1;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Lokhttp3/internal/http2/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILokhttp3/internal/http2/a;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public a(ILa/e;IZ)Z
    .locals 2

    .prologue
    .line 88
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, La/e;->h(J)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public a(ILjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/b;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public a(ILjava/util/List;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/b;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method
