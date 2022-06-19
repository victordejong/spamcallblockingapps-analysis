.class final Landroidx/media2/session/n$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n;->a(II)Lcom/google/common/util/concurrent/a;
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

.field final synthetic b:I

.field final synthetic c:Landroidx/media2/session/n;


# direct methods
.method constructor <init>(Landroidx/media2/session/n;II)V
    .locals 0

    .line 780
    iput-object p1, p0, Landroidx/media2/session/n$18;->c:Landroidx/media2/session/n;

    iput p2, p0, Landroidx/media2/session/n$18;->a:I

    iput p3, p0, Landroidx/media2/session/n$18;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroidx/media2/common/SessionPlayer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1784
    iget v0, p0, Landroidx/media2/session/n$18;->a:I

    iget v1, p0, Landroidx/media2/session/n$18;->b:I

    invoke-virtual {p1, v0, v1}, Landroidx/media2/common/SessionPlayer;->a(II)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method
