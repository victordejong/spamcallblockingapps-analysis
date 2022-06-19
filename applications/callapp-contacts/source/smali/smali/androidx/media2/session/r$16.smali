.class final Landroidx/media2/session/r$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/r$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r;->c(Landroidx/media2/session/b;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroidx/media2/session/r;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;II)V
    .locals 0

    .line 853
    iput-object p1, p0, Landroidx/media2/session/r$16;->c:Landroidx/media2/session/r;

    iput p2, p0, Landroidx/media2/session/r$16;->a:I

    iput p3, p0, Landroidx/media2/session/r$16;->b:I

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

    .line 856
    iget-object p1, p0, Landroidx/media2/session/r$16;->c:Landroidx/media2/session/r;

    iget-object p1, p1, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    iget v0, p0, Landroidx/media2/session/r$16;->a:I

    iget v1, p0, Landroidx/media2/session/r$16;->b:I

    invoke-interface {p1, v0, v1}, Landroidx/media2/session/MediaSession$c;->a(II)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method
