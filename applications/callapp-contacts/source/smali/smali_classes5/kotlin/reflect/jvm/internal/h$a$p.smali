.class final Lkotlin/reflect/jvm/internal/h$a$p;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/h$a;-><init>(Lkotlin/reflect/jvm/internal/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/h$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/h$a;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/h$a$p;->a:Lkotlin/reflect/jvm/internal/h$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 1062
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/h$a$p;->a:Lkotlin/reflect/jvm/internal/h$a;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/h$a;->h:Lkotlin/reflect/jvm/internal/h;

    .line 2045
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/h;->b:Ljava/lang/Class;

    .line 1062
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1064
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/h$a$p;->a:Lkotlin/reflect/jvm/internal/h$a;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/h$a;->h:Lkotlin/reflect/jvm/internal/h;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/h;->a(Lkotlin/reflect/jvm/internal/h;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    .line 2070
    iget-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/c/a;->a:Z

    if-eqz v1, :cond_1

    .line 1066
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/h$a$p;->a:Lkotlin/reflect/jvm/internal/h$a;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/h$a;->h:Lkotlin/reflect/jvm/internal/h;

    .line 3045
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/h;->b:Ljava/lang/Class;

    .line 1066
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/h$a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1067
    :cond_1
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->c()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "classId.shortClassName.asString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
