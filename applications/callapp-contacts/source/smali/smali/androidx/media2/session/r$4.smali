.class final Landroidx/media2/session/r$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/r$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroidx/media2/session/r;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;J)V
    .locals 0

    .line 626
    iput-object p1, p0, Landroidx/media2/session/r$4;->b:Landroidx/media2/session/r;

    iput-wide p2, p0, Landroidx/media2/session/r$4;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$b;)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/MediaSession$b;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 629
    iget-object p1, p0, Landroidx/media2/session/r$4;->b:Landroidx/media2/session/r;

    iget-object p1, p1, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    iget-wide v0, p0, Landroidx/media2/session/r$4;->a:J

    invoke-interface {p1, v0, v1}, Landroidx/media2/session/MediaSession$c;->a(J)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method
