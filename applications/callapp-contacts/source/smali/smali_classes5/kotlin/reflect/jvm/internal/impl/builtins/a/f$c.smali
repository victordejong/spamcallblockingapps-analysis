.class public final synthetic Lkotlin/reflect/jvm/internal/impl/builtins/a/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "c"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;->FROM_DEPENDENCIES:Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;->FROM_CLASS_LOADER:Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;->FALLBACK:Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$c;->a:[I

    return-void
.end method
