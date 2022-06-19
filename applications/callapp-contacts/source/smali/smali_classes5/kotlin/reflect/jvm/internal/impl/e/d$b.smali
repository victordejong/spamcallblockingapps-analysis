.class public final synthetic Lkotlin/reflect/jvm/internal/impl/e/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/e/m;->values()[Lkotlin/reflect/jvm/internal/impl/e/m;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/m;->PLAIN:Lkotlin/reflect/jvm/internal/impl/e/m;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/e/m;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/m;->HTML:Lkotlin/reflect/jvm/internal/impl/e/m;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/e/m;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/e/d$b;->a:[I

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/e/k;->values()[Lkotlin/reflect/jvm/internal/impl/e/k;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/k;->ALL:Lkotlin/reflect/jvm/internal/impl/e/k;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/e/k;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/k;->ONLY_NON_SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/e/k;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/e/k;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/k;->NONE:Lkotlin/reflect/jvm/internal/impl/e/k;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/e/k;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/e/d$b;->b:[I

    return-void
.end method
