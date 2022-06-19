.class final Lkotlin/reflect/jvm/internal/impl/utils/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/utils/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/utils/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 203
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/h$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/utils/h$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/utils/h$a;->a:Lkotlin/reflect/jvm/internal/impl/utils/h$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/utils/h$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/reflect/jvm/internal/impl/utils/h$a<",
            "TT;>;"
        }
    .end annotation

    .line 206
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/utils/h$a;->a:Lkotlin/reflect/jvm/internal/impl/utils/h$a;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
