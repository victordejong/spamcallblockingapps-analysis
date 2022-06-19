.class public final Lscala/collection/mutable/Stack$;
.super Lscala/collection/generic/SeqFactory;
.source "Stack.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory<",
        "Lscala/collection/mutable/Stack;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/Stack$;


# instance fields
.field private final empty:Lscala/collection/mutable/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/Stack<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/Stack$;

    invoke-direct {v0}, Lscala/collection/mutable/Stack$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    .line 36
    new-instance v0, Lscala/collection/mutable/Stack;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v0, v1}, Lscala/collection/mutable/Stack;-><init>(Lscala/collection/immutable/List;)V

    iput-object v0, p0, Lscala/collection/mutable/Stack$;->empty:Lscala/collection/mutable/Stack;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 26
    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

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
            "Lscala/collection/mutable/Stack<",
            "*>;TA;",
            "Lscala/collection/mutable/Stack<",
            "TA;>;>;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lscala/collection/mutable/Stack$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Stack<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lscala/collection/mutable/Stack$;->empty:Lscala/collection/mutable/Stack;

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
            "Lscala/collection/mutable/Stack<",
            "TA;>;>;"
        }
    .end annotation

    .line 35
    new-instance v0, Lscala/collection/mutable/Stack$StackBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/Stack$StackBuilder;-><init>()V

    return-object v0
.end method
