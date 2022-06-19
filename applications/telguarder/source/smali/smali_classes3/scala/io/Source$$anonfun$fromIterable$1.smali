.class public final Lscala/io/Source$$anonfun$fromIterable$1;
.super Lscala/runtime/AbstractFunction0;
.source "Source.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/io/Source$;->fromIterable(Lscala/collection/Iterable;)Lscala/io/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/io/Source;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final iterable$1:Lscala/collection/Iterable;


# direct methods
.method public constructor <init>(Lscala/collection/Iterable;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lscala/io/Source$$anonfun$fromIterable$1;->iterable$1:Lscala/collection/Iterable;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/io/Source$$anonfun$fromIterable$1;->apply()Lscala/io/Source;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/io/Source;
    .locals 2

    .line 36
    sget-object v0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    iget-object v1, p0, Lscala/io/Source$$anonfun$fromIterable$1;->iterable$1:Lscala/collection/Iterable;

    invoke-virtual {v0, v1}, Lscala/io/Source$;->fromIterable(Lscala/collection/Iterable;)Lscala/io/Source;

    move-result-object v0

    return-object v0
.end method
