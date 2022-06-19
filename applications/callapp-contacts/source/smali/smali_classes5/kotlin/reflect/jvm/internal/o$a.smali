.class public final Lkotlin/reflect/jvm/internal/o$a;
.super Lkotlin/reflect/jvm/internal/u$d;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/u$d<",
        "TV;>;",
        "Lkotlin/reflect/j<",
        "TD;TE;TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000*\u0004\u0008\u0003\u0010\u0001*\u0004\u0008\u0004\u0010\u0002*\u0004\u0008\u0005\u0010\u00032\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0005B\u001f\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00050\u0007\u00a2\u0006\u0002\u0010\u0008J&\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00028\u00032\u0006\u0010\u000e\u001a\u00028\u00042\u0006\u0010\u000f\u001a\u00028\u0005H\u0096\u0002\u00a2\u0006\u0002\u0010\u0010R&\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00050\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/KMutableProperty2Impl$Setter;",
        "D",
        "E",
        "V",
        "Lkotlin/reflect/jvm/internal/KPropertyImpl$Setter;",
        "Lkotlin/reflect/KMutableProperty2$Setter;",
        "property",
        "Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;",
        "(Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;)V",
        "getProperty",
        "()Lkotlin/reflect/jvm/internal/KMutableProperty2Impl;",
        "invoke",
        "",
        "receiver1",
        "receiver2",
        "value",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/o<",
            "TD;TE;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/o<",
            "TD;TE;TV;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/u$d;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/o$a;->b:Lkotlin/reflect/jvm/internal/o;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 2060
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/o$a;->b:Lkotlin/reflect/jvm/internal/o;

    .line 4056
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/o;->a:Lkotlin/reflect/jvm/internal/ad$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_setter()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/o$a;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    .line 3058
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/o$a;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/u;
    .locals 1

    .line 4060
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/o$a;->b:Lkotlin/reflect/jvm/internal/o;

    .line 60
    check-cast v0, Lkotlin/reflect/jvm/internal/u;

    return-object v0
.end method
