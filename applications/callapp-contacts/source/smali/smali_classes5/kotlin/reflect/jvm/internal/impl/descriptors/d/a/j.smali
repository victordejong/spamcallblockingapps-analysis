.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j$a;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

.field public final c:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j$a;

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/a;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 50
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/a;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/a;)V

    return-void
.end method
