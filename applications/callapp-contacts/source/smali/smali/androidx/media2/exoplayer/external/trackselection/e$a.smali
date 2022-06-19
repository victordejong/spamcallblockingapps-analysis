.class public final Landroidx/media2/exoplayer/external/trackselection/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/source/TrackGroup;

.field public final b:[I

.field public final c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/trackselection/e$a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[IILjava/lang/Object;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/e$a;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 74
    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/e$a;->b:[I

    .line 75
    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/e$a;->c:I

    .line 76
    iput-object p4, p0, Landroidx/media2/exoplayer/external/trackselection/e$a;->d:Ljava/lang/Object;

    return-void
.end method
