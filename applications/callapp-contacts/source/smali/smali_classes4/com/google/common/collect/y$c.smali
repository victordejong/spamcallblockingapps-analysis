.class final Lcom/google/common/collect/y$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/at$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/at$a<",
            "Lcom/google/common/collect/y;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lcom/google/common/collect/at$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/at$a<",
            "Lcom/google/common/collect/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 337
    const-class v0, Lcom/google/common/collect/y;

    const-string v1, "map"

    .line 338
    invoke-static {v0, v1}, Lcom/google/common/collect/at;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/at$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/y$c;->a:Lcom/google/common/collect/at$a;

    .line 339
    const-class v0, Lcom/google/common/collect/y;

    const-string v1, "size"

    .line 340
    invoke-static {v0, v1}, Lcom/google/common/collect/at;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/at$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/y$c;->b:Lcom/google/common/collect/at$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
