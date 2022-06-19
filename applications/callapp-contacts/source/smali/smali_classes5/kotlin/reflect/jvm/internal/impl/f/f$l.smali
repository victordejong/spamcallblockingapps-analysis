.class final Lkotlin/reflect/jvm/internal/impl/f/f$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic b:Z


# instance fields
.field final a:Z

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 318
    const-class v0, Lkotlin/reflect/jvm/internal/impl/f/f;

    const/4 v0, 0x1

    sput-boolean v0, Lkotlin/reflect/jvm/internal/impl/f/f$l;->b:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$l;->c:Ljava/lang/Object;

    .line 335
    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/f/f$l;->a:Z

    return-void
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/f/f$l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/reflect/jvm/internal/impl/f/f$l<",
            "TT;>;"
        }
    .end annotation

    .line 327
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/f/f$l;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/f/f$l;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/f/f$l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlin/reflect/jvm/internal/impl/f/f$l<",
            "TT;>;"
        }
    .end annotation

    .line 322
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/f/f$l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/f/f$l;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 339
    sget-boolean v0, Lkotlin/reflect/jvm/internal/impl/f/f$l;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$l;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "A value requested from FALL_THROUGH in "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 340
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$l;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1344
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$l;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FALL_THROUGH"

    return-object v0

    .line 349
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/f/f$l;->c:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
