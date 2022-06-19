.class Lcom/telguarder/features/main/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/main/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/main/MainActivity;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity$8;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFinished(Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity$8;->this$0:Lcom/telguarder/features/main/MainActivity;

    new-instance v1, Lcom/telguarder/features/main/MainActivity$8$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/telguarder/features/main/MainActivity$8$1;-><init>(Lcom/telguarder/features/main/MainActivity$8;Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V

    invoke-virtual {v0, v1}, Lcom/telguarder/features/main/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
