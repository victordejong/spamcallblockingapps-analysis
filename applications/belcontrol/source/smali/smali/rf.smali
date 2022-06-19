.class public Lrf;
.super Lqf;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrf$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lqf;-><init>(Landroid/content/Context;)V

    const-string v0, "media_session"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    return-void
.end method


# virtual methods
.method public a(Lpf$c;)Z
    .locals 0

    invoke-super {p0, p1}, Lqf;->a(Lpf$c;)Z

    move-result p1

    return p1
.end method
