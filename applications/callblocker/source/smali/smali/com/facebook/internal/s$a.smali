.class Lcom/facebook/internal/s$a;
.super Lcom/facebook/internal/s$e;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/internal/s$e;-><init>(Lcom/facebook/internal/s$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/s$1;)V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/facebook/internal/s$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    const-string/jumbo v0, "com.facebook.arstudio.player"

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    return-object v0
.end method
