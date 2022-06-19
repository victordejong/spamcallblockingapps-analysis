.class final Landroidx/media2/session/r$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r;->b(Landroidx/media2/session/b;ILjava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/session/r$b<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic c:Landroidx/media2/session/r;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;Ljava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 0

    .line 1071
    iput-object p1, p0, Landroidx/media2/session/r$29;->c:Landroidx/media2/session/r;

    iput-object p2, p0, Landroidx/media2/session/r$29;->a:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media2/session/r$29;->b:Landroidx/versionedparcelable/ParcelImpl;

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

    .line 2074
    iget-object v0, p0, Landroidx/media2/session/r$29;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2075
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "search(): Ignoring empty query from "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSessionStub"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x3

    .line 2076
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 2078
    :cond_0
    iget-object p1, p0, Landroidx/media2/session/r$29;->c:Landroidx/media2/session/r;

    invoke-virtual {p1}, Landroidx/media2/session/r;->b()Landroidx/media2/session/MediaLibraryService$a$b;

    iget-object p1, p0, Landroidx/media2/session/r$29;->b:Landroidx/versionedparcelable/ParcelImpl;

    .line 3078
    invoke-static {p1}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    const/4 p1, -0x6

    .line 2078
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
