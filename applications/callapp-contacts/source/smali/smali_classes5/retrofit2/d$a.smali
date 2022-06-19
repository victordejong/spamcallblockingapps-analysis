.class final Lretrofit2/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/b<",
        "TR;",
        "Ljava/util/concurrent/CompletableFuture<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lretrofit2/d$a;->a:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 2

    .line 1067
    new-instance v0, Lretrofit2/d$b;

    invoke-direct {v0, p1}, Lretrofit2/d$b;-><init>(Lretrofit2/Call;)V

    .line 1069
    new-instance v1, Lretrofit2/d$a$1;

    invoke-direct {v1, p0, v0}, Lretrofit2/d$a$1;-><init>(Lretrofit2/d$a;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p1, v1}, Lretrofit2/Call;->a(Lretrofit2/c;)V

    return-object v0
.end method

.method public final a()Ljava/lang/reflect/Type;
    .locals 1

    .line 63
    iget-object v0, p0, Lretrofit2/d$a;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method
