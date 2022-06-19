.class public final Lkotlin/reflect/jvm/internal/impl/resolve/e/c$a;
.super Lkotlin/reflect/jvm/internal/impl/resolve/e/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/resolve/e/c$a;

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/c$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/c$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/c$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/c$a;

    .line 211
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

    .line 1152
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->h()I

    move-result v0

    .line 211
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

    .line 2149
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->f()I

    move-result v1

    .line 211
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

    .line 2150
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->g()I

    move-result v2

    or-int/2addr v1, v2

    not-int v1, v1

    and-int/2addr v0, v1

    .line 211
    sput v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/c$a;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 210
    sget v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/c$a;->b:I

    return v0
.end method
