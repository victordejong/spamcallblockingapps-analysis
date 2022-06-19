.class public final Lscala/collection/mutable/DoubleLinkedList$;
.super Lscala/collection/generic/SeqFactory;
.source "DoubleLinkedList.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory<",
        "Lscala/collection/mutable/DoubleLinkedList;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/DoubleLinkedList$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/DoubleLinkedList$;

    invoke-direct {v0}, Lscala/collection/mutable/DoubleLinkedList$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/DoubleLinkedList$;->MODULE$:Lscala/collection/mutable/DoubleLinkedList$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 82
    sget-object v0, Lscala/collection/mutable/DoubleLinkedList$;->MODULE$:Lscala/collection/mutable/DoubleLinkedList$;

    return-object v0
.end method


# virtual methods
.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/DoubleLinkedList<",
            "*>;TA;",
            "Lscala/collection/mutable/DoubleLinkedList<",
            "TA;>;>;"
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lscala/collection/mutable/DoubleLinkedList$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder<",
            "TA;",
            "Lscala/collection/mutable/DoubleLinkedList<",
            "TA;>;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Lscala/collection/mutable/DoubleLinkedList$$anon$1;

    invoke-direct {v0}, Lscala/collection/mutable/DoubleLinkedList$$anon$1;-><init>()V

    return-object v0
.end method
