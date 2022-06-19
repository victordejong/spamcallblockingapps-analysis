.class public final synthetic Lkotlin/reflect/jvm/internal/impl/builtins/a/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->HIDDEN:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->NOT_CONSIDERED:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->DROP:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->VISIBLE:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$b;->a:[I

    return-void
.end method
