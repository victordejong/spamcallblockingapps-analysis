.class final Lcom/google/android/exoplayer2/source/s$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/s$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Lcom/google/android/exoplayer2/source/s;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/s$a$a;->a:Landroid/os/Handler;

    .line 482
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/s$a$a;->b:Lcom/google/android/exoplayer2/source/s;

    return-void
.end method
