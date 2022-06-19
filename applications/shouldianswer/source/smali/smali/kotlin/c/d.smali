.class public interface abstract Lkotlin/c/d;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lkotlin/c/f$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/c/d$a;,
        Lkotlin/c/d$b;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/c/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/c/d$b;->a:Lkotlin/c/d$b;

    sput-object v0, Lkotlin/c/d;->a:Lkotlin/c/d$b;

    return-void
.end method


# virtual methods
.method public abstract a(Lkotlin/c/c;)Lkotlin/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/c/c<",
            "-TT;>;)",
            "Lkotlin/c/c<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract b(Lkotlin/c/c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "*>;)V"
        }
    .end annotation
.end method
