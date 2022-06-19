.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;

    invoke-virtual {p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->finish()V

    return-void
.end method
