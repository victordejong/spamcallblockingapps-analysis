.class public final Lcom/bumptech/glide/o/l/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/o/l/a$e;,
        Lcom/bumptech/glide/o/l/a$f;,
        Lcom/bumptech/glide/o/l/a$g;,
        Lcom/bumptech/glide/o/l/a$d;
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/o/l/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/o/l/a$g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/o/l/a$a;

    invoke-direct {v0}, Lcom/bumptech/glide/o/l/a$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/o/l/a;->a:Lcom/bumptech/glide/o/l/a$g;

    return-void
.end method

.method private static a(Ld/h/l/e;Lcom/bumptech/glide/o/l/a$d;)Ld/h/l/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bumptech/glide/o/l/a$f;",
            ">(",
            "Ld/h/l/e<",
            "TT;>;",
            "Lcom/bumptech/glide/o/l/a$d<",
            "TT;>;)",
            "Ld/h/l/e<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/o/l/a;->c()Lcom/bumptech/glide/o/l/a$g;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/o/l/a;->b(Ld/h/l/e;Lcom/bumptech/glide/o/l/a$d;Lcom/bumptech/glide/o/l/a$g;)Ld/h/l/e;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ld/h/l/e;Lcom/bumptech/glide/o/l/a$d;Lcom/bumptech/glide/o/l/a$g;)Ld/h/l/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ld/h/l/e<",
            "TT;>;",
            "Lcom/bumptech/glide/o/l/a$d<",
            "TT;>;",
            "Lcom/bumptech/glide/o/l/a$g<",
            "TT;>;)",
            "Ld/h/l/e<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/o/l/a$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/o/l/a$e;-><init>(Ld/h/l/e;Lcom/bumptech/glide/o/l/a$d;Lcom/bumptech/glide/o/l/a$g;)V

    return-object v0
.end method

.method private static c()Lcom/bumptech/glide/o/l/a$g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/o/l/a$g<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/o/l/a;->a:Lcom/bumptech/glide/o/l/a$g;

    return-object v0
.end method

.method public static d(ILcom/bumptech/glide/o/l/a$d;)Ld/h/l/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bumptech/glide/o/l/a$f;",
            ">(I",
            "Lcom/bumptech/glide/o/l/a$d<",
            "TT;>;)",
            "Ld/h/l/e<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ld/h/l/g;

    invoke-direct {v0, p0}, Ld/h/l/g;-><init>(I)V

    invoke-static {v0, p1}, Lcom/bumptech/glide/o/l/a;->a(Ld/h/l/e;Lcom/bumptech/glide/o/l/a$d;)Ld/h/l/e;

    move-result-object p0

    return-object p0
.end method

.method public static e()Ld/h/l/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ld/h/l/e<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/bumptech/glide/o/l/a;->f(I)Ld/h/l/e;

    move-result-object v0

    return-object v0
.end method

.method public static f(I)Ld/h/l/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ld/h/l/e<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ld/h/l/g;

    invoke-direct {v0, p0}, Ld/h/l/g;-><init>(I)V

    new-instance p0, Lcom/bumptech/glide/o/l/a$b;

    invoke-direct {p0}, Lcom/bumptech/glide/o/l/a$b;-><init>()V

    new-instance v1, Lcom/bumptech/glide/o/l/a$c;

    invoke-direct {v1}, Lcom/bumptech/glide/o/l/a$c;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/o/l/a;->b(Ld/h/l/e;Lcom/bumptech/glide/o/l/a$d;Lcom/bumptech/glide/o/l/a$g;)Ld/h/l/e;

    move-result-object p0

    return-object p0
.end method
