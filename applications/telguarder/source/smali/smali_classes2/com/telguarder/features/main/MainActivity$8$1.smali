.class Lcom/telguarder/features/main/MainActivity$8$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/main/MainActivity$8;->onDownloadFinished(Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/main/MainActivity$8;

.field final synthetic val$caching:Z

.field final synthetic val$error:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;


# direct methods
.method constructor <init>(Lcom/telguarder/features/main/MainActivity$8;Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity$8$1;->this$1:Lcom/telguarder/features/main/MainActivity$8;

    iput-object p2, p0, Lcom/telguarder/features/main/MainActivity$8$1;->val$error:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    iput-boolean p3, p0, Lcom/telguarder/features/main/MainActivity$8$1;->val$caching:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 532
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity$8$1;->this$1:Lcom/telguarder/features/main/MainActivity$8;

    iget-object v0, v0, Lcom/telguarder/features/main/MainActivity$8;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-virtual {v0}, Lcom/telguarder/features/main/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/telguarder/features/main/MainActivity;->active:Z

    if-nez v0, :cond_1

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity$8$1;->this$1:Lcom/telguarder/features/main/MainActivity$8;

    iget-object v0, v0, Lcom/telguarder/features/main/MainActivity$8;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {v0}, Lcom/telguarder/features/main/MainActivity;->access$100(Lcom/telguarder/features/main/MainActivity;)V

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity$8$1;->val$error:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity$8$1;->this$1:Lcom/telguarder/features/main/MainActivity$8;

    iget-object v0, v0, Lcom/telguarder/features/main/MainActivity$8;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {v0}, Lcom/telguarder/features/main/MainActivity;->access$100(Lcom/telguarder/features/main/MainActivity;)V

    .line 537
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity$8$1;->this$1:Lcom/telguarder/features/main/MainActivity$8;

    iget-object v0, v0, Lcom/telguarder/features/main/MainActivity$8;->this$0:Lcom/telguarder/features/main/MainActivity;

    const v1, 0x7f100125

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity$8$1;->this$1:Lcom/telguarder/features/main/MainActivity$8;

    iget-object v0, v0, Lcom/telguarder/features/main/MainActivity$8;->this$0:Lcom/telguarder/features/main/MainActivity;

    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity$8$1;->this$1:Lcom/telguarder/features/main/MainActivity$8;

    iget-object v1, v1, Lcom/telguarder/features/main/MainActivity$8;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {v1}, Lcom/telguarder/features/main/MainActivity;->access$800(Lcom/telguarder/features/main/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/main/MainActivity$8$1;->this$1:Lcom/telguarder/features/main/MainActivity$8;

    iget-object v2, v2, Lcom/telguarder/features/main/MainActivity$8;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {v2}, Lcom/telguarder/features/main/MainActivity;->access$600(Lcom/telguarder/features/main/MainActivity;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/telguarder/features/main/MainActivity$8$1;->val$caching:Z

    invoke-static {v0, v1, v2, v3}, Lcom/telguarder/features/phoneNumberTrending/TrendingActivity;->openTrending(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
