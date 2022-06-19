.class public Lscala/collection/convert/Decorators$AsScala;
.super Ljava/lang/Object;
.source "Decorators.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Decorators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsScala"
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
.field public final synthetic $outer:Lscala/collection/convert/Decorators;

.field private final op:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Decorators;",
            "Lscala/Function0<",
            "TA;>;)V"
        }
    .end annotation

    .line 23
    iput-object p2, p0, Lscala/collection/convert/Decorators$AsScala;->op:Lscala/Function0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Decorators$AsScala;->$outer:Lscala/collection/convert/Decorators;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asScala()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lscala/collection/convert/Decorators$AsScala;->op:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$convert$Decorators$AsScala$$$outer()Lscala/collection/convert/Decorators;
    .locals 1

    .line 23
    iget-object v0, p0, Lscala/collection/convert/Decorators$AsScala;->$outer:Lscala/collection/convert/Decorators;

    return-object v0
.end method
