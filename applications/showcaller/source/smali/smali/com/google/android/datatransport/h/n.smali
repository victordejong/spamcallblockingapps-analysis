.class final Lcom/google/android/datatransport/h/n;
.super Ljava/lang/Object;
.source "TransportFactoryImpl.java"

# interfaces
.implements Lcom/google/android/datatransport/f;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/datatransport/h/m;

.field private final c:Lcom/google/android/datatransport/h/q;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/android/datatransport/h/m;Lcom/google/android/datatransport/h/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/b;",
            ">;",
            "Lcom/google/android/datatransport/h/m;",
            "Lcom/google/android/datatransport/h/q;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/h/n;->a:Ljava/util/Set;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/h/n;->b:Lcom/google/android/datatransport/h/m;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/h/n;->c:Lcom/google/android/datatransport/h/q;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/datatransport/b;Lcom/google/android/datatransport/d;)Lcom/google/android/datatransport/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/datatransport/b;",
            "Lcom/google/android/datatransport/d<",
            "TT;[B>;)",
            "Lcom/google/android/datatransport/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/datatransport/h/n;->a:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Lcom/google/android/datatransport/h/p;

    iget-object v1, p0, Lcom/google/android/datatransport/h/n;->b:Lcom/google/android/datatransport/h/m;

    iget-object v5, p0, Lcom/google/android/datatransport/h/n;->c:Lcom/google/android/datatransport/h/q;

    move-object v0, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/h/p;-><init>(Lcom/google/android/datatransport/h/m;Ljava/lang/String;Lcom/google/android/datatransport/b;Lcom/google/android/datatransport/d;Lcom/google/android/datatransport/h/q;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const/4 p3, 0x1

    iget-object p4, p0, Lcom/google/android/datatransport/h/n;->a:Ljava/util/Set;

    aput-object p4, p2, p3

    const-string p3, "%s is not supported byt this factory. Supported encodings are: %s."

    .line 4
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
