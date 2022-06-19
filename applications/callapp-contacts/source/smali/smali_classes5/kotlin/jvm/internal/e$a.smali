.class final Lkotlin/jvm/internal/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/jvm/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lkotlin/jvm/internal/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lkotlin/jvm/internal/e$a;

    invoke-direct {v0}, Lkotlin/jvm/internal/e$a;-><init>()V

    sput-object v0, Lkotlin/jvm/internal/e$a;->a:Lkotlin/jvm/internal/e$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lkotlin/jvm/internal/e$a;
    .locals 1

    .line 51
    sget-object v0, Lkotlin/jvm/internal/e$a;->a:Lkotlin/jvm/internal/e$a;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 55
    sget-object v0, Lkotlin/jvm/internal/e$a;->a:Lkotlin/jvm/internal/e$a;

    return-object v0
.end method
