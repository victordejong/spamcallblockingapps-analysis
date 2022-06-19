.class public final synthetic Lkotlin/reflect/jvm/internal/impl/e/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/e/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/e/l;->values()[Lkotlin/reflect/jvm/internal/impl/e/l;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/l;->PRETTY:Lkotlin/reflect/jvm/internal/impl/e/l;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/e/l;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/l;->DEBUG:Lkotlin/reflect/jvm/internal/impl/e/l;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/e/l;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/l;->NONE:Lkotlin/reflect/jvm/internal/impl/e/l;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/e/l;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/e/d$a$a;->a:[I

    return-void
.end method
