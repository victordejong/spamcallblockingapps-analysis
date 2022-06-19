.class public Lscala/collection/convert/Wrappers$ToIteratorWrapper;
.super Ljava/lang/Object;
.source "Wrappers.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToIteratorWrapper"
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
.field public final synthetic $outer:Lscala/collection/convert/Wrappers;

.field private final underlying:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;Lscala/collection/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers;",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 37
    iput-object p2, p0, Lscala/collection/convert/Wrappers$ToIteratorWrapper;->underlying:Lscala/collection/Iterator;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$ToIteratorWrapper;->$outer:Lscala/collection/convert/Wrappers;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asJava()Lscala/collection/convert/Wrappers$IteratorWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/convert/Wrappers$IteratorWrapper<",
            "TA;>;"
        }
    .end annotation

    .line 38
    new-instance v0, Lscala/collection/convert/Wrappers$IteratorWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$ToIteratorWrapper;->scala$collection$convert$Wrappers$ToIteratorWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/convert/Wrappers$ToIteratorWrapper;->underlying:Lscala/collection/Iterator;

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Wrappers$IteratorWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/Iterator;)V

    return-object v0
.end method

.method public synthetic scala$collection$convert$Wrappers$ToIteratorWrapper$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .line 37
    iget-object v0, p0, Lscala/collection/convert/Wrappers$ToIteratorWrapper;->$outer:Lscala/collection/convert/Wrappers;

    return-object v0
.end method
