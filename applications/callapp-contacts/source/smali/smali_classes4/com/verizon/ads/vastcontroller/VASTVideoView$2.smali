.class Lcom/verizon/ads/vastcontroller/VASTVideoView$2;
.super Lcom/verizon/ads/support/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/vastcontroller/VASTVideoView;->onProgress(Lcom/verizon/ads/VideoPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/verizon/ads/vastcontroller/VASTVideoView;


# direct methods
.method constructor <init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;I)V
    .locals 0

    .line 1147
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$2;->b:Lcom/verizon/ads/vastcontroller/VASTVideoView;

    iput p2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$2;->a:I

    invoke-direct {p0}, Lcom/verizon/ads/support/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 4

    .line 1152
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$2;->b:Lcom/verizon/ads/vastcontroller/VASTVideoView;

    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->e(Lcom/verizon/ads/vastcontroller/VASTVideoView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$2;->b:Lcom/verizon/ads/vastcontroller/VASTVideoView;

    iget v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$2;->a:I

    invoke-static {v0, v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTVideoView;I)V

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$2;->b:Lcom/verizon/ads/vastcontroller/VASTVideoView;

    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->f(Lcom/verizon/ads/vastcontroller/VASTVideoView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$2;->b:Lcom/verizon/ads/vastcontroller/VASTVideoView;

    iget v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$2;->a:I

    invoke-virtual {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getDuration()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTVideoView;II)V

    .line 1162
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$2;->b:Lcom/verizon/ads/vastcontroller/VASTVideoView;

    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g(Lcom/verizon/ads/vastcontroller/VASTVideoView;)Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1163
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$2;->b:Lcom/verizon/ads/vastcontroller/VASTVideoView;

    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g(Lcom/verizon/ads/vastcontroller/VASTVideoView;)Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    move-result-object v0

    iget v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$2;->a:I

    .line 2076
    iget-object v2, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->h:Lcom/verizon/ads/vastcontroller/VASTParser$Icon;

    if-eqz v2, :cond_5

    .line 2081
    iget-object v2, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->d:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    sget-object v3, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;->SHOWN:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->f:I

    if-le v1, v2, :cond_2

    .line 2082
    iget v2, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->f:I

    sub-int v2, v1, v2

    const/16 v3, 0x5dc

    if-gt v2, v3, :cond_2

    .line 2086
    iget v3, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->e:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->e:I

    .line 2089
    :cond_2
    iput v1, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->f:I

    .line 2091
    iget-object v2, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->d:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    sget-object v3, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;->COMPLETE:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    if-eq v2, v3, :cond_3

    iget v2, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->e:I

    iget v3, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->a:I

    if-lt v2, v3, :cond_3

    .line 2092
    invoke-virtual {v0}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->a()V

    goto :goto_0

    .line 2093
    :cond_3
    iget-object v2, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->d:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    sget-object v3, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;->READY:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    if-ne v2, v3, :cond_5

    iget v2, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->g:I

    if-lt v1, v2, :cond_5

    .line 2101
    sget-object v1, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;->SHOWING:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    iput-object v1, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->d:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    .line 2103
    new-instance v1, Lcom/verizon/ads/vastcontroller/AdChoicesButton$1;

    invoke-direct {v1, v0}, Lcom/verizon/ads/vastcontroller/AdChoicesButton$1;-><init>(Lcom/verizon/ads/vastcontroller/AdChoicesButton;)V

    invoke-static {v1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 2112
    iget-boolean v1, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->c:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 2113
    iput-boolean v1, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->c:Z

    .line 2149
    new-instance v1, Lcom/verizon/ads/vastcontroller/AdChoicesButton$3;

    invoke-direct {v1, v0}, Lcom/verizon/ads/vastcontroller/AdChoicesButton$3;-><init>(Lcom/verizon/ads/vastcontroller/AdChoicesButton;)V

    invoke-static {v1}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2116
    :cond_4
    iget-boolean v1, v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->b:Z

    if-eqz v1, :cond_5

    .line 2117
    invoke-virtual {v0}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->b()V

    .line 1166
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$2;->b:Lcom/verizon/ads/vastcontroller/VASTVideoView;

    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b(Lcom/verizon/ads/vastcontroller/VASTVideoView;)Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1167
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$2;->b:Lcom/verizon/ads/vastcontroller/VASTVideoView;

    iget v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$2;->a:I

    invoke-virtual {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getDuration()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b(Lcom/verizon/ads/vastcontroller/VASTVideoView;II)V

    .line 1168
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$2;->b:Lcom/verizon/ads/vastcontroller/VASTVideoView;

    iget v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$2;->a:I

    invoke-static {v0, v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b(Lcom/verizon/ads/vastcontroller/VASTVideoView;I)V

    :cond_6
    return-void
.end method
