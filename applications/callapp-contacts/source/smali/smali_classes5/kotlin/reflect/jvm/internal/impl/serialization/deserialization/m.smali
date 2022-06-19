.class public abstract Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;
.source "SourceFile"


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/impl/f/n;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p3, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/b;)V

    .line 28
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m;->b:Lkotlin/reflect/jvm/internal/impl/f/n;

    return-void
.end method


# virtual methods
.method public abstract a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;)V
.end method

.method public abstract d()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;
.end method
