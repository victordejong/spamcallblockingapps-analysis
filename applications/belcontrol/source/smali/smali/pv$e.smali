.class public final Lpv$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Landroidx/media2/common/MediaItem;

.field public final b:Lmv;

.field public final c:Z


# direct methods
.method public constructor <init>(Landroidx/media2/common/MediaItem;Lmv;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpv$e;->a:Landroidx/media2/common/MediaItem;

    iput-object p2, p0, Lpv$e;->b:Lmv;

    iput-boolean p3, p0, Lpv$e;->c:Z

    return-void
.end method
