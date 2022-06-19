.class public Landroidx/core/app/h;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/h$a;,
        Landroidx/core/app/h$b;,
        Landroidx/core/app/h$d;,
        Landroidx/core/app/h$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 5129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 5130
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 5134
    :goto_0
    return-object v0

    .line 5131
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 5132
    invoke-static {p0}, Landroidx/core/app/j;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 5134
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
