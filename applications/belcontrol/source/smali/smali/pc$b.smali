.class public final Lpc$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lqc$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqc$b<",
        "Li4<",
        "Lub;",
        ">;",
        "Lub;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li4;

    invoke-virtual {p0, p1, p2}, Lpc$b;->c(Li4;I)Lub;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Li4;

    invoke-virtual {p0, p1}, Lpc$b;->d(Li4;)I

    move-result p1

    return p1
.end method

.method public c(Li4;I)Lub;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li4<",
            "Lub;",
            ">;I)",
            "Lub;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Li4;->o(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lub;

    return-object p1
.end method

.method public d(Li4;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li4<",
            "Lub;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Li4;->n()I

    move-result p1

    return p1
.end method
