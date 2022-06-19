.class public final Lscala/collection/generic/IsTraversableOnce$$anon$2;
.super Ljava/lang/Object;
.source "IsTraversableOnce.scala"

# interfaces
.implements Lscala/collection/generic/IsTraversableOnce;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/generic/IsTraversableOnce$;->genTraversableLikeRepr(Lscala/Function1;)Lscala/collection/generic/IsTraversableOnce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/IsTraversableOnce<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final conversion:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TC;",
            "Lscala/collection/GenTraversableOnce<",
            "TA0;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/Function1;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lscala/collection/generic/IsTraversableOnce$$anon$2;->conversion:Lscala/Function1;

    return-void
.end method


# virtual methods
.method public conversion()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "TC;",
            "Lscala/collection/GenTraversableOnce<",
            "TA0;>;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lscala/collection/generic/IsTraversableOnce$$anon$2;->conversion:Lscala/Function1;

    return-object v0
.end method
