.class final Landroidx/media2/session/r$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r;->f(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/session/r$b<",
        "Landroidx/media2/session/LibraryResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic b:Landroidx/media2/session/r;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 0

    .line 1008
    iput-object p1, p0, Landroidx/media2/session/r$26;->b:Landroidx/media2/session/r;

    iput-object p2, p0, Landroidx/media2/session/r$26;->a:Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroidx/media2/session/MediaSession$b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2011
    iget-object p1, p0, Landroidx/media2/session/r$26;->b:Landroidx/media2/session/r;

    invoke-virtual {p1}, Landroidx/media2/session/r;->b()Landroidx/media2/session/MediaLibraryService$a$b;

    move-result-object p1

    iget-object v0, p0, Landroidx/media2/session/r$26;->a:Landroidx/versionedparcelable/ParcelImpl;

    .line 2078
    invoke-static {v0}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    .line 2011
    invoke-interface {p1}, Landroidx/media2/session/MediaLibraryService$a$b;->u()Landroidx/media2/session/LibraryResult;

    move-result-object p1

    return-object p1
.end method
