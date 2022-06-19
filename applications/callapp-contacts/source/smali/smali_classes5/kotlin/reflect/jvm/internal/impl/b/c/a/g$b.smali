.class public final synthetic Lkotlin/reflect/jvm/internal/impl/b/c/a/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/c/a/g;
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

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->values()[Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->NONE:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->INTERNAL_TO_CLASS_ID:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->DESC_TO_CLASS_ID:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/g$b;->a:[I

    return-void
.end method
