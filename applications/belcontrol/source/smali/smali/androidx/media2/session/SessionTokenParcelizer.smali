.class public final Landroidx/media2/session/SessionTokenParcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ld40;)Landroidx/media2/session/SessionToken;
    .locals 3

    new-instance v0, Landroidx/media2/session/SessionToken;

    invoke-direct {v0}, Landroidx/media2/session/SessionToken;-><init>()V

    iget-object v1, v0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$a;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ld40;->I(Lf40;I)Lf40;

    move-result-object p0

    check-cast p0, Landroidx/media2/session/SessionToken$a;

    iput-object p0, v0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$a;

    return-object v0
.end method

.method public static write(Landroidx/media2/session/SessionToken;Ld40;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ld40;->K(ZZ)V

    iget-object p0, p0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$a;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Ld40;->m0(Lf40;I)V

    return-void
.end method
