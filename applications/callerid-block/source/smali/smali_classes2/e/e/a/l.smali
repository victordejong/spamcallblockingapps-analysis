.class public Le/e/a/l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/e/a/l$a;
    }
.end annotation


# static fields
.field private static a:Le/e/a/l$a;


# direct methods
.method public static a()Le/e/a/l$a;
    .locals 1

    sget-object v0, Le/e/a/l;->a:Le/e/a/l$a;

    return-object v0
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Le/e/a/l;->a()Le/e/a/l$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
