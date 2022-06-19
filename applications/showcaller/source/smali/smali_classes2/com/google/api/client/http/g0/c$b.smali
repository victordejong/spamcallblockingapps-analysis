.class Lcom/google/api/client/http/g0/c$b;
.super Ljava/lang/Object;
.source "NetHttpRequest.java"

# interfaces
.implements Lcom/google/api/client/http/g0/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/g0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;Lcom/google/api/client/util/z;)V
    .locals 0

    .line 1
    invoke-interface {p2, p1}, Lcom/google/api/client/util/z;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
