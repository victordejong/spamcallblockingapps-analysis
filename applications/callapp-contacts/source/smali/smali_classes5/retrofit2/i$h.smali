.class final Lretrofit2/i$h;
.super Lkotlin/c/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/i;->a(Ljava/lang/Exception;Lkotlin/c/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00060\u0002j\u0002`\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0080@"
    }
    d2 = {
        "suspendAndThrow",
        "",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "continuation",
        "Lkotlin/coroutines/Continuation;",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation

.annotation runtime Lkotlin/c/b/a/e;
    b = "KotlinExtensions.kt"
    c = {
        0x71
    }
    d = "suspendAndThrow"
    e = "retrofit2.KotlinExtensions"
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/c/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/c/b/a/c;-><init>(Lkotlin/c/d;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lretrofit2/i$h;->a:Ljava/lang/Object;

    iget p1, p0, Lretrofit2/i$h;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lretrofit2/i$h;->b:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lretrofit2/i;->a(Ljava/lang/Exception;Lkotlin/c/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
