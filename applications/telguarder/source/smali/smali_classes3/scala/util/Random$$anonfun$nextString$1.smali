.class public final Lscala/util/Random$$anonfun$nextString$1;
.super Lscala/runtime/AbstractFunction0$mcC$sp;
.source "Random.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/Random;->nextString(I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/util/Random;


# direct methods
.method public constructor <init>(Lscala/util/Random;)V
    .locals 0

    .line 89
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/util/Random$$anonfun$nextString$1;->$outer:Lscala/util/Random;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcC$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()C
    .locals 1

    .line 89
    iget-object v0, p0, Lscala/util/Random$$anonfun$nextString$1;->$outer:Lscala/util/Random;

    invoke-virtual {v0}, Lscala/util/Random;->scala$util$Random$$safeChar$1()C

    move-result v0

    return v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lscala/util/Random$$anonfun$nextString$1;->apply()C

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcC$sp()C
    .locals 1

    .line 89
    iget-object v0, p0, Lscala/util/Random$$anonfun$nextString$1;->$outer:Lscala/util/Random;

    invoke-virtual {v0}, Lscala/util/Random;->scala$util$Random$$safeChar$1()C

    move-result v0

    return v0
.end method
