.class final Landroidx/media/d;
.super Landroidx/media/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/d$a;
    }
.end annotation


# instance fields
.field a:Landroid/media/session/MediaSessionManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Landroidx/media/c;-><init>(Landroid/content/Context;)V

    const-string v0, "media_session"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Landroidx/media/d;->a:Landroid/media/session/MediaSessionManager;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media/b$c;)Z
    .locals 0

    .line 44
    invoke-super {p0, p1}, Landroidx/media/c;->a(Landroidx/media/b$c;)Z

    move-result p1

    return p1
.end method
