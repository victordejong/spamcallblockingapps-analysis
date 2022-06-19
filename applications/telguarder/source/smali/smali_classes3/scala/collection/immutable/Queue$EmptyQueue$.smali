.class public Lscala/collection/immutable/Queue$EmptyQueue$;
.super Lscala/collection/immutable/Queue;
.source "Queue.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Queue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyQueue$"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/Queue<",
        "Lscala/runtime/Nothing$;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Queue$EmptyQueue$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Queue$EmptyQueue$;

    invoke-direct {v0}, Lscala/collection/immutable/Queue$EmptyQueue$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 164
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Queue;-><init>(Lscala/collection/immutable/List;Lscala/collection/immutable/List;)V

    sput-object p0, Lscala/collection/immutable/Queue$EmptyQueue$;->MODULE$:Lscala/collection/immutable/Queue$EmptyQueue$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 164
    sget-object v0, Lscala/collection/immutable/Queue$EmptyQueue$;->MODULE$:Lscala/collection/immutable/Queue$EmptyQueue$;

    return-object v0
.end method
