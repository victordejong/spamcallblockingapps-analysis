.class Lcom/callapp/contacts/recorder/SeekBarManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/SeekBarManager;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/recorder/SeekBarManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/SeekBarManager;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$4;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 143
    iget-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$4;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/SeekBarManager;->a(Lcom/callapp/contacts/recorder/SeekBarManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$4;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/SeekBarManager;->a(Lcom/callapp/contacts/recorder/SeekBarManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 145
    iget-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$4;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/SeekBarManager;->e(Lcom/callapp/contacts/recorder/SeekBarManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/recorder/SeekBarManager$4;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {p2}, Lcom/callapp/contacts/recorder/SeekBarManager;->d(Lcom/callapp/contacts/recorder/SeekBarManager;)Lcom/callapp/contacts/recorder/SeekBarManager$SeekBarUpdateRunnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
