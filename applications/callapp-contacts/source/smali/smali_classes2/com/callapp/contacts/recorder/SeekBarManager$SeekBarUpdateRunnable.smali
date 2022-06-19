.class Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/SeekBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeekBarUpdateRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/recorder/SeekBarManager;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/recorder/SeekBarManager;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/recorder/SeekBarManager;Lcom/callapp/contacts/recorder/SeekBarManager$1;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;-><init>(Lcom/callapp/contacts/recorder/SeekBarManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/SeekBarManager;->a(Lcom/callapp/contacts/recorder/SeekBarManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/SeekBarManager;->a(Lcom/callapp/contacts/recorder/SeekBarManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 190
    iget-object v1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    iget-object v1, v1, Lcom/callapp/contacts/recorder/SeekBarManager;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 192
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/SeekBarManager;->f(Lcom/callapp/contacts/recorder/SeekBarManager;)Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/SeekBarManager;->a(Lcom/callapp/contacts/recorder/SeekBarManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/SeekBarManager;->f(Lcom/callapp/contacts/recorder/SeekBarManager;)Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/SeekBarManager;->a(Lcom/callapp/contacts/recorder/SeekBarManager;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    iget-object v2, p0, Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {v2}, Lcom/callapp/contacts/recorder/SeekBarManager;->a(Lcom/callapp/contacts/recorder/SeekBarManager;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-interface {v0, v1, v2}, Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;->seekBarUpdated(II)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/SeekBarManager;->e(Lcom/callapp/contacts/recorder/SeekBarManager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/SeekBarManager;->e(Lcom/callapp/contacts/recorder/SeekBarManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
