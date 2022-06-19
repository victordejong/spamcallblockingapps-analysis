.class final Lcom/google/common/base/c$d;
.super Lcom/google/common/base/c$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# static fields
.field static final a:Lcom/google/common/base/c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1107
    new-instance v0, Lcom/google/common/base/c$d;

    invoke-direct {v0}, Lcom/google/common/base/c$d;-><init>()V

    sput-object v0, Lcom/google/common/base/c$d;->a:Lcom/google/common/base/c$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    .line 1110
    invoke-direct {p0, v0}, Lcom/google/common/base/c$c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 1126
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 1127
    invoke-static {p2, p1}, Lcom/google/common/base/m;->b(II)I

    const/4 p1, -0x1

    return p1
.end method

.method public final b(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
