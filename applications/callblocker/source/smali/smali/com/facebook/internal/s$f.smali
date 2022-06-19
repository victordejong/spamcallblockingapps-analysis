.class public Lcom/facebook/internal/s$f;
.super Ljava/lang/Object;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private a:Lcom/facebook/internal/s$e;

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    return-void
.end method

.method public static a()Lcom/facebook/internal/s$f;
    .locals 2

    .prologue
    .line 1008
    new-instance v0, Lcom/facebook/internal/s$f;

    invoke-direct {v0}, Lcom/facebook/internal/s$f;-><init>()V

    .line 1009
    const/4 v1, -0x1

    iput v1, v0, Lcom/facebook/internal/s$f;->b:I

    .line 1011
    return-object v0
.end method

.method public static a(Lcom/facebook/internal/s$e;I)Lcom/facebook/internal/s$f;
    .locals 1

    .prologue
    .line 1000
    new-instance v0, Lcom/facebook/internal/s$f;

    invoke-direct {v0}, Lcom/facebook/internal/s$f;-><init>()V

    .line 1001
    iput-object p0, v0, Lcom/facebook/internal/s$f;->a:Lcom/facebook/internal/s$e;

    .line 1002
    iput p1, v0, Lcom/facebook/internal/s$f;->b:I

    .line 1004
    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .prologue
    .line 1022
    iget v0, p0, Lcom/facebook/internal/s$f;->b:I

    return v0
.end method
