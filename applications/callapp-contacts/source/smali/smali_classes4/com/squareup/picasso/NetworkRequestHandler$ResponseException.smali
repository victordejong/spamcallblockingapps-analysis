.class final Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/NetworkRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResponseException"
.end annotation


# instance fields
.field final code:I

.field final networkPolicy:I


# direct methods
.method constructor <init>(II)V
    .locals 2

    .line 117
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 118
    iput p1, p0, Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;->code:I

    .line 119
    iput p2, p0, Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;->networkPolicy:I

    return-void
.end method
