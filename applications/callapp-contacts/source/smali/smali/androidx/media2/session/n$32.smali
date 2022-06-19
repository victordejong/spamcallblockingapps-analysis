.class final Landroidx/media2/session/n$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n;->b(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;
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
.field final synthetic a:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field final synthetic b:Landroidx/media2/session/n;


# direct methods
.method constructor <init>(Landroidx/media2/session/n;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 0

    .line 930
    iput-object p1, p0, Landroidx/media2/session/n$32;->b:Landroidx/media2/session/n;

    iput-object p2, p0, Landroidx/media2/session/n$32;->a:Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroidx/media2/common/SessionPlayer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1934
    iget-object v0, p0, Landroidx/media2/session/n$32;->a:Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p1, v0}, Landroidx/media2/common/SessionPlayer;->b(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method
