.class public final Lar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lir;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Let$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Let$a<",
            "Lgr;",
            ">;"
        }
    .end annotation

    new-instance v0, Lhr;

    invoke-direct {v0}, Lhr;-><init>()V

    return-object v0
.end method

.method public b(Ler;)Let$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ler;",
            ")",
            "Let$a<",
            "Lgr;",
            ">;"
        }
    .end annotation

    new-instance v0, Lhr;

    invoke-direct {v0, p1}, Lhr;-><init>(Ler;)V

    return-object v0
.end method
