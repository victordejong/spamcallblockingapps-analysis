.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lkotlin/reflect/jvm/internal/impl/c/e;

.field final b:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/load/java/d/g;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a;->b:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 127
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 129
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->hashCode()I

    move-result v0

    return v0
.end method
