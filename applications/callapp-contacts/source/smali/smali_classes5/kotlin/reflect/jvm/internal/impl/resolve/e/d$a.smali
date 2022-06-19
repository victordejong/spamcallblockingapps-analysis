.class public final Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;-><init>()V

    return-void
.end method

.method static a()I
    .locals 2

    .line 143
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a()I

    move-result v0

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->b(I)V

    return v0
.end method
