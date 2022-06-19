.class public Lscala/collection/TraversableOnce$FlattenOps;
.super Ljava/lang/Object;
.source "TraversableOnce.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/TraversableOnce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlattenOps"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final scala$collection$TraversableOnce$FlattenOps$$travs:Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/TraversableOnce<",
            "Lscala/collection/TraversableOnce<",
            "TA;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/TraversableOnce;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "Lscala/collection/TraversableOnce<",
            "TA;>;>;)V"
        }
    .end annotation

    .line 458
    iput-object p1, p0, Lscala/collection/TraversableOnce$FlattenOps;->scala$collection$TraversableOnce$FlattenOps$$travs:Lscala/collection/TraversableOnce;

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flatten()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 459
    new-instance v0, Lscala/collection/TraversableOnce$FlattenOps$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/TraversableOnce$FlattenOps$$anon$1;-><init>(Lscala/collection/TraversableOnce$FlattenOps;)V

    return-object v0
.end method
