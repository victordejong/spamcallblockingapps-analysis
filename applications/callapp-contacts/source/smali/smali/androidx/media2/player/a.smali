.class final Landroidx/media2/player/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/a$b;,
        Landroidx/media2/player/a$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/media2/player/a$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/player/MediaPlayer;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroidx/media2/player/a$b;

    invoke-direct {v0, p1, p2}, Landroidx/media2/player/a$b;-><init>(Landroid/content/Context;Landroidx/media2/player/MediaPlayer;)V

    iput-object v0, p0, Landroidx/media2/player/a;->a:Landroidx/media2/player/a$a;

    return-void
.end method
