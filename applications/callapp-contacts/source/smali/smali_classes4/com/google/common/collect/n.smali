.class public abstract Lcom/google/common/collect/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/n$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/n;

.field private static final b:Lcom/google/common/collect/n;

.field private static final c:Lcom/google/common/collect/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Lcom/google/common/collect/n$1;

    invoke-direct {v0}, Lcom/google/common/collect/n$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/n;->a:Lcom/google/common/collect/n;

    .line 122
    new-instance v0, Lcom/google/common/collect/n$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/n$a;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/n;->b:Lcom/google/common/collect/n;

    .line 124
    new-instance v0, Lcom/google/common/collect/n$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/n$a;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/n;->c:Lcom/google/common/collect/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/n$1;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/google/common/collect/n;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/collect/n;
    .locals 1

    .line 65
    sget-object v0, Lcom/google/common/collect/n;->a:Lcom/google/common/collect/n;

    return-object v0
.end method

.method static synthetic c()Lcom/google/common/collect/n;
    .locals 1

    .line 60
    sget-object v0, Lcom/google/common/collect/n;->b:Lcom/google/common/collect/n;

    return-object v0
.end method

.method static synthetic d()Lcom/google/common/collect/n;
    .locals 1

    .line 60
    sget-object v0, Lcom/google/common/collect/n;->c:Lcom/google/common/collect/n;

    return-object v0
.end method

.method static synthetic e()Lcom/google/common/collect/n;
    .locals 1

    .line 60
    sget-object v0, Lcom/google/common/collect/n;->a:Lcom/google/common/collect/n;

    return-object v0
.end method


# virtual methods
.method public abstract a(II)Lcom/google/common/collect/n;
.end method

.method public abstract a(JJ)Lcom/google/common/collect/n;
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/n;"
        }
    .end annotation
.end method

.method public abstract a(ZZ)Lcom/google/common/collect/n;
.end method

.method public abstract b()I
.end method

.method public abstract b(ZZ)Lcom/google/common/collect/n;
.end method
