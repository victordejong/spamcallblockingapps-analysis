.class public final Lcom/flurry/sdk/lc$1;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/lc;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/lc;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/lc$1;->a:Lcom/flurry/sdk/lc;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lc$1;->a:Lcom/flurry/sdk/lc;

    invoke-static {v0}, Lcom/flurry/sdk/lc;->a(Lcom/flurry/sdk/lc;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/lc$1;->a:Lcom/flurry/sdk/lc;

    invoke-static {v0}, Lcom/flurry/sdk/lc;->a(Lcom/flurry/sdk/lc;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
