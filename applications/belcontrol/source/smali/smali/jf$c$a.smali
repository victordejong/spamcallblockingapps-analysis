.class public final Ljf$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lef$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljf$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ldf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ldf;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance p1, Ljf$c;

    invoke-direct {p1}, Ljf$c;-><init>()V

    return-object p1
.end method
