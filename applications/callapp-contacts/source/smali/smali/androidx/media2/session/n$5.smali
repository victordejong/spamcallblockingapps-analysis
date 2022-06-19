.class final Landroidx/media2/session/n$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n;->f()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/session/n$c<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/n;


# direct methods
.method constructor <init>(Landroidx/media2/session/n;)V
    .locals 0

    .line 585
    iput-object p1, p0, Landroidx/media2/session/n$5;->a:Landroidx/media2/session/n;

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

    .line 1588
    iget-object v0, p0, Landroidx/media2/session/n$5;->a:Landroidx/media2/session/n;

    invoke-virtual {v0, p1}, Landroidx/media2/session/n;->a(Landroidx/media2/common/SessionPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1589
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
