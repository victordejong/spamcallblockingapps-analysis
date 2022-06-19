.class public final Lcom/millennialmedia/internal/utils/HttpUtils$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/HttpUtils;->getBitmapFromGetRequestAsync(Ljava/lang/String;Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$httpRequestListener:Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestListener;

.field public final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/utils/HttpUtils$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/millennialmedia/internal/utils/HttpUtils$1;->val$httpRequestListener:Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/HttpUtils$1;->val$url:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getBitmapFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/HttpUtils$1;->val$httpRequestListener:Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestListener;

    invoke-interface {v1, v0}, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestListener;->onResponse(Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V

    return-void
.end method
