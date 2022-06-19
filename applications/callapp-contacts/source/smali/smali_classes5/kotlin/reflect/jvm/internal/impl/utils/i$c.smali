.class final Lkotlin/reflect/jvm/internal/impl/utils/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/a/d;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/i$c;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/i$c;->b:Z

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/i$c;->b:Z

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 92
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/i$c;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/i$c;->b:Z

    .line 94
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/i$c;->a:Ljava/lang/Object;

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final synthetic remove()V
    .locals 1

    .line 1099
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
