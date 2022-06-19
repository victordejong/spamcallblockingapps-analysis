.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "kotlin.internal.PlatformDependent"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b/d;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-void
.end method

.method public static final a()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 37
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b/d;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method
