.class final Landroidx/work/impl/a/b/e$b;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/a/b/e;


# direct methods
.method constructor <init>(Landroidx/work/impl/a/b/e;)V
    .locals 0

    .line 164
    iput-object p1, p0, Landroidx/work/impl/a/b/e$b;->a:Landroidx/work/impl/a/b/e;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 171
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    sget-object p1, Landroidx/work/impl/a/b/e;->d:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "Network capabilities changed: %s"

    .line 173
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    iget-object p1, p0, Landroidx/work/impl/a/b/e$b;->a:Landroidx/work/impl/a/b/e;

    invoke-virtual {p1}, Landroidx/work/impl/a/b/e;->a()Landroidx/work/impl/a/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/work/impl/a/b/e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 179
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    sget-object p1, Landroidx/work/impl/a/b/e;->d:Ljava/lang/String;

    .line 180
    iget-object p1, p0, Landroidx/work/impl/a/b/e$b;->a:Landroidx/work/impl/a/b/e;

    invoke-virtual {p1}, Landroidx/work/impl/a/b/e;->a()Landroidx/work/impl/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/work/impl/a/b/e;->a(Ljava/lang/Object;)V

    return-void
.end method
