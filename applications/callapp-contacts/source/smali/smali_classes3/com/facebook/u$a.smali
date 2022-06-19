.class final Lcom/facebook/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-boolean p1, p0, Lcom/facebook/u$a;->c:Z

    .line 417
    iput-object p2, p0, Lcom/facebook/u$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/facebook/u$a;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/u$a;->c:Z

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
