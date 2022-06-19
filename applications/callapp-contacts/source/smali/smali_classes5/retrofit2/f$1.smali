.class final Lretrofit2/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/f;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/b<",
        "Ljava/lang/Object;",
        "Lretrofit2/Call<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Type;

.field final synthetic b:Ljava/util/concurrent/Executor;

.field final synthetic c:Lretrofit2/f;


# direct methods
.method constructor <init>(Lretrofit2/f;Ljava/lang/reflect/Type;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lretrofit2/f$1;->c:Lretrofit2/f;

    iput-object p2, p0, Lretrofit2/f$1;->a:Ljava/lang/reflect/Type;

    iput-object p3, p0, Lretrofit2/f$1;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 2

    .line 1056
    iget-object v0, p0, Lretrofit2/f$1;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    return-object p1

    .line 1058
    :cond_0
    new-instance v1, Lretrofit2/f$a;

    invoke-direct {v1, v0, p1}, Lretrofit2/f$a;-><init>(Ljava/util/concurrent/Executor;Lretrofit2/Call;)V

    return-object v1
.end method

.method public final a()Ljava/lang/reflect/Type;
    .locals 1

    .line 52
    iget-object v0, p0, Lretrofit2/f$1;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method
