.class final Landroidx/media2/session/l$c;
.super Landroidx/media2/session/l$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 1

    const/4 v0, 0x0

    .line 641
    invoke-direct {p0, v0}, Landroidx/media2/session/l$a;-><init>(Landroidx/media2/session/l$1;)V

    .line 642
    iput-object p1, p0, Landroidx/media2/session/l$c;->a:Landroidx/media/MediaBrowserServiceCompat;

    return-void
.end method
