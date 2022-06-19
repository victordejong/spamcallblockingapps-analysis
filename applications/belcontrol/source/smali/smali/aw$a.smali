.class public abstract Law$a;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Law;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Law;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Law$a$a;
    }
.end annotation


# direct methods
.method public static b(Landroid/os/IBinder;)Law;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "androidx.media2.session.IMediaController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Law;

    if-eqz v1, :cond_1

    check-cast v0, Law;

    return-object v0

    :cond_1
    new-instance v0, Law$a$a;

    invoke-direct {v0, p0}, Law$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
