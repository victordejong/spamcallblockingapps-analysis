.class public final Lcom/facebook/rebound/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DDDD)D
    .locals 2

    const-wide/16 v0, 0x0

    sub-double/2addr p2, v0

    sub-double/2addr p6, p4

    sub-double/2addr p0, v0

    div-double/2addr p0, p2

    mul-double p0, p0, p6

    add-double/2addr p4, p0

    return-wide p4
.end method
