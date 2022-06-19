.class public final Lcom/facebook/biddingkit/http/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Lcom/facebook/biddingkit/http/client/f;
    .locals 1

    .line 40
    invoke-static {}, Lcom/facebook/biddingkit/http/a/b;->a()Lcom/facebook/biddingkit/http/client/a;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p1}, Lcom/facebook/biddingkit/http/client/a;->a(I)V

    const-string p1, "UTF-8"

    .line 45
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "application/x-www-form-urlencoded;charset=UTF-8"

    .line 42
    invoke-virtual {v0, p0, p2, p1}, Lcom/facebook/biddingkit/http/client/a;->a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/facebook/biddingkit/http/client/f;

    move-result-object p0

    return-object p0
.end method
