.class public final Lkotlin/reflect/jvm/internal/impl/resolve/e/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h$a;

.field private static final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h$a;

    .line 57
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h$a$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h$a$a;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h$a;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 57
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h$a;->b:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
