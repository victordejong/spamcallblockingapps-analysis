.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->A(Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;Z)Z

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;

    const v0, 0x7f0a01b0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->B(Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    return-void
.end method
