.class public final Lcom/google/common/base/e$a;
.super Lcom/google/common/base/e;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/e<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/base/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 330
    new-instance v0, Lcom/google/common/base/e$a;

    invoke-direct {v0}, Lcom/google/common/base/e$a;-><init>()V

    sput-object v0, Lcom/google/common/base/e$a;->a:Lcom/google/common/base/e$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 328
    invoke-direct {p0}, Lcom/google/common/base/e;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 343
    sget-object v0, Lcom/google/common/base/e$a;->a:Lcom/google/common/base/e$a;

    return-object v0
.end method


# virtual methods
.method protected final b(Ljava/lang/Object;)I
    .locals 0

    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method protected final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 334
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
