.class public final Lscala/collection/parallel/mutable/ParMap$$anonfun$withDefaultValue$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParMap;->withDefaultValue(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TK;TV;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final d$2:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParMap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 61
    iput-object p2, p0, Lscala/collection/parallel/mutable/ParMap$$anonfun$withDefaultValue$1;->d$2:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 61
    iget-object p1, p0, Lscala/collection/parallel/mutable/ParMap$$anonfun$withDefaultValue$1;->d$2:Ljava/lang/Object;

    return-object p1
.end method
