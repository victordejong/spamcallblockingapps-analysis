.class final Landroidx/media2/session/h$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/h;->a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field final synthetic b:Landroidx/media2/session/h;


# direct methods
.method constructor <init>(Landroidx/media2/session/h;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 0

    .line 743
    iput-object p1, p0, Landroidx/media2/session/h$7;->b:Landroidx/media2/session/h;

    iput-object p2, p0, Landroidx/media2/session/h$7;->a:Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/c;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 746
    iget-object v0, p0, Landroidx/media2/session/h$7;->b:Landroidx/media2/session/h;

    iget-object v0, v0, Landroidx/media2/session/h;->h:Landroidx/media2/session/j;

    iget-object v1, p0, Landroidx/media2/session/h$7;->a:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 747
    invoke-static {v1}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v1

    .line 746
    invoke-interface {p1, v0, p2, v1}, Landroidx/media2/session/c;->c(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;)V

    return-void
.end method
