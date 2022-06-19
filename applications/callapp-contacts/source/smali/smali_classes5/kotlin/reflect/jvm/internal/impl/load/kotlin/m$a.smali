.class public abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a$b;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;
    .locals 2

    .line 29
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a$b;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 1031
    :cond_1
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    return-object v0
.end method
