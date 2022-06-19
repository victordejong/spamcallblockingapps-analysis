.class final Landroidx/media2/player/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/f;->a(Ljava/io/FileDescriptor;JJLjava/lang/Object;)Landroidx/media2/exoplayer/external/upstream/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/FileDescriptor;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/io/FileDescriptor;JJLjava/lang/Object;)V
    .locals 0

    .line 56
    iput-object p1, p0, Landroidx/media2/player/f$1;->a:Ljava/io/FileDescriptor;

    iput-wide p2, p0, Landroidx/media2/player/f$1;->b:J

    iput-wide p4, p0, Landroidx/media2/player/f$1;->c:J

    iput-object p6, p0, Landroidx/media2/player/f$1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media2/exoplayer/external/upstream/f;
    .locals 8

    .line 59
    new-instance v7, Landroidx/media2/player/f;

    iget-object v1, p0, Landroidx/media2/player/f$1;->a:Ljava/io/FileDescriptor;

    iget-wide v2, p0, Landroidx/media2/player/f$1;->b:J

    iget-wide v4, p0, Landroidx/media2/player/f$1;->c:J

    iget-object v6, p0, Landroidx/media2/player/f$1;->d:Ljava/lang/Object;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media2/player/f;-><init>(Ljava/io/FileDescriptor;JJLjava/lang/Object;)V

    return-object v7
.end method
