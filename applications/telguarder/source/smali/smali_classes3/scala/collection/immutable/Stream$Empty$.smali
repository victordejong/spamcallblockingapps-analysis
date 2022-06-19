.class public Lscala/collection/immutable/Stream$Empty$;
.super Lscala/collection/immutable/Stream;
.source "Stream.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Empty$"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/Stream<",
        "Lscala/runtime/Nothing$;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Stream$Empty$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Stream$Empty$;

    invoke-direct {v0}, Lscala/collection/immutable/Stream$Empty$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1166
    invoke-direct {p0}, Lscala/collection/immutable/Stream;-><init>()V

    sput-object p0, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1166
    sget-object v0, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic head()Ljava/lang/Object;
    .locals 1

    .line 1166
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$Empty$;->head()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public head()Lscala/runtime/Nothing$;
    .locals 2

    .line 1168
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "head of empty stream"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 1166
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$Empty$;->tail()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic tail()Lscala/collection/LinearSeqOptimized;
    .locals 1

    .line 1166
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$Empty$;->tail()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public tail()Lscala/runtime/Nothing$;
    .locals 2

    .line 1169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "tail of empty stream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tailDefined()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
