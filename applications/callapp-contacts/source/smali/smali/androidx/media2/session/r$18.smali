.class final Landroidx/media2/session/r$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/r$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r;->i(Landroidx/media2/session/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/r;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;)V
    .locals 0

    .line 887
    iput-object p1, p0, Landroidx/media2/session/r$18;->a:Landroidx/media2/session/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$b;)Lcom/google/common/util/concurrent/a;
    .locals 0
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

    .line 890
    iget-object p1, p0, Landroidx/media2/session/r$18;->a:Landroidx/media2/session/r;

    iget-object p1, p1, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->q()Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method
