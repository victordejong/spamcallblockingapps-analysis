.class public final Lscala/PartialFunction$;
.super Ljava/lang/Object;
.source "PartialFunction.scala"


# static fields
.field public static final MODULE$:Lscala/PartialFunction$;


# instance fields
.field private final empty_pf:Lscala/PartialFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/PartialFunction<",
            "Ljava/lang/Object;",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field

.field public final scala$PartialFunction$$constFalse:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final scala$PartialFunction$$fallback_pf:Lscala/PartialFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/PartialFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/PartialFunction$;

    invoke-direct {v0}, Lscala/PartialFunction$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    .line 215
    new-instance v0, Lscala/PartialFunction$$anonfun$1;

    invoke-direct {v0}, Lscala/PartialFunction$$anonfun$1;-><init>()V

    iput-object v0, p0, Lscala/PartialFunction$;->scala$PartialFunction$$fallback_pf:Lscala/PartialFunction;

    .line 249
    new-instance v0, Lscala/PartialFunction$$anonfun$2;

    invoke-direct {v0}, Lscala/PartialFunction$$anonfun$2;-><init>()V

    iput-object v0, p0, Lscala/PartialFunction$;->scala$PartialFunction$$constFalse:Lscala/Function1;

    .line 251
    new-instance v0, Lscala/PartialFunction$$anon$1;

    invoke-direct {v0}, Lscala/PartialFunction$$anon$1;-><init>()V

    iput-object v0, p0, Lscala/PartialFunction$;->empty_pf:Lscala/PartialFunction;

    return-void
.end method


# virtual methods
.method public apply(Lscala/Function1;)Lscala/PartialFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;)",
            "Lscala/PartialFunction<",
            "TA;TB;>;"
        }
    .end annotation

    .line 247
    new-instance v0, Lscala/PartialFunction$$anonfun$apply$1;

    invoke-direct {v0, p1}, Lscala/PartialFunction$$anonfun$apply$1;-><init>(Lscala/Function1;)V

    return-object v0
.end method

.method public cond(Ljava/lang/Object;Lscala/PartialFunction;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lscala/PartialFunction<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lscala/PartialFunction$;->scala$PartialFunction$$constFalse:Lscala/Function1;

    invoke-interface {p2, p1, v0}, Lscala/PartialFunction;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public condOpt(Ljava/lang/Object;Lscala/PartialFunction;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lscala/PartialFunction<",
            "TT;TU;>;)",
            "Lscala/Option<",
            "TU;>;"
        }
    .end annotation

    .line 286
    invoke-interface {p2}, Lscala/PartialFunction;->lift()Lscala/Function1;

    move-result-object p2

    invoke-interface {p2, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Option;

    return-object p1
.end method

.method public empty()Lscala/PartialFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/PartialFunction<",
            "TA;TB;>;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lscala/PartialFunction$;->empty_pf:Lscala/PartialFunction;

    return-object v0
.end method

.method public scala$PartialFunction$$checkFallback()Lscala/PartialFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/PartialFunction<",
            "Ljava/lang/Object;",
            "TB;>;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lscala/PartialFunction$;->scala$PartialFunction$$fallback_pf:Lscala/PartialFunction;

    return-object v0
.end method

.method public scala$PartialFunction$$fallbackOccurred(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)Z"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lscala/PartialFunction$;->scala$PartialFunction$$fallback_pf:Lscala/PartialFunction;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public unlifted(Lscala/Function1;)Lscala/PartialFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/Option<",
            "TB;>;>;)",
            "Lscala/PartialFunction<",
            "TA;TB;>;"
        }
    .end annotation

    .line 239
    instance-of v0, p1, Lscala/PartialFunction$Lifted;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/PartialFunction$Lifted;

    invoke-virtual {p1}, Lscala/PartialFunction$Lifted;->pf()Lscala/PartialFunction;

    move-result-object p1

    goto :goto_0

    .line 241
    :cond_0
    new-instance v0, Lscala/PartialFunction$Unlifted;

    invoke-direct {v0, p1}, Lscala/PartialFunction$Unlifted;-><init>(Lscala/Function1;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
