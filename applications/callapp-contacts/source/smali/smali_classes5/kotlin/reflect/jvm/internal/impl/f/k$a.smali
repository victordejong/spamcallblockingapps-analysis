.class public final Lkotlin/reflect/jvm/internal/impl/f/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/f/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lkotlin/reflect/jvm/internal/impl/f/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/f/k$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/f/k$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/f/k$a;->a:Lkotlin/reflect/jvm/internal/impl/f/k$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/InterruptedException;",
            "Lkotlin/v;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/f/d;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 22
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/f/c;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/f/c;-><init>(Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/f/d;

    return-object v0

    .line 24
    :cond_0
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/f/d;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/f/d;-><init>(Ljava/util/concurrent/locks/Lock;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
