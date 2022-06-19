.class Lcom/allinone/callerid/util/recorder/f$j;
.super Ljava/lang/Object;
.source "RecorderUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/recorder/f;->u(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/recorder/f$j;->d:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090065

    if-eq p1, v0, :cond_4

    const v0, 0x7f090067

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->f()Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->f()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/util/recorder/f$j;->d:Landroid/widget/ImageView;

    const v0, 0x7f08005c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lcom/allinone/callerid/util/recorder/f;->d(Z)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->f()Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->f()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/util/recorder/f$j;->d:Landroid/widget/ImageView;

    const v0, 0x7f08005d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Lcom/allinone/callerid/util/recorder/f;->d(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->a()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 13
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->a()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_5
    :goto_0
    return-void
.end method
