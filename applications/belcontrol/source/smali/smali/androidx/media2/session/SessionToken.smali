.class public final Landroidx/media2/session/SessionToken;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf40;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ObsoleteSdkInt"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/SessionToken$a;
    }
.end annotation


# instance fields
.field public a:Landroidx/media2/session/SessionToken$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/media2/session/SessionToken;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Landroidx/media2/session/SessionToken;

    iget-object v0, p0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$a;

    iget-object p1, p1, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
