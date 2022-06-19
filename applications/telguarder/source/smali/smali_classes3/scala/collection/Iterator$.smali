.class public final Lscala/collection/Iterator$;
.super Ljava/lang/Object;
.source "Iterator.scala"


# static fields
.field public static final MODULE$:Lscala/collection/Iterator$;


# instance fields
.field private final empty:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/Iterator$;

    invoke-direct {v0}, Lscala/collection/Iterator$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    .line 37
    new-instance v0, Lscala/collection/Iterator$$anon$2;

    invoke-direct {v0}, Lscala/collection/Iterator$$anon$2;-><init>()V

    iput-object v0, p0, Lscala/collection/Iterator$;->empty:Lscala/collection/Iterator;

    return-void
.end method


# virtual methods
.method public IteratorCanBuildFrom()Lscala/collection/TraversableOnce$BufferedCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/TraversableOnce$BufferedCanBuildFrom<",
            "TA;",
            "Lscala/collection/Iterator;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lscala/collection/Iterator$$anon$24;

    invoke-direct {v0}, Lscala/collection/Iterator$$anon$24;-><init>()V

    return-object v0
.end method

.method public apply(Lscala/collection/Seq;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 63
    invoke-interface {p1}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public continually(Lscala/Function0;)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TA;>;)",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 160
    new-instance v0, Lscala/collection/Iterator$$anon$9;

    invoke-direct {v0, p1}, Lscala/collection/Iterator$$anon$9;-><init>(Lscala/Function0;)V

    return-object v0
.end method

.method public empty()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lscala/collection/Iterator$;->empty:Lscala/collection/Iterator;

    return-object v0
.end method

.method public fill(ILscala/Function0;)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/Function0<",
            "TA;>;)",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 71
    new-instance v0, Lscala/collection/Iterator$$anon$4;

    invoke-direct {v0, p1, p2}, Lscala/collection/Iterator$$anon$4;-><init>(ILscala/Function0;)V

    return-object v0
.end method

.method public from(I)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0, p1, v0}, Lscala/collection/Iterator$;->from(II)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public from(II)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Lscala/collection/Iterator$$anon$8;

    invoke-direct {v0, p1, p2}, Lscala/collection/Iterator$$anon$8;-><init>(II)V

    return-object v0
.end method

.method public iterate(Ljava/lang/Object;Lscala/Function1;)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lscala/Function1<",
            "TT;TT;>;)",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 123
    new-instance v0, Lscala/collection/Iterator$$anon$7;

    invoke-direct {v0, p1, p2}, Lscala/collection/Iterator$$anon$7;-><init>(Ljava/lang/Object;Lscala/Function1;)V

    return-object v0
.end method

.method public range(II)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, p1, p2, v0}, Lscala/collection/Iterator$;->range(III)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public range(III)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Lscala/collection/Iterator$$anon$6;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/Iterator$$anon$6;-><init>(III)V

    return-object v0
.end method

.method public single(Ljava/lang/Object;)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lscala/collection/Iterator$$anon$3;

    invoke-direct {v0, p1}, Lscala/collection/Iterator$$anon$3;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public tabulate(ILscala/Function1;)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TA;>;)",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 85
    new-instance v0, Lscala/collection/Iterator$$anon$5;

    invoke-direct {v0, p1, p2}, Lscala/collection/Iterator$$anon$5;-><init>(ILscala/Function1;)V

    return-object v0
.end method
