.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

.field public final b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;

.field public final c:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/s;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

.field private final e:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;Lkotlin/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;",
            "Lkotlin/Lazy<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegateForDefaultTypeQualifiers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 113
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;

    .line 114
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->c:Lkotlin/Lazy;

    .line 122
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->e:Lkotlin/Lazy;

    .line 124
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    invoke-direct {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/load/java/s;
    .locals 1

    .line 122
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/s;

    return-object v0
.end method
