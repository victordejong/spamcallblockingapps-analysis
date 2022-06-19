.class final Landroidx/media2/exoplayer/external/source/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/h$c;->a:Landroid/os/Handler;

    .line 1015
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/h$c;->b:Ljava/lang/Runnable;

    return-void
.end method
