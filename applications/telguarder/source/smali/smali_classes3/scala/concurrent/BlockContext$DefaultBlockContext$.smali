.class public Lscala/concurrent/BlockContext$DefaultBlockContext$;
.super Ljava/lang/Object;
.source "BlockContext.scala"

# interfaces
.implements Lscala/concurrent/BlockContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/BlockContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultBlockContext$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/concurrent/BlockContext$DefaultBlockContext$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/BlockContext$DefaultBlockContext$;

    invoke-direct {v0}, Lscala/concurrent/BlockContext$DefaultBlockContext$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/BlockContext$DefaultBlockContext$;->MODULE$:Lscala/concurrent/BlockContext$DefaultBlockContext$;

    return-void
.end method


# virtual methods
.method public blockOn(Lscala/Function0;Lscala/concurrent/CanAwait;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TT;>;",
            "Lscala/concurrent/CanAwait;",
            ")TT;"
        }
    .end annotation

    .line 53
    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
