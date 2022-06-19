.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a$b;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field final a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

.field private final b:[B


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;[B)V
    .locals 1

    const-string v0, "kotlinJvmBinaryClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a$b;->b:[B

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 31
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;[B)V

    return-void
.end method
