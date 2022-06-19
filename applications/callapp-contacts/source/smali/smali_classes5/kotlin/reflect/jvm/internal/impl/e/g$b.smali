.class public final Lkotlin/reflect/jvm/internal/impl/e/g$b;
.super Lkotlin/properties/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/e/g;->a(Ljava/lang/Object;)Lkotlin/properties/ReadWriteProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/properties/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/e/g;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/e/g;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/e/g$b;->a:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/e/g$b;->b:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 51
    invoke-direct {p0, p2}, Lkotlin/properties/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final beforeChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty<",
            "*>;TT;TT;)Z"
        }
    .end annotation

    const-string p2, "property"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/e/g$b;->b:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 1032
    iget-boolean p1, p1, Lkotlin/reflect/jvm/internal/impl/e/g;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot modify readonly DescriptorRendererOptions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
