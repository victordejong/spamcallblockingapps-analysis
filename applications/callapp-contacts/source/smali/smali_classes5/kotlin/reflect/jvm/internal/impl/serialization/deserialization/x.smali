.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/a$b$b;)Lkotlin/reflect/jvm/internal/impl/descriptors/e;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 49
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x$a;->d:[I

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 56
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    return-object p0

    .line 55
    :pswitch_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->OBJECT:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    return-object p0

    .line 54
    :pswitch_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    return-object p0

    .line 53
    :pswitch_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    return-object p0

    .line 52
    :pswitch_3
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    return-object p0

    .line 51
    :pswitch_4
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    return-object p0

    .line 50
    :pswitch_5
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/a$j;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x$a;->a:[I

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$j;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    .line 19
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object p0

    .line 18
    :cond_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->SEALED:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object p0

    .line 17
    :cond_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object p0

    .line 16
    :cond_3
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->OPEN:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object p0

    .line 15
    :cond_4
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object p0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;)Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .locals 2

    const-string v0, "projection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x$a;->g:[I

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 83
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only IN, OUT and INV are supported. Actual argument: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    return-object p0

    .line 80
    :cond_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    return-object p0

    .line 79
    :cond_3
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    return-object p0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/a$r$b;)Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .locals 1

    const-string/jumbo v0, "variance"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x$a;->f:[I

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$b;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 75
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 74
    :cond_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    return-object p0

    .line 73
    :cond_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    return-object p0
.end method
