.class Lcom/pubmatic/sdk/video/vastparser/POBVastParser$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/vastparser/POBVastParser;->parse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/pubmatic/sdk/video/vastparser/POBVastParser;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/video/vastparser/POBVastParser;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$a;->b:Lcom/pubmatic/sdk/video/vastparser/POBVastParser;

    iput-object p2, p0, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$a;->b:Lcom/pubmatic/sdk/video/vastparser/POBVastParser;

    iget-object v1, p0, Lcom/pubmatic/sdk/video/vastparser/POBVastParser$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/vastparser/POBVastParser;->a(Lcom/pubmatic/sdk/video/vastparser/POBVastParser;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/pubmatic/sdk/video/vastparser/POBVastParser;->a(Lcom/pubmatic/sdk/video/vastparser/POBVastParser;Ljava/lang/String;ILcom/pubmatic/sdk/video/vastmodels/POBVastAd;)Lcom/pubmatic/sdk/video/vastmodels/POBVast;

    return-void
.end method
