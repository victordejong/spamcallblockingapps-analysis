.class public final Lkotlin/reflect/jvm/internal/impl/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/c/f;

.field private static final b:Lkotlin/h/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/f;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/c/f;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/c/f;->a:Lkotlin/reflect/jvm/internal/impl/c/f;

    .line 22
    new-instance v0, Lkotlin/h/l;

    const-string v1, "[^\\p{L}\\p{Digit}]"

    invoke-direct {v0, v1}, Lkotlin/h/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/c/f;->b:Lkotlin/h/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/c/f;->b:Lkotlin/h/l;

    check-cast p0, Ljava/lang/CharSequence;

    const-string v1, "_"

    invoke-virtual {v0, p0, v1}, Lkotlin/h/l;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
