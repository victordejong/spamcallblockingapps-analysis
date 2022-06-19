.class public Lcom/a/a/a/a/a/d;
.super Ljava/lang/Object;
.source "ItemIdComposer.java"


# direct methods
.method public static a(J)J
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const/16 v0, 0x8

    shl-long/2addr p0, v0

    shr-long/2addr p0, v0

    return-wide p0
.end method
