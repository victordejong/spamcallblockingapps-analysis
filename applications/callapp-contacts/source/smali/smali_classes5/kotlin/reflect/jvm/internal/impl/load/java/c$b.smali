.class final Lkotlin/reflect/jvm/internal/impl/load/java/c$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;",
        "Lkotlin/reflect/jvm/internal/impl/load/java/a;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/load/java/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/c$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/c$b;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/c$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/c$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 176
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/load/java/a;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2120
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 1176
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/a;->getJavaTarget()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 176
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
