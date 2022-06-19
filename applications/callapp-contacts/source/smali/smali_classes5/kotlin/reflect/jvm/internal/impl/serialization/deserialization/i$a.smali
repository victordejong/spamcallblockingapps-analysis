.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a;

    .line 34
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a$a;-><init>()V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;
    .locals 1

    .line 34
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i$a;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    return-object v0
.end method
