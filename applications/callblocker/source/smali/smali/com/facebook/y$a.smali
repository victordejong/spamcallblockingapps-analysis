.class Lcom/facebook/y$a;
.super Ljava/lang/Object;
.source "UserSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Boolean;

.field c:Z

.field d:J


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-boolean p1, p0, Lcom/facebook/y$a;->c:Z

    .line 398
    iput-object p2, p0, Lcom/facebook/y$a;->a:Ljava/lang/String;

    .line 399
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/facebook/y$a;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/y$a;->c:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/y$a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
