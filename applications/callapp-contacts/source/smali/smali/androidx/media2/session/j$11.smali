.class final Landroidx/media2/session/j$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/j;->a(ILjava/util/List;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic c:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic d:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic e:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic f:I

.field final synthetic g:Landroidx/media2/session/j;


# direct methods
.method constructor <init>(Landroidx/media2/session/j;Ljava/util/List;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;I)V
    .locals 0

    .line 407
    iput-object p1, p0, Landroidx/media2/session/j$11;->g:Landroidx/media2/session/j;

    iput-object p2, p0, Landroidx/media2/session/j$11;->a:Ljava/util/List;

    iput-object p3, p0, Landroidx/media2/session/j$11;->b:Landroidx/versionedparcelable/ParcelImpl;

    iput-object p4, p0, Landroidx/media2/session/j$11;->c:Landroidx/versionedparcelable/ParcelImpl;

    iput-object p5, p0, Landroidx/media2/session/j$11;->d:Landroidx/versionedparcelable/ParcelImpl;

    iput-object p6, p0, Landroidx/media2/session/j$11;->e:Landroidx/versionedparcelable/ParcelImpl;

    iput p7, p0, Landroidx/media2/session/j$11;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/h;)V
    .locals 7

    .line 410
    iget-object v0, p0, Landroidx/media2/session/j$11;->a:Ljava/util/List;

    .line 1091
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1092
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1093
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/versionedparcelable/ParcelImpl;

    .line 2078
    invoke-static {v3}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v3

    .line 1093
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/j$11;->b:Landroidx/versionedparcelable/ParcelImpl;

    .line 3078
    invoke-static {v0}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v0

    .line 411
    move-object v3, v0

    check-cast v3, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 412
    iget-object v0, p0, Landroidx/media2/session/j$11;->c:Landroidx/versionedparcelable/ParcelImpl;

    .line 4078
    invoke-static {v0}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v0

    .line 412
    move-object v4, v0

    check-cast v4, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 413
    iget-object v0, p0, Landroidx/media2/session/j$11;->d:Landroidx/versionedparcelable/ParcelImpl;

    .line 5078
    invoke-static {v0}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v0

    .line 414
    move-object v5, v0

    check-cast v5, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 415
    iget-object v0, p0, Landroidx/media2/session/j$11;->e:Landroidx/versionedparcelable/ParcelImpl;

    .line 6078
    invoke-static {v0}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v0

    .line 416
    move-object v6, v0

    check-cast v6, Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-object v1, p1

    .line 417
    invoke-virtual/range {v1 .. v6}, Landroidx/media2/session/h;->a(Ljava/util/List;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    return-void
.end method
