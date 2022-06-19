.class public final Landroidx/media2/session/MediaLibraryService$a$a;
.super Landroidx/media2/session/MediaSession$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaLibraryService$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Landroidx/media2/session/MediaSession$d;-><init>()V

    return-void
.end method

.method public static a()Landroidx/media2/session/LibraryResult;
    .locals 2

    .line 135
    new-instance v0, Landroidx/media2/session/LibraryResult;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    return-object v0
.end method

.method public static b()Landroidx/media2/session/LibraryResult;
    .locals 2

    .line 154
    new-instance v0, Landroidx/media2/session/LibraryResult;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    return-object v0
.end method

.method public static c()Landroidx/media2/session/LibraryResult;
    .locals 2

    .line 180
    new-instance v0, Landroidx/media2/session/LibraryResult;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    return-object v0
.end method
