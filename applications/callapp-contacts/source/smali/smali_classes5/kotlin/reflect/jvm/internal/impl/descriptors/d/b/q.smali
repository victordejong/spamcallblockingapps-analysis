.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/q;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/d/o;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;)V

    .line 41
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/q;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1

    .line 41
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/q;->b:Ljava/lang/Object;

    return-object v0
.end method
