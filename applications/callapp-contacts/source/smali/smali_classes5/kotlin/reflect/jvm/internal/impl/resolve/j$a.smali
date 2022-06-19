.class public final Lkotlin/reflect/jvm/internal/impl/resolve/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lkotlin/reflect/jvm/internal/impl/resolve/j$a;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/resolve/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/j$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/j$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/j$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/j$a;

    .line 15
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/j$a$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/j$a$a;-><init>()V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/j;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/j$a;->b:Lkotlin/reflect/jvm/internal/impl/resolve/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
