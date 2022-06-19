.class final Landroidx/media2/session/j$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/j;->a(ILjava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic d:Landroidx/media2/session/j;


# direct methods
.method constructor <init>(Landroidx/media2/session/j;Ljava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 0

    .line 499
    iput-object p1, p0, Landroidx/media2/session/j$16;->d:Landroidx/media2/session/j;

    iput-object p2, p0, Landroidx/media2/session/j$16;->a:Ljava/lang/String;

    iput p3, p0, Landroidx/media2/session/j$16;->b:I

    iput-object p4, p0, Landroidx/media2/session/j$16;->c:Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/f;)V
    .locals 5

    .line 502
    iget-object v0, p0, Landroidx/media2/session/j$16;->a:Ljava/lang/String;

    iget v1, p0, Landroidx/media2/session/j$16;->b:I

    iget-object v2, p0, Landroidx/media2/session/j$16;->c:Landroidx/versionedparcelable/ParcelImpl;

    .line 1078
    invoke-static {v2}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v2

    .line 503
    check-cast v2, Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 2060
    iget-object v3, p1, Landroidx/media2/session/f;->b:Landroidx/media2/session/MediaController;

    check-cast v3, Landroidx/media2/session/e;

    .line 1161
    new-instance v4, Landroidx/media2/session/f$2;

    invoke-direct {v4, p1, v0, v1, v2}, Landroidx/media2/session/f$2;-><init>(Landroidx/media2/session/f;Ljava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V

    invoke-virtual {v3, v4}, Landroidx/media2/session/e;->a(Landroidx/media2/session/e$b;)V

    return-void
.end method
