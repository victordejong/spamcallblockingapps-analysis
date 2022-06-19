.class public final Lnj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Llj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Loj;",
        ">",
        "Ljava/lang/Object;",
        "Llj<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Llj$a;


# direct methods
.method public constructor <init>(Llj$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Llj$a;

    iput-object p1, p0, Lnj;->a:Llj$a;

    return-void
.end method


# virtual methods
.method public getError()Llj$a;
    .locals 1

    iget-object v0, p0, Lnj;->a:Llj$a;

    return-object v0
.end method

.method public getMediaCrypto()Loj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
