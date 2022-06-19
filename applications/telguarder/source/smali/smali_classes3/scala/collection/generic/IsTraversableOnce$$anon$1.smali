.class public final Lscala/collection/generic/IsTraversableOnce$$anon$1;
.super Ljava/lang/Object;
.source "IsTraversableOnce.scala"

# interfaces
.implements Lscala/collection/generic/IsTraversableOnce;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/IsTraversableOnce$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/IsTraversableOnce<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final conversion:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Lscala/collection/GenTraversableOnce<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v0, Lscala/collection/generic/IsTraversableOnce$$anon$1$$anonfun$1;

    invoke-direct {v0, p0}, Lscala/collection/generic/IsTraversableOnce$$anon$1$$anonfun$1;-><init>(Lscala/collection/generic/IsTraversableOnce$$anon$1;)V

    check-cast v0, Lscala/Function1;

    iput-object v0, p0, Lscala/collection/generic/IsTraversableOnce$$anon$1;->conversion:Lscala/Function1;

    return-void
.end method


# virtual methods
.method public conversion()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Lscala/collection/GenTraversableOnce<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lscala/collection/generic/IsTraversableOnce$$anon$1;->conversion:Lscala/Function1;

    return-object v0
.end method
