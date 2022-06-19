.class public final Lkotlin/reflect/jvm/internal/impl/b/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/b/i$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/b/b/i$a;

.field private static final c:Lkotlin/reflect/jvm/internal/impl/b/b/i;


# instance fields
.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/b/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/i$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/i;->a:Lkotlin/reflect/jvm/internal/impl/b/b/i$a;

    .line 15
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/b/i;

    .line 1071
    sget-object v1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v1, Ljava/util/List;

    .line 15
    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/i;-><init>(Ljava/util/List;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/i;->c:Lkotlin/reflect/jvm/internal/impl/b/b/i;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$u;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/b/i;->b:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/b/i;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic a()Lkotlin/reflect/jvm/internal/impl/b/b/i;
    .locals 1

    .line 11
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/i;->c:Lkotlin/reflect/jvm/internal/impl/b/b/i;

    return-object v0
.end method
