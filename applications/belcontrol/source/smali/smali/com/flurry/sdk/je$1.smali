.class public final Lcom/flurry/sdk/je$1;
.super Ljava/io/DataOutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/je;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/je;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/je;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/je$1;->a:Lcom/flurry/sdk/je;

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method
