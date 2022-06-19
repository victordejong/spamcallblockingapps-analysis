.class public Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo$;
.super Lscala/runtime/AbstractFunction4;
.source "CharSequenceSupport.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluecabin/textoo/util/CharSequenceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpanInfo$"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction4<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo$;

    invoke-direct {v0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lscala/runtime/AbstractFunction4;-><init>()V

    sput-object p0, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 45
    sget-object v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo$;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p3

    invoke-static {p4}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo$;->apply(Ljava/lang/Object;III)Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;III)Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;
    .locals 1

    .line 45
    new-instance v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;-><init>(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SpanInfo"

    return-object v0
.end method

.method public unapply(Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;)Lscala/Option;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;",
            ")",
            "Lscala/Option<",
            "Lscala/Tuple4<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 45
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple4;

    invoke-virtual {p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->span()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->start()I

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->end()I

    move-result v4

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->flags()I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, Lscala/Tuple4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
