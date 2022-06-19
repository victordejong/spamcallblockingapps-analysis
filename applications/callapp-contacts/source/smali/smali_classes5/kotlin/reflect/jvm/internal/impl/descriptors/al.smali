.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/impl/descriptors/h;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lkotlin/reflect/jvm/internal/impl/descriptors/al;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/h;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/al;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/h;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/al;",
            ")V"
        }
    .end annotation

    const-string v0, "classifierDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/al;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    .line 66
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/al;->b:Ljava/util/List;

    .line 67
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/al;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/al;

    return-void
.end method
