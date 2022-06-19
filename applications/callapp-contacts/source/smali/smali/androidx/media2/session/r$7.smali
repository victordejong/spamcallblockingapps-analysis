.class final Landroidx/media2/session/r$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/r$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Landroidx/media2/session/r;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;F)V
    .locals 0

    .line 690
    iput-object p1, p0, Landroidx/media2/session/r$7;->b:Landroidx/media2/session/r;

    iput p2, p0, Landroidx/media2/session/r$7;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$b;)Lcom/google/common/util/concurrent/a;
    .locals 1
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

    .line 693
    iget-object p1, p0, Landroidx/media2/session/r$7;->b:Landroidx/media2/session/r;

    iget-object p1, p1, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    iget v0, p0, Landroidx/media2/session/r$7;->a:F

    invoke-interface {p1, v0}, Landroidx/media2/session/MediaSession$c;->a(F)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method
