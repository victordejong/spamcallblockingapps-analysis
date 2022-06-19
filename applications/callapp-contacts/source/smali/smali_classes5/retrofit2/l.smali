.class abstract Lretrofit2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/l$o;,
        Lretrofit2/l$a;,
        Lretrofit2/l$h;,
        Lretrofit2/l$m;,
        Lretrofit2/l$g;,
        Lretrofit2/l$c;,
        Lretrofit2/l$b;,
        Lretrofit2/l$f;,
        Lretrofit2/l$e;,
        Lretrofit2/l$k;,
        Lretrofit2/l$l;,
        Lretrofit2/l$j;,
        Lretrofit2/l$i;,
        Lretrofit2/l$d;,
        Lretrofit2/l$n;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lretrofit2/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/l<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Lretrofit2/l$1;

    invoke-direct {v0, p0}, Lretrofit2/l$1;-><init>(Lretrofit2/l;)V

    return-object v0
.end method

.method abstract a(Lretrofit2/n;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/n;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final b()Lretrofit2/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/l<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lretrofit2/l$2;

    invoke-direct {v0, p0}, Lretrofit2/l$2;-><init>(Lretrofit2/l;)V

    return-object v0
.end method
