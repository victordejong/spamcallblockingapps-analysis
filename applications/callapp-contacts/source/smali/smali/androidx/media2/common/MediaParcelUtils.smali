.class public final Landroidx/media2/common/MediaParcelUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/MediaParcelUtils$MediaItemParcelImpl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;
    .locals 1

    .line 50
    instance-of v0, p0, Landroidx/media2/common/MediaItem;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Landroidx/media2/common/MediaParcelUtils$MediaItemParcelImpl;

    check-cast p0, Landroidx/media2/common/MediaItem;

    invoke-direct {v0, p0}, Landroidx/media2/common/MediaParcelUtils$MediaItemParcelImpl;-><init>(Landroidx/media2/common/MediaItem;)V

    return-object v0

    .line 53
    :cond_0
    invoke-static {p0}, Landroidx/versionedparcelable/a;->a(Landroidx/versionedparcelable/c;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroidx/versionedparcelable/ParcelImpl;

    return-object p0
.end method
