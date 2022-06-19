.class public final Lscala/concurrent/duration/Duration$$anonfun$2;
.super Lscala/runtime/AbstractFunction1;
.source "Duration.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/duration/Duration$;->apply(Ljava/lang/String;)Lscala/concurrent/duration/Duration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p1

    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Duration$$anonfun$2;->apply(C)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(C)Z
    .locals 2

    sget-object v0, Lscala/runtime/RichChar$;->MODULE$:Lscala/runtime/RichChar$;

    .line 60
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0, p1}, Lscala/runtime/RichChar$;->isLetter$extension(C)Z

    move-result p1

    return p1
.end method
