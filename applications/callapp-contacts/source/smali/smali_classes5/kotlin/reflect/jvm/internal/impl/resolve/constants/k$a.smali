.class public final Lkotlin/reflect/jvm/internal/impl/resolve/constants/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/constants/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/k$a;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/k;
    .locals 1

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/k$b;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/k$b;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/k;

    return-object v0
.end method
