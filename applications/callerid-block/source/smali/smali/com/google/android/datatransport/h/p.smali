.class final Lcom/google/android/datatransport/h/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/datatransport/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/datatransport/h/m;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/datatransport/b;

.field private final d:Lcom/google/android/datatransport/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/d<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/datatransport/h/q;


# direct methods
.method constructor <init>(Lcom/google/android/datatransport/h/m;Ljava/lang/String;Lcom/google/android/datatransport/b;Lcom/google/android/datatransport/d;Lcom/google/android/datatransport/h/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/h/m;",
            "Ljava/lang/String;",
            "Lcom/google/android/datatransport/b;",
            "Lcom/google/android/datatransport/d<",
            "TT;[B>;",
            "Lcom/google/android/datatransport/h/q;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/h/p;->a:Lcom/google/android/datatransport/h/m;

    iput-object p2, p0, Lcom/google/android/datatransport/h/p;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/datatransport/h/p;->c:Lcom/google/android/datatransport/b;

    iput-object p4, p0, Lcom/google/android/datatransport/h/p;->d:Lcom/google/android/datatransport/d;

    iput-object p5, p0, Lcom/google/android/datatransport/h/p;->e:Lcom/google/android/datatransport/h/q;

    return-void
.end method

.method static synthetic c(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/datatransport/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/datatransport/h/o;->b()Lcom/google/android/datatransport/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/datatransport/h/p;->b(Lcom/google/android/datatransport/c;Lcom/google/android/datatransport/g;)V

    return-void
.end method

.method public b(Lcom/google/android/datatransport/c;Lcom/google/android/datatransport/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/c<",
            "TT;>;",
            "Lcom/google/android/datatransport/g;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/datatransport/h/p;->e:Lcom/google/android/datatransport/h/q;

    invoke-static {}, Lcom/google/android/datatransport/h/l;->a()Lcom/google/android/datatransport/h/l$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/datatransport/h/p;->a:Lcom/google/android/datatransport/h/m;

    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/h/l$a;->e(Lcom/google/android/datatransport/h/m;)Lcom/google/android/datatransport/h/l$a;

    invoke-virtual {v1, p1}, Lcom/google/android/datatransport/h/l$a;->c(Lcom/google/android/datatransport/c;)Lcom/google/android/datatransport/h/l$a;

    iget-object p1, p0, Lcom/google/android/datatransport/h/p;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/datatransport/h/l$a;->f(Ljava/lang/String;)Lcom/google/android/datatransport/h/l$a;

    iget-object p1, p0, Lcom/google/android/datatransport/h/p;->d:Lcom/google/android/datatransport/d;

    invoke-virtual {v1, p1}, Lcom/google/android/datatransport/h/l$a;->d(Lcom/google/android/datatransport/d;)Lcom/google/android/datatransport/h/l$a;

    iget-object p1, p0, Lcom/google/android/datatransport/h/p;->c:Lcom/google/android/datatransport/b;

    invoke-virtual {v1, p1}, Lcom/google/android/datatransport/h/l$a;->b(Lcom/google/android/datatransport/b;)Lcom/google/android/datatransport/h/l$a;

    invoke-virtual {v1}, Lcom/google/android/datatransport/h/l$a;->a()Lcom/google/android/datatransport/h/l;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/datatransport/h/q;->a(Lcom/google/android/datatransport/h/l;Lcom/google/android/datatransport/g;)V

    return-void
.end method
