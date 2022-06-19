.class public abstract Landroidx/media2/exoplayer/external/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/ae;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/a$b;,
        Landroidx/media2/exoplayer/external/a$a;
    }
.end annotation


# instance fields
.field protected final a:Landroidx/media2/exoplayer/external/al$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroidx/media2/exoplayer/external/al$b;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/al$b;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/a;->a:Landroidx/media2/exoplayer/external/al$b;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 5

    .line 139
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/a;->k()Landroidx/media2/exoplayer/external/al;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/a;->c()I

    move-result v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/a;->a:Landroidx/media2/exoplayer/external/al$b;

    const-wide/16 v3, 0x0

    .line 1648
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    move-result-object v0

    .line 2235
    iget-wide v0, v0, Landroidx/media2/exoplayer/external/al$b;->j:J

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(J)V
    .locals 1

    .line 50
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/a;->c()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media2/exoplayer/external/a;->a(IJ)V

    return-void
.end method
