.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/k$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/k;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/k;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/k;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/load/java/d/l;)Lkotlin/reflect/jvm/internal/impl/load/java/c/a;
    .locals 1

    const-string v0, "javaElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/k$a;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/n;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/k$a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/n;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    return-object v0
.end method
