.class final Landroid/support/v4/media/session/MediaSessionCompat$h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/Bundle;

.field public final c:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 3388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3389
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$a;->a:Ljava/lang/String;

    .line 3390
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$a;->b:Landroid/os/Bundle;

    .line 3391
    iput-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$a;->c:Landroid/os/ResultReceiver;

    return-void
.end method
