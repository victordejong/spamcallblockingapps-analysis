.class public final Ltp$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lxp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:I

.field public final synthetic b:Ltp;


# direct methods
.method public constructor <init>(Ltp;I)V
    .locals 0

    iput-object p1, p0, Ltp$e;->b:Ltp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ltp$e;->a:I

    return-void
.end method

.method public static synthetic b(Ltp$e;)I
    .locals 0

    iget p0, p0, Ltp$e;->a:I

    return p0
.end method


# virtual methods
.method public a(Lwg;Lzi;Z)I
    .locals 2

    iget-object v0, p0, Ltp$e;->b:Ltp;

    iget v1, p0, Ltp$e;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Ltp;->I(ILwg;Lzi;Z)I

    move-result p1

    return p1
.end method

.method public isReady()Z
    .locals 2

    iget-object v0, p0, Ltp$e;->b:Ltp;

    iget v1, p0, Ltp$e;->a:I

    invoke-virtual {v0, v1}, Ltp;->y(I)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 1

    iget-object v0, p0, Ltp$e;->b:Ltp;

    invoke-virtual {v0}, Ltp;->D()V

    return-void
.end method

.method public skipData(J)I
    .locals 2

    iget-object v0, p0, Ltp$e;->b:Ltp;

    iget v1, p0, Ltp$e;->a:I

    invoke-virtual {v0, v1, p1, p2}, Ltp;->L(IJ)I

    move-result p1

    return p1
.end method
