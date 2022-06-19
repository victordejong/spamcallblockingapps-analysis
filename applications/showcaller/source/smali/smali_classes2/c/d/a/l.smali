.class public Lc/d/a/l;
.super Ljava/lang/Object;
.source "FileDownloadMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/l$a;
    }
.end annotation


# static fields
.field private static a:Lc/d/a/l$a;


# direct methods
.method public static a()Lc/d/a/l$a;
    .locals 1

    .line 1
    sget-object v0, Lc/d/a/l;->a:Lc/d/a/l$a;

    return-object v0
.end method

.method public static b()Z
    .locals 1

    .line 1
    invoke-static {}, Lc/d/a/l;->a()Lc/d/a/l$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
