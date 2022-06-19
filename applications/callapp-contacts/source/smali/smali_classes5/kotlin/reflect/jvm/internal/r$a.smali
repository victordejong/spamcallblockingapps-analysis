.class public final Lkotlin/reflect/jvm/internal/r$a;
.super Lkotlin/reflect/jvm/internal/u$c;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/r;
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
        "Lkotlin/reflect/jvm/internal/u$c<",
        "TR;>;",
        "Lkotlin/reflect/l$a<",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000*\u0006\u0008\u0001\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\t\u001a\u00028\u0001H\u0096\u0002\u00a2\u0006\u0002\u0010\nR\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/KProperty0Impl$Getter;",
        "R",
        "Lkotlin/reflect/jvm/internal/KPropertyImpl$Getter;",
        "Lkotlin/reflect/KProperty0$Getter;",
        "property",
        "Lkotlin/reflect/jvm/internal/KProperty0Impl;",
        "(Lkotlin/reflect/jvm/internal/KProperty0Impl;)V",
        "getProperty",
        "()Lkotlin/reflect/jvm/internal/KProperty0Impl;",
        "invoke",
        "()Ljava/lang/Object;",
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
.field private final b:Lkotlin/reflect/jvm/internal/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/r<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/r<",
            "+TR;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/u$c;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/r$a;->b:Lkotlin/reflect/jvm/internal/r;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/u;
    .locals 1

    .line 2043
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/r$a;->b:Lkotlin/reflect/jvm/internal/r;

    .line 43
    check-cast v0, Lkotlin/reflect/jvm/internal/u;

    return-object v0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1043
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/r$a;->b:Lkotlin/reflect/jvm/internal/r;

    .line 44
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/r;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
