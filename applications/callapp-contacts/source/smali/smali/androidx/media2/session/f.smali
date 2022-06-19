.class final Landroidx/media2/session/f;
.super Landroidx/media2/session/h;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/e$c;


# static fields
.field private static final F:Landroidx/media2/session/LibraryResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Landroidx/media2/session/LibraryResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    sput-object v0, Landroidx/media2/session/f;->F:Landroidx/media2/session/LibraryResult;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/media2/session/MediaController;Landroidx/media2/session/SessionToken;Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media2/session/h;-><init>(Landroid/content/Context;Landroidx/media2/session/MediaController;Landroidx/media2/session/SessionToken;Landroid/os/Bundle;)V

    return-void
.end method
