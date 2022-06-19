.class public final Lkotlin/h/h$a;
.super Ljava/lang/Object;
.source "Iterables.kt"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/h/h;->b(Lkotlin/h/b;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/h/b;


# direct methods
.method public constructor <init>(Lkotlin/h/b;)V
    .locals 0

    iput-object p1, p0, Lkotlin/h/h$a;->a:Lkotlin/h/b;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lkotlin/h/h$a;->a:Lkotlin/h/b;

    invoke-interface {v0}, Lkotlin/h/b;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
