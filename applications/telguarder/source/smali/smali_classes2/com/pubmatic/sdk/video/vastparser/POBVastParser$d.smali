.class Lcom/pubmatic/sdk/video/vastparser/POBVastParser$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/vastparser/POBVastParser;->a(Lcom/pubmatic/sdk/video/vastmodels/POBVast;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/video/vastmodels/POBVast;

.field final synthetic b:Lcom/pubmatic/sdk/video/vastparser/POBVastParser;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/video/vastparser/POBVastParser;Lcom/pubmatic/sdk/video/vastmodels/POBVast;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$d;->b:Lcom/pubmatic/sdk/video/vastparser/POBVastParser;

    iput-object p2, p0, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$d;->a:Lcom/pubmatic/sdk/video/vastmodels/POBVast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$d;->b:Lcom/pubmatic/sdk/video/vastparser/POBVastParser;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/vastparser/POBVastParser;->b(Lcom/pubmatic/sdk/video/vastparser/POBVastParser;)Lcom/pubmatic/sdk/video/vastparser/POBVastParserListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$d;->a:Lcom/pubmatic/sdk/video/vastmodels/POBVast;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/video/vastparser/POBVastParserListener;->onSuccess(Lcom/pubmatic/sdk/video/vastmodels/POBVast;)V

    return-void
.end method
