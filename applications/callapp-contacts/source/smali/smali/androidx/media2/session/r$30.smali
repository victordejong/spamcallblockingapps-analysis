.class final Landroidx/media2/session/r$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r;->b(Landroidx/media2/session/b;ILjava/lang/String;IILandroidx/versionedparcelable/ParcelImpl;)V
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

    .line 1092
    iput-object p1, p0, Landroidx/media2/session/r$30;->e:Landroidx/media2/session/r;

    iput-object p2, p0, Landroidx/media2/session/r$30;->a:Ljava/lang/String;

    iput p3, p0, Landroidx/media2/session/r$30;->b:I

    iput p4, p0, Landroidx/media2/session/r$30;->c:I

    iput-object p5, p0, Landroidx/media2/session/r$30;->d:Landroidx/versionedparcelable/ParcelImpl;

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

    .line 2095
    iget-object v0, p0, Landroidx/media2/session/r$30;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x3

    const-string v2, "MediaSessionStub"

    if-eqz v0, :cond_0

    .line 2096
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getSearchResult(): Ignoring empty query from "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    new-instance p1, Landroidx/media2/session/LibraryResult;

    invoke-direct {p1, v1}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    return-object p1

    .line 2100
    :cond_0
    iget v0, p0, Landroidx/media2/session/r$30;->b:I

    if-gez v0, :cond_1

    .line 2101
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getSearchResult(): Ignoring negative page from "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    new-instance p1, Landroidx/media2/session/LibraryResult;

    invoke-direct {p1, v1}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    return-object p1

    .line 2105
    :cond_1
    iget v0, p0, Landroidx/media2/session/r$30;->c:I

    if-gtz v0, :cond_2

    .line 2106
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getSearchResult(): Ignoring pageSize less than 1 from "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    new-instance p1, Landroidx/media2/session/LibraryResult;

    invoke-direct {p1, v1}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    return-object p1

    .line 2110
    :cond_2
    iget-object p1, p0, Landroidx/media2/session/r$30;->e:Landroidx/media2/session/r;

    invoke-virtual {p1}, Landroidx/media2/session/r;->b()Landroidx/media2/session/MediaLibraryService$a$b;

    move-result-object p1

    iget v0, p0, Landroidx/media2/session/r$30;->c:I

    iget-object v1, p0, Landroidx/media2/session/r$30;->d:Landroidx/versionedparcelable/ParcelImpl;

    .line 3078
    invoke-static {v1}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    .line 2110
    invoke-interface {p1, v0}, Landroidx/media2/session/MediaLibraryService$a$b;->g(I)Landroidx/media2/session/LibraryResult;

    move-result-object p1

    return-object p1
.end method
