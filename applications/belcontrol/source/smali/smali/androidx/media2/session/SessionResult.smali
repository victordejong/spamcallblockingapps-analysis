.class public Landroidx/media2/session/SessionResult;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source ""

# interfaces
.implements Lyf;


# instance fields
.field public a:I

.field public b:J

.field public c:Landroid/os/Bundle;

.field public d:Landroidx/media2/common/MediaItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Landroidx/media2/session/SessionResult;->a:I

    return v0
.end method
