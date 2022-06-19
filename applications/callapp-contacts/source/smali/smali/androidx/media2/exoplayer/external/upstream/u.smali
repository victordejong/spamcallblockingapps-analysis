.class public final Landroidx/media2/exoplayer/external/upstream/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/Loader$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$d;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/upstream/h;

.field public final b:I

.field public final c:Landroidx/media2/exoplayer/external/upstream/v;

.field public volatile d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e:Landroidx/media2/exoplayer/external/upstream/u$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/upstream/u$a<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/f;Landroid/net/Uri;ILandroidx/media2/exoplayer/external/upstream/u$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/f;",
            "Landroid/net/Uri;",
            "I",
            "Landroidx/media2/exoplayer/external/upstream/u$a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 118
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/h;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Landroidx/media2/exoplayer/external/upstream/h;-><init>(Landroid/net/Uri;I)V

    invoke-direct {p0, p1, v0, p3, p4}, Landroidx/media2/exoplayer/external/upstream/u;-><init>(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;ILandroidx/media2/exoplayer/external/upstream/u$a;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;ILandroidx/media2/exoplayer/external/upstream/u$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/f;",
            "Landroidx/media2/exoplayer/external/upstream/h;",
            "I",
            "Landroidx/media2/exoplayer/external/upstream/u$a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/v;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/upstream/v;-><init>(Landroidx/media2/exoplayer/external/upstream/f;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 130
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/u;->a:Landroidx/media2/exoplayer/external/upstream/h;

    .line 131
    iput p3, p0, Landroidx/media2/exoplayer/external/upstream/u;->b:I

    .line 132
    iput-object p4, p0, Landroidx/media2/exoplayer/external/upstream/u;->e:Landroidx/media2/exoplayer/external/upstream/u$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    const-wide/16 v1, 0x0

    .line 1058
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/upstream/v;->a:J

    .line 174
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/g;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/u;->a:Landroidx/media2/exoplayer/external/upstream/h;

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/upstream/g;-><init>(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;)V

    .line 1071
    :try_start_0
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/g;->a()V

    .line 177
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/v;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 178
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/u;->e:Landroidx/media2/exoplayer/external/upstream/u$a;

    invoke-interface {v2, v1, v0}, Landroidx/media2/exoplayer/external/upstream/u$a;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/upstream/u;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/io/Closeable;)V

    throw v1
.end method
