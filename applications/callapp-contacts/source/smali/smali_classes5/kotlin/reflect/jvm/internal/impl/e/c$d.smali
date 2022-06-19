.class final Lkotlin/reflect/jvm/internal/impl/e/c$d;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/e/c;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/e/f;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/e/c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/e/c$d;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/e/c$d;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/e/c$d;->a:Lkotlin/reflect/jvm/internal/impl/e/c$d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 106
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/e/f;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1107
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->f(Z)V

    .line 106
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
