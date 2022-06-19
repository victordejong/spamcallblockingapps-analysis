.class public Lcom/facebook/GraphRequest$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/facebook/GraphRequest;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/GraphRequest$d;->a:Lcom/facebook/GraphRequest;

    iput-object p2, p0, Lcom/facebook/GraphRequest$d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/GraphRequest;
    .locals 1

    iget-object v0, p0, Lcom/facebook/GraphRequest$d;->a:Lcom/facebook/GraphRequest;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/facebook/GraphRequest$d;->b:Ljava/lang/Object;

    return-object v0
.end method
