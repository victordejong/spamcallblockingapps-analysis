.class public final Lcom/bumptech/glide/p/l/a;
.super Ljava/lang/Object;
.source "FactoryPools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/p/l/a$e;,
        Lcom/bumptech/glide/p/l/a$f;,
        Lcom/bumptech/glide/p/l/a$g;,
        Lcom/bumptech/glide/p/l/a$d;
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/p/l/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/p/l/a$g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/p/l/a$a;

    invoke-direct {v0}, Lcom/bumptech/glide/p/l/a$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/p/l/a;->a:Lcom/bumptech/glide/p/l/a$g;

    return-void
.end method

.method private static a(Lb/h/k/e;Lcom/bumptech/glide/p/l/a$d;)Lb/h/k/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bumptech/glide/p/l/a$f;",
            ">(",
            "Lb/h/k/e<",
            "TT;>;",
            "Lcom/bumptech/glide/p/l/a$d<",
            "TT;>;)",
            "Lb/h/k/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/bumptech/glide/p/l/a;->c()Lcom/bumptech/glide/p/l/a$g;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/p/l/a;->b(Lb/h/k/e;Lcom/bumptech/glide/p/l/a$d;Lcom/bumptech/glide/p/l/a$g;)Lb/h/k/e;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lb/h/k/e;Lcom/bumptech/glide/p/l/a$d;Lcom/bumptech/glide/p/l/a$g;)Lb/h/k/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/h/k/e<",
            "TT;>;",
            "Lcom/bumptech/glide/p/l/a$d<",
            "TT;>;",
            "Lcom/bumptech/glide/p/l/a$g<",
            "TT;>;)",
            "Lb/h/k/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/p/l/a$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/p/l/a$e;-><init>(Lb/h/k/e;Lcom/bumptech/glide/p/l/a$d;Lcom/bumptech/glide/p/l/a$g;)V

    return-object v0
.end method

.method private static c()Lcom/bumptech/glide/p/l/a$g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/p/l/a$g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/p/l/a;->a:Lcom/bumptech/glide/p/l/a$g;

    return-object v0
.end method

.method public static d(ILcom/bumptech/glide/p/l/a$d;)Lb/h/k/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bumptech/glide/p/l/a$f;",
            ">(I",
            "Lcom/bumptech/glide/p/l/a$d<",
            "TT;>;)",
            "Lb/h/k/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/h/k/g;

    invoke-direct {v0, p0}, Lb/h/k/g;-><init>(I)V

    invoke-static {v0, p1}, Lcom/bumptech/glide/p/l/a;->a(Lb/h/k/e;Lcom/bumptech/glide/p/l/a$d;)Lb/h/k/e;

    move-result-object p0

    return-object p0
.end method

.method public static e()Lb/h/k/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lb/h/k/e<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-static {v0}, Lcom/bumptech/glide/p/l/a;->f(I)Lb/h/k/e;

    move-result-object v0

    return-object v0
.end method

.method public static f(I)Lb/h/k/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lb/h/k/e<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/h/k/g;

    invoke-direct {v0, p0}, Lb/h/k/g;-><init>(I)V

    new-instance p0, Lcom/bumptech/glide/p/l/a$b;

    invoke-direct {p0}, Lcom/bumptech/glide/p/l/a$b;-><init>()V

    new-instance v1, Lcom/bumptech/glide/p/l/a$c;

    invoke-direct {v1}, Lcom/bumptech/glide/p/l/a$c;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/p/l/a;->b(Lb/h/k/e;Lcom/bumptech/glide/p/l/a$d;Lcom/bumptech/glide/p/l/a$g;)Lb/h/k/e;

    move-result-object p0

    return-object p0
.end method
