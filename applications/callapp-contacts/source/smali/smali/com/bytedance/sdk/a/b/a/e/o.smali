.class public final Lcom/bytedance/sdk/a/b/a/e/o;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field public final a:Lcom/bytedance/sdk/a/b/a/e/b;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/b/a/e/b;)V
    .locals 2

    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stream was reset: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/o;->a:Lcom/bytedance/sdk/a/b/a/e/b;

    return-void
.end method
