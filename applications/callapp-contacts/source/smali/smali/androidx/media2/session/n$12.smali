.class final Landroidx/media2/session/n$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n;->b(I)Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/session/n$c<",
        "Lcom/google/common/util/concurrent/a<",
        "Landroidx/media2/common/SessionPlayer$b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/media2/session/n;


# direct methods
.method constructor <init>(Landroidx/media2/session/n;I)V
    .locals 0

    .line 675
    iput-object p1, p0, Landroidx/media2/session/n$12;->b:Landroidx/media2/session/n;

    iput p2, p0, Landroidx/media2/session/n$12;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroidx/media2/common/SessionPlayer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1679
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->n()Ljava/util/List;

    move-result-object v0

    .line 1680
    iget v1, p0, Landroidx/media2/session/n$12;->a:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 1681
    invoke-static {}, Landroidx/media2/common/SessionPlayer$b;->b()Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1

    .line 1683
    :cond_0
    iget v0, p0, Landroidx/media2/session/n$12;->a:I

    invoke-virtual {p1, v0}, Landroidx/media2/common/SessionPlayer;->b(I)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method
