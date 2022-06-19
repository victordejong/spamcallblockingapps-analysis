.class Lcom/telguarder/features/main/MainActivity$15$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/main/MainActivity$15;->finishHandler(Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/main/MainActivity$15;

.field final synthetic val$cached:Z


# direct methods
.method constructor <init>(Lcom/telguarder/features/main/MainActivity$15;Z)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity$15$2;->this$1:Lcom/telguarder/features/main/MainActivity$15;

    iput-boolean p2, p0, Lcom/telguarder/features/main/MainActivity$15$2;->val$cached:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 746
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity$15$2;->this$1:Lcom/telguarder/features/main/MainActivity$15;

    iget-object v0, v0, Lcom/telguarder/features/main/MainActivity$15;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-virtual {v0}, Lcom/telguarder/features/main/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/telguarder/features/main/MainActivity;->active:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->state:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity$15$2;->this$1:Lcom/telguarder/features/main/MainActivity$15;

    iget-object v0, v0, Lcom/telguarder/features/main/MainActivity$15;->this$0:Lcom/telguarder/features/main/MainActivity;

    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity$15$2;->this$1:Lcom/telguarder/features/main/MainActivity$15;

    iget-object v1, v1, Lcom/telguarder/features/main/MainActivity$15;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {v1}, Lcom/telguarder/features/main/MainActivity;->access$1200(Lcom/telguarder/features/main/MainActivity;)Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/main/MainActivity$15$2;->this$1:Lcom/telguarder/features/main/MainActivity$15;

    iget-object v2, v2, Lcom/telguarder/features/main/MainActivity$15;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {v2}, Lcom/telguarder/features/main/MainActivity;->access$2100(Lcom/telguarder/features/main/MainActivity;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/telguarder/features/main/MainActivity$15$2;->val$cached:Z

    invoke-static {v0, v1, v2, v3}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->openAnalyze(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Ljava/lang/String;Z)V

    goto :goto_0

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity$15$2;->this$1:Lcom/telguarder/features/main/MainActivity$15;

    iget-object v0, v0, Lcom/telguarder/features/main/MainActivity$15;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {v0}, Lcom/telguarder/features/main/MainActivity;->access$2000(Lcom/telguarder/features/main/MainActivity;)V

    :goto_0
    return-void
.end method
