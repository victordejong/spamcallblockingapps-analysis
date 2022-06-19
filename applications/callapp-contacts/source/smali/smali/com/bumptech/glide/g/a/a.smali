.class public final Lcom/bumptech/glide/g/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/g/a/a$b;,
        Lcom/bumptech/glide/g/a/a$c;,
        Lcom/bumptech/glide/g/a/a$d;,
        Lcom/bumptech/glide/g/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/g/a/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/a/a$d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/bumptech/glide/g/a/a$1;

    invoke-direct {v0}, Lcom/bumptech/glide/g/a/a$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/g/a/a;->a:Lcom/bumptech/glide/g/a/a$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroidx/core/e/c$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/core/e/c$a<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 2086
    new-instance v0, Landroidx/core/e/c$c;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/core/e/c$c;-><init>(I)V

    new-instance v1, Lcom/bumptech/glide/g/a/a$2;

    invoke-direct {v1}, Lcom/bumptech/glide/g/a/a$2;-><init>()V

    new-instance v2, Lcom/bumptech/glide/g/a/a$3;

    invoke-direct {v2}, Lcom/bumptech/glide/g/a/a$3;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/g/a/a;->a(Landroidx/core/e/c$a;Lcom/bumptech/glide/g/a/a$a;Lcom/bumptech/glide/g/a/a$d;)Landroidx/core/e/c$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILcom/bumptech/glide/g/a/a$a;)Landroidx/core/e/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bumptech/glide/g/a/a$c;",
            ">(I",
            "Lcom/bumptech/glide/g/a/a$a<",
            "TT;>;)",
            "Landroidx/core/e/c$a<",
            "TT;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Landroidx/core/e/c$c;

    invoke-direct {v0, p0}, Landroidx/core/e/c$c;-><init>(I)V

    .line 1118
    sget-object p0, Lcom/bumptech/glide/g/a/a;->a:Lcom/bumptech/glide/g/a/a$d;

    .line 1106
    invoke-static {v0, p1, p0}, Lcom/bumptech/glide/g/a/a;->a(Landroidx/core/e/c$a;Lcom/bumptech/glide/g/a/a$a;Lcom/bumptech/glide/g/a/a$d;)Landroidx/core/e/c$a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroidx/core/e/c$a;Lcom/bumptech/glide/g/a/a$a;Lcom/bumptech/glide/g/a/a$d;)Landroidx/core/e/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/e/c$a<",
            "TT;>;",
            "Lcom/bumptech/glide/g/a/a$a<",
            "TT;>;",
            "Lcom/bumptech/glide/g/a/a$d<",
            "TT;>;)",
            "Landroidx/core/e/c$a<",
            "TT;>;"
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/bumptech/glide/g/a/a$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/g/a/a$b;-><init>(Landroidx/core/e/c$a;Lcom/bumptech/glide/g/a/a$a;Lcom/bumptech/glide/g/a/a$d;)V

    return-object v0
.end method
