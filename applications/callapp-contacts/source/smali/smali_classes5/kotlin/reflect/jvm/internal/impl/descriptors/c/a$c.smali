.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$c;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/bf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$c;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "protected_static"

    const/4 v1, 0x1

    .line 37
    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "protected/*protected static*/"

    return-object v0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/descriptors/bf;
    .locals 1

    .line 41
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/be$g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/be$g;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    return-object v0
.end method
