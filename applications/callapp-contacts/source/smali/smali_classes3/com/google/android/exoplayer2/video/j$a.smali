.class final Lcom/google/android/exoplayer2/video/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/hardware/display/DisplayManager;

.field final synthetic b:Lcom/google/android/exoplayer2/video/j;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/video/j;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/j$a;->b:Lcom/google/android/exoplayer2/video/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/j$a;->a:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 464
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/j$a;->b:Lcom/google/android/exoplayer2/video/j;

    .line 1050
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/j;->d()V

    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
