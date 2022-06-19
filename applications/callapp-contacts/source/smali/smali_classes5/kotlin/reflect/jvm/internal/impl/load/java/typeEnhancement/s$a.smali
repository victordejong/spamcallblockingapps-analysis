.class public final synthetic Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->values()[Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->READ_ONLY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->MUTABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s$a;->a:[I

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->values()[Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s$a;->b:[I

    return-void
.end method
