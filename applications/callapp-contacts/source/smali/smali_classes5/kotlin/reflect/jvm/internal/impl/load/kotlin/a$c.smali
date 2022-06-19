.class public final synthetic Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;
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

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->values()[Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->PROPERTY_SETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$c;->a:[I

    return-void
.end method
