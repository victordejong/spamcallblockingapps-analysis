.class public abstract Landroidx/media2/session/MediaSession$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Landroidx/media2/session/SessionCommandGroup;
    .locals 2

    .line 501
    new-instance v0, Landroidx/media2/session/SessionCommandGroup$a;

    invoke-direct {v0}, Landroidx/media2/session/SessionCommandGroup$a;-><init>()V

    const/4 v1, 0x2

    .line 502
    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup$a;->a(I)Landroidx/media2/session/SessionCommandGroup$a;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Landroidx/media2/session/SessionCommandGroup$a;->a()Landroidx/media2/session/SessionCommandGroup;

    move-result-object v0

    return-object v0
.end method

.method public static e()Landroidx/media2/session/SessionResult;
    .locals 3

    .line 712
    new-instance v0, Landroidx/media2/session/SessionResult;

    const/4 v1, -0x6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;)V

    return-object v0
.end method
