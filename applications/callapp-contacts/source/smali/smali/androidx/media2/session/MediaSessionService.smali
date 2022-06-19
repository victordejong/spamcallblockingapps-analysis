.class public abstract Landroidx/media2/session/MediaSessionService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaSessionService$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media2/session/MediaSessionService$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 1132
    new-instance v0, Landroidx/media2/session/p;

    invoke-direct {v0}, Landroidx/media2/session/p;-><init>()V

    .line 128
    iput-object v0, p0, Landroidx/media2/session/MediaSessionService;->a:Landroidx/media2/session/MediaSessionService$a;

    return-void
.end method
