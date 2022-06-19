.class public final Lbp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lxp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwg;Lzi;Z)I
    .locals 0

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Lwi;->g(I)V

    const/4 p1, -0x4

    return p1
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public maybeThrowError()V
    .locals 0

    return-void
.end method

.method public skipData(J)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
