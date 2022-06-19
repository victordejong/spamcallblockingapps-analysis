.class final Landroidx/media2/session/r$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/r$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r;->c(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic b:Landroidx/media2/session/r;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 0

    .line 958
    iput-object p1, p0, Landroidx/media2/session/r$24;->b:Landroidx/media2/session/r;

    iput-object p2, p0, Landroidx/media2/session/r$24;->a:Landroidx/versionedparcelable/ParcelImpl;

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

    .line 961
    iget-object p1, p0, Landroidx/media2/session/r$24;->a:Landroidx/versionedparcelable/ParcelImpl;

    .line 1078
    invoke-static {p1}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object p1

    .line 961
    check-cast p1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    if-nez p1, :cond_0

    .line 963
    invoke-static {}, Landroidx/media2/common/SessionPlayer$b;->b()Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1

    .line 965
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/r$24;->b:Landroidx/media2/session/r;

    iget-object v0, v0, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v0, p1}, Landroidx/media2/session/MediaSession$c;->a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method
