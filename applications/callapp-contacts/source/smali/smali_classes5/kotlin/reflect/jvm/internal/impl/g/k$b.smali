.class public final Lkotlin/reflect/jvm/internal/impl/g/k$b;
.super Lkotlin/reflect/jvm/internal/impl/g/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/g/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/g/k$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/g/k$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/g/k$b;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/g/k$b;->a:Lkotlin/reflect/jvm/internal/impl/g/k$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 113
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/g/k$b$1;->a:Lkotlin/reflect/jvm/internal/impl/g/k$b$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "Int"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/g/k;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
