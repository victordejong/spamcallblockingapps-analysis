.class Lcom/callapp/contacts/recorder/SeekBarManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/SeekBarManager;
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

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$1;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    const-class p1, Lcom/callapp/contacts/recorder/SeekBarManager;

    const-string v0, "audio focus gain transient may duck"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$1;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/SeekBarManager;->a(Lcom/callapp/contacts/recorder/SeekBarManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$1;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/SeekBarManager;->b(Lcom/callapp/contacts/recorder/SeekBarManager;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 59
    iget-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$1;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/SeekBarManager;->c(Lcom/callapp/contacts/recorder/SeekBarManager;)V

    return-void

    .line 49
    :cond_1
    const-class p1, Lcom/callapp/contacts/recorder/SeekBarManager;

    const-string v0, "audio focus gain transient"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$1;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/SeekBarManager;->a(Lcom/callapp/contacts/recorder/SeekBarManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$1;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/SeekBarManager;->b(Lcom/callapp/contacts/recorder/SeekBarManager;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 52
    iget-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$1;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/SeekBarManager;->c(Lcom/callapp/contacts/recorder/SeekBarManager;)V

    return-void

    .line 42
    :cond_2
    const-class p1, Lcom/callapp/contacts/recorder/SeekBarManager;

    const-string v0, "audio focus gain"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$1;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/SeekBarManager;->a(Lcom/callapp/contacts/recorder/SeekBarManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$1;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/SeekBarManager;->b(Lcom/callapp/contacts/recorder/SeekBarManager;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 45
    iget-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$1;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/SeekBarManager;->c(Lcom/callapp/contacts/recorder/SeekBarManager;)V

    return-void

    .line 63
    :cond_3
    const-class p1, Lcom/callapp/contacts/recorder/SeekBarManager;

    const-string v0, "audio focus loss"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$1;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/SeekBarManager;->d()V

    return-void

    .line 67
    :cond_4
    const-class p1, Lcom/callapp/contacts/recorder/SeekBarManager;

    const-string v0, "audio focus loss transient"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/callapp/contacts/recorder/SeekBarManager$1;->a:Lcom/callapp/contacts/recorder/SeekBarManager;

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/SeekBarManager;->d()V

    :cond_5
    :goto_0
    return-void
.end method
