.class Lcom/telguarder/features/main/MainActivity$15;
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

    .line 715
    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity$15;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Lcom/telguarder/features/main/MainActivity$15;Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V
    .locals 0

    .line 715
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/main/MainActivity$15;->finishHandler(Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V

    return-void
.end method

.method private finishHandler(Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V
    .locals 4

    .line 738
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity$15;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {v0}, Lcom/telguarder/features/main/MainActivity;->access$1200(Lcom/telguarder/features/main/MainActivity;)Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;

    move-result-object v0

    const v1, 0x106000d

    iget-object v2, p0, Lcom/telguarder/features/main/MainActivity$15;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-virtual {v2}, Lcom/telguarder/features/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700c2

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->doneLoadingAnimation(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz p1, :cond_1

    .line 740
    iget-object p2, p0, Lcom/telguarder/features/main/MainActivity$15;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p2}, Lcom/telguarder/features/main/MainActivity;->access$2000(Lcom/telguarder/features/main/MainActivity;)V

    .line 741
    iget-object p2, p0, Lcom/telguarder/features/main/MainActivity$15;->this$0:Lcom/telguarder/features/main/MainActivity;

    sget-object v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->DATA_NOT_AVAILABLE:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    if-ne p1, v0, :cond_0

    const p1, 0x7f100126

    goto :goto_1

    :cond_0
    const p1, 0x7f100125

    :goto_1
    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 743
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/telguarder/features/main/MainActivity$15$2;

    invoke-direct {v0, p0, p2}, Lcom/telguarder/features/main/MainActivity$15$2;-><init>(Lcom/telguarder/features/main/MainActivity$15;Z)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method


# virtual methods
.method public onDownloadFinished(Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity$15;->this$0:Lcom/telguarder/features/main/MainActivity;

    new-instance v1, Lcom/telguarder/features/main/MainActivity$15$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/telguarder/features/main/MainActivity$15$1;-><init>(Lcom/telguarder/features/main/MainActivity$15;Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V

    invoke-virtual {v0, v1}, Lcom/telguarder/features/main/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
