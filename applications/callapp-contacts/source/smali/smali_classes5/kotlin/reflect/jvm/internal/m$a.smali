.class public final Lkotlin/reflect/jvm/internal/m$a;
.super Lkotlin/reflect/jvm/internal/u$d;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/u$d<",
        "TR;>;",
        "Lkotlin/reflect/f$a<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0001H\u0096\u0002\u00a2\u0006\u0002\u0010\u000cR\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/KMutableProperty0Impl$Setter;",
        "R",
        "Lkotlin/reflect/jvm/internal/KPropertyImpl$Setter;",
        "Lkotlin/reflect/KMutableProperty0$Setter;",
        "property",
        "Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;",
        "(Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;)V",
        "getProperty",
        "()Lkotlin/reflect/jvm/internal/KMutableProperty0Impl;",
        "invoke",
        "",
        "value",
        "(Ljava/lang/Object;)V",
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
.field private final b:Lkotlin/reflect/jvm/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/m<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/m<",
            "TR;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/u$d;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/m$a;->b:Lkotlin/reflect/jvm/internal/m;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/u;
    .locals 1

    .line 3061
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/m$a;->b:Lkotlin/reflect/jvm/internal/m;

    .line 61
    check-cast v0, Lkotlin/reflect/jvm/internal/u;

    return-object v0
.end method

.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 2061
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/m$a;->b:Lkotlin/reflect/jvm/internal/m;

    .line 3059
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/m;->a()Lkotlin/reflect/jvm/internal/m$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/m$a;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
