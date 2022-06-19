.class final Landroidx/media2/session/r$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r;->a(Landroidx/media2/session/b;ILjava/lang/String;IILandroidx/versionedparcelable/ParcelImpl;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic e:Landroidx/media2/session/r;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;Ljava/lang/String;IILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 0

    .line 1041
    iput-object p1, p0, Landroidx/media2/session/r$28;->e:Landroidx/media2/session/r;

    iput-object p2, p0, Landroidx/media2/session/r$28;->a:Ljava/lang/String;

    iput p3, p0, Landroidx/media2/session/r$28;->b:I

    iput p4, p0, Landroidx/media2/session/r$28;->c:I

    iput-object p5, p0, Landroidx/media2/session/r$28;->d:Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroidx/media2/session/MediaSession$b;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2044
    iget-object v0, p0, Landroidx/media2/session/r$28;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x3

    const-string v2, "MediaSessionStub"

    if-eqz v0, :cond_0

    .line 2045
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getChildren(): Ignoring empty parentId from "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    new-instance p1, Landroidx/media2/session/LibraryResult;

    invoke-direct {p1, v1}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    return-object p1

    .line 2048
    :cond_0
    iget v0, p0, Landroidx/media2/session/r$28;->b:I

    if-gez v0, :cond_1

    .line 2049
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getChildren(): Ignoring negative page from "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    new-instance p1, Landroidx/media2/session/LibraryResult;

    invoke-direct {p1, v1}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    return-object p1

    .line 2052
    :cond_1
    iget v0, p0, Landroidx/media2/session/r$28;->c:I

    if-gtz v0, :cond_2

    .line 2053
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getChildren(): Ignoring pageSize less than 1 from "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    new-instance p1, Landroidx/media2/session/LibraryResult;

    invoke-direct {p1, v1}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    return-object p1

    .line 2057
    :cond_2
    iget-object p1, p0, Landroidx/media2/session/r$28;->e:Landroidx/media2/session/r;

    invoke-virtual {p1}, Landroidx/media2/session/r;->b()Landroidx/media2/session/MediaLibraryService$a$b;

    move-result-object p1

    iget v0, p0, Landroidx/media2/session/r$28;->c:I

    iget-object v1, p0, Landroidx/media2/session/r$28;->d:Landroidx/versionedparcelable/ParcelImpl;

    .line 2078
    invoke-static {v1}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    .line 2057
    invoke-interface {p1, v0}, Landroidx/media2/session/MediaLibraryService$a$b;->f(I)Landroidx/media2/session/LibraryResult;

    move-result-object p1

    return-object p1
.end method
