.class public final Lscala/util/control/Breaks$$anon$1;
.super Ljava/lang/Object;
.source "Breaks.scala"

# interfaces
.implements Lscala/util/control/Breaks$TryBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/control/Breaks;->tryBreakable(Lscala/Function0;)Lscala/util/control/Breaks$TryBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/util/control/Breaks$TryBlock<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/util/control/Breaks;

.field public final op$1:Lscala/Function0;


# direct methods
.method public constructor <init>(Lscala/util/control/Breaks;Lscala/Function0;)V
    .locals 0

    .line 61
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/util/control/Breaks$$anon$1;->$outer:Lscala/util/control/Breaks;

    iput-object p2, p0, Lscala/util/control/Breaks$$anon$1;->op$1:Lscala/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public catchBreak(Lscala/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 63
    :try_start_0
    iget-object v0, p0, Lscala/util/control/Breaks$$anon$1;->op$1:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lscala/util/control/BreakControl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 66
    iget-object v1, p0, Lscala/util/control/Breaks$$anon$1;->$outer:Lscala/util/control/Breaks;

    invoke-virtual {v1}, Lscala/util/control/Breaks;->scala$util$control$Breaks$$breakException()Lscala/util/control/BreakControl;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 67
    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 66
    :cond_0
    throw v0
.end method
