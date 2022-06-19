.class public Le/a/b/c/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Le/a/b/c/a;


# direct methods
.method public static a()Le/a/b/c/a;
    .locals 2

    sget-object v0, Le/a/b/c/a;->a:Le/a/b/c/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b()Le/a/b/c/b;
    .locals 0

    const p0, 0x0

    throw p0
.end method
