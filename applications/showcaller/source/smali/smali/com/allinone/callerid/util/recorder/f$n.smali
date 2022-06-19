.class Lcom/allinone/callerid/util/recorder/f$n;
.super Ljava/lang/Object;
.source "RecorderUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/recorder/f;->u(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Landroid/widget/TextView;

.field final synthetic f:Landroid/widget/SeekBar;

.field final synthetic g:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/recorder/f$n;->d:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/allinone/callerid/util/recorder/f$n;->e:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/allinone/callerid/util/recorder/f$n;->f:Landroid/widget/SeekBar;

    iput-object p4, p0, Lcom/allinone/callerid/util/recorder/f$n;->g:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    new-instance v1, Ljava/util/Date;

    add-int/lit8 p1, p1, 0x0

    int-to-long v2, p1

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/f$n;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/util/recorder/f$n;->e:Landroid/widget/TextView;

    const-string v0, "00:00"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/util/recorder/f$n;->f:Landroid/widget/SeekBar;

    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->f()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->f()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x1

    .line 8
    invoke-static {p1}, Lcom/allinone/callerid/util/recorder/f;->d(Z)Z

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/util/recorder/f$n;->g:Landroid/widget/ImageView;

    const v0, 0x7f08005d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-static {p1}, Lcom/allinone/callerid/util/recorder/f;->i(Landroid/os/Handler;)Landroid/os/Handler;

    .line 11
    new-instance p1, Lcom/allinone/callerid/util/recorder/f$n$a;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/util/recorder/f$n$a;-><init>(Lcom/allinone/callerid/util/recorder/f$n;)V

    invoke-static {p1}, Lcom/allinone/callerid/util/recorder/f;->k(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 12
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->h()Landroid/os/Handler;

    move-result-object p1

    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->j()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
